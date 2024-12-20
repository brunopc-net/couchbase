# Based on https://github.com/couchbase/docker/tree/9990e2cfabc94b37607e5666d9ef1eab69a397a6/enterprise/couchbase-server/7.6.4
# We could use couchbase:7.6.4, but at the time of this writing
# 1- CVE count is way too high
#    Official image: 2 critical, 14 high, 30 medium, 21 low
#    Current build:  0 critical,  0 high, 13 medium, 17 low
# 2- Making sure the container OS is up-to date (Ubuntu 24.04 LTS) and versionned
FROM ubuntu:noble-20241118.1

LABEL maintainer="work@brunopc.net"

ARG CB_VERSION=7.6.4 \
    CB_SKIP_CHECKSUM=false \
    CB_CHECKSUM=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad \
    RUNIT_COMMIT=edb631449d89d5b452a5992c6ffaa1e384fea697

# Install runit
RUN set -x \
    # Dependencies
    && apt-get update && apt-get install -qq -y \
        git=1:2.43.0-1ubuntu7.1 \
        gcc=4:13.2.0-7ubuntu1 \
        make=4.3-4.1build2 \
    # Download
    && cd /usr/src \
    && git clone https://github.com/couchbasedeps/runit \
    && cd runit \
    && git checkout ${RUNIT_COMMIT} \
    # Install
    && ./package/compile \
    && cp ./command/* /sbin/ \
    # Cleaning
    && apt-get purge -y --autoremove git gcc make \
    && apt-get clean \
    && rm -rf /usr/src/runit /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH=$PATH:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install

# Make sure we have couchbase user with UID 1000 (necessary to match default boot2docker UID)
# Ubuntu 24.04+ have already USER 1000 set to ubuntu
RUN set -x \
    && usermod -l couchbase ubuntu \
    && groupmod -n couchbase ubuntu

# Install couchbase:
ARG CB_PACKAGE=couchbase-server-enterprise_${CB_VERSION}-linux_amd64.deb \
    CB_DOWNLOAD_URL=https://packages.couchbase.com/releases/${CB_VERSION}/${CB_PACKAGE}
RUN set -x \
    # Download
    && apt-get update && apt-get install -qq -y \
        wget=1.21.4-1ubuntu4.1 \
    && wget -N --no-verbose ${CB_DOWNLOAD_URL} \
    # Verify integrity
    && { ${CB_SKIP_CHECKSUM} || echo "$CB_CHECKSUM $CB_PACKAGE" | sha256sum -c - ; } \
    # Install
    && apt-get install -y ./$CB_PACKAGE \
    # Cleaning
    && apt-get purge -y --autoremove wget \
    && apt-get clean \
    && rm -f ./$CB_PACKAGE \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Running dependencies
# tzdata: timezone info used by some N1QL functions
# lsof, lshw, sysstat (iostat, sar, mpstat), net-tools (ifconfig, arp, netstat), numactl: system commands used by cbcollect_info
# ca-certificates
RUN set -x \
    && apt-get update && apt-get install -qq -y \
        tzdata=2024a-3ubuntu1.1 \
        lsof=4.95.0-1build3 \
        lshw=02.19.git.2021.06.19.996aaad9c7-2build3 \
        sysstat=12.6.1-2 \
        net-tools=2.10-0.1ubuntu4 \
        numactl=2.0.18-1build1 \
        ca-certificates=20240203 \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Update VARIANT.txt to indicate we're running in our Docker image
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt

# Add runit service script for couchbase-server
COPY scripts/run /etc/service/couchbase-server/run
RUN set -x \
    && mkdir -p /etc/service/couchbase-server/supervise \
    && chown -R couchbase:couchbase \
                /etc/service \
                /etc/service/couchbase-server/supervise

# Add dummy script for commands invoked by cbcollect_info that
# make no sense in a Docker container
COPY scripts/dummy.sh /usr/local/bin/
RUN set -x \
    && ln -s dummy.sh /usr/local/bin/iptables-save \
    && ln -s dummy.sh /usr/local/bin/lvdisplay \
    && ln -s dummy.sh /usr/local/bin/vgdisplay \
    && ln -s dummy.sh /usr/local/bin/pvdisplay

# Add bootstrap script
COPY scripts/entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["couchbase-server"]

EXPOSE 8091 \
     # 8091: Cluster administration REST/HTTP traffic, including Couchbase Web Console
       8092 \
     # 8092: Views and XDCR access
       8093 \
     # 8093: Query service REST/HTTP traffic
       8094 \
     # 8094: Search Service REST/HTTP traffic
       8095 \
     # 8095: Analytics service REST/HTTP traffic
       8096 \
     # 8096: Eventing service REST/HTTP traffic
       8097 \
     # 8097: Backup service REST/HTTP traffic
       9123 \
     # 9123: Analytics prometheus
       11207 \
     # 11207: Data Service (SSL) 
       11210 \
     # 11210: Data Service
       11280 \
     # 11280: Data Service prometheus
       18091 \
     # 18091: Cluster administration REST/HTTP traffic, including Couchbase Web Console (SSL)
       18092 \
     # 18092: Views and XDCR access (SSL)
       18093 \
     # 18093: Query service REST/HTTP traffic (SSL)
       18094 \
     # 18094: Search Service REST/HTTP traffic (SSL)
       18095 \
     # 18095: Analytics service REST/HTTP traffic (SSL)
       18096 \
     # 18096: Eventing service REST/HTTP traffic (SSL)
       18097
     # 18097: Backup service REST/HTTP traffic (SSL)

VOLUME /opt/couchbase/var