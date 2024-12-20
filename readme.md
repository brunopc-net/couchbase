
## Trivy cve scan

Total: 30 (UNKNOWN: 0, LOW: 17, MEDIUM: 13, HIGH: 0, CRITICAL: 0)

┌────────────────────┬────────────────┬──────────┬──────────┬───────────────────┬───────────────┬──────────────────────────────────────────────────────────────┐
│      Library       │ Vulnerability  │ Severity │  Status  │ Installed Version │ Fixed Version │                            Title                             │
├────────────────────┼────────────────┼──────────┼──────────┼───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ coreutils          │ CVE-2016-2781  │ LOW      │ affected │ 9.4-3ubuntu6      │               │ coreutils: Non-privileged session can escape to the parent   │
│                    │                │          │          │                   │               │ session in chroot                                            │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2016-2781                    │
├────────────────────┼────────────────┤          │          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ gpgv               │ CVE-2022-3219  │          │          │ 2.4.4-2ubuntu17   │               │ gnupg: denial of service issue (resource consumption) using  │
│                    │                │          │          │                   │               │ compressed packets                                           │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2022-3219                    │
├────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ krb5-locales       │ CVE-2024-26462 │ MEDIUM   │          │ 1.20.1-6ubuntu2.2 │               │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                    ├────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26458 │ LOW      │          │                   │               │ krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c            │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26458                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26461 │          │          │                   │               │ krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c    │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26461                   │
├────────────────────┼────────────────┤          │          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libc-bin           │ CVE-2016-20013 │          │          │ 2.39-0ubuntu8.3   │               │ sha256crypt and sha512crypt through 0.6 allow attackers to   │
│                    │                │          │          │                   │               │ cause a denial of...                                         │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2016-20013                   │
├────────────────────┤                │          │          │                   ├───────────────┤                                                              │
│ libc6              │                │          │          │                   │               │                                                              │
│                    │                │          │          │                   │               │                                                              │
│                    │                │          │          │                   │               │                                                              │
├────────────────────┼────────────────┤          │          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libgcrypt20        │ CVE-2024-2236  │          │          │ 1.10.3-2build1    │               │ libgcrypt: vulnerable to Marvin Attack                       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-2236                    │
├────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libgssapi-krb5-2   │ CVE-2024-26462 │ MEDIUM   │          │ 1.20.1-6ubuntu2.2 │               │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                    ├────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26458 │ LOW      │          │                   │               │ krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c            │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26458                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26461 │          │          │                   │               │ krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c    │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26461                   │
├────────────────────┼────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│ libk5crypto3       │ CVE-2024-26462 │ MEDIUM   │          │                   │               │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                    ├────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26458 │ LOW      │          │                   │               │ krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c            │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26458                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26461 │          │          │                   │               │ krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c    │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26461                   │
├────────────────────┼────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│ libkrb5-3          │ CVE-2024-26462 │ MEDIUM   │          │                   │               │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                    ├────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26458 │ LOW      │          │                   │               │ krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c            │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26458                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26461 │          │          │                   │               │ krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c    │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26461                   │
├────────────────────┼────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│ libkrb5support0    │ CVE-2024-26462 │ MEDIUM   │          │                   │               │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                    ├────────────────┼──────────┤          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26458 │ LOW      │          │                   │               │ krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c            │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26458                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-26461 │          │          │                   │               │ krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c    │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26461                   │
├────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libpam-modules     │ CVE-2024-10041 │ MEDIUM   │          │ 1.5.3-5ubuntu5.1  │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
├────────────────────┼────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│ libpam-modules-bin │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
├────────────────────┼────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│ libpam-runtime     │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
├────────────────────┼────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
├────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libssl3t64         │ CVE-2024-41996 │ LOW      │          │ 3.0.13-0ubuntu3.4 │               │ openssl: remote attackers (from the client side) to trigger  │
│                    │                │          │          │                   │               │ unnecessarily expensive server-side...                       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-41996                   │
├────────────────────┤                │          │          │                   ├───────────────┤                                                              │
│ openssl            │                │          │          │                   │               │                                                              │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
├────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libssl3t64         │ CVE-2024-41996 │ LOW      │          │ 3.0.13-0ubuntu3.4 │               │ openssl: remote attackers (from the client side) to trigger  │
│                    │                │          │          │                   │               │ unnecessarily expensive server-side...                       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-41996                   │
├────────────────────┤                │          │          │                   ├───────────────┤                                                              │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
├────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libssl3t64         │ CVE-2024-41996 │ LOW      │          │ 3.0.13-0ubuntu3.4 │               │ openssl: remote attackers (from the client side) to trigger  │
│                    │                │          │          │                   │               │ unnecessarily expensive server-side...                       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-41996                   │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
├────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libssl3t64         │ CVE-2024-41996 │ LOW      │          │ 3.0.13-0ubuntu3.4 │               │ openssl: remote attackers (from the client side) to trigger  │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│ libpam0g           │ CVE-2024-10041 │          │          │                   │               │ pam: libpam: Libpam vulnerable to read hashed password       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10041                   │
│                    ├────────────────┤          │          │                   ├───────────────┼──────────────────────────────────────────────────────────────┤
│                    │ CVE-2024-10963 │          │          │                   │               │ pam: Improper Hostname Interpretation in pam_access Leads to │
│                    │                │          │          │                   │               │ Access Control Bypass                                        │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-10963                   │
├────────────────────┼────────────────┼──────────┤          ├───────────────────┼───────────────┼──────────────────────────────────────────────────────────────┤
│ libssl3t64         │ CVE-2024-41996 │ LOW      │          │ 3.0.13-0ubuntu3.4 │               │ openssl: remote attackers (from the client side) to trigger  │
│                    │                │          │          │                   │               │ unnecessarily expensive server-side...                       │
│                    │                │          │          │                   │               │ https://avd.aquasec.com/nvd/cve-2024-41996                   │
├────────────────────┤                │          │          │                   ├───────────────┤                                                              │
│ openssl            │                │          │          │                   │               │                                                              │
│                    │                │          │          │                   │               │                                                              │
│                    │                │          │          │                   │               │                                                              │
└────────────────────┴────────────────┴──────────┴──────────┴───────────────────┴───────────────┴──────────────────────────────────────────────────────────────┘
