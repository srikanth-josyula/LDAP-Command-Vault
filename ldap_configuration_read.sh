#!/bin/bash
# LDAP Server Configuration Retrieval
# Demonstrates using ldapsearch to retrieve LDAP server configuration.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Running the ldapsearch command to retrieve server configuration
ldapsearch -Y EXTERNAL -H ldap://${HOST}:${PORT} -D "${BIND_DN}" -w "${ADMIN_PASSWORD}" -b cn=config

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <cn=config> with scope subtree
# filter: (objectclass=*)
# requesting: ALL
#

# search result
search: 2
result: 0 Success

# numResponses: 2
# numEntries: 1

dn: cn=config
objectClass: olcGlobal
cn: config
olcConfigFile: /etc/ldap/slapd.conf
olcConfigDir: /etc/ldap/slapd.d/
olcAllows: bind_v2
olcRequires: 4.0

EOF

