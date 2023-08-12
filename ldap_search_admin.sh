#!/bin/bash
# LDAP Search Example with Admin Credentials
# Demonstrates using the ldapsearch command with admin credentials for additional information.

# Connection Details
HOSTNAME="ldap.forumsys.com"
HOSTPORT=389
BIND_DN="cn=read-only-admin"
BIND_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Search with AND Operator
SEARCH_FILTER="(objectclass=*)"
ATTRIBUTES="cn sAMAccountName"

# Running the ldapsearch command with admin credentials
# The following command searches for entries in the specified base DN with the objectclass=* filter.
echo ldapsearch -x -h $HOSTNAME -p $HOSTPORT -D "$BIND_DN" -w "$BIND_PASSWORD" -b "$BASE_DN" "$SEARCH_FILTER" $ATTRIBUTES

ldapsearch -x -h $HOSTNAME -p $HOSTPORT -D "$BIND_DN" -w "$BIND_PASSWORD" -b "$BASE_DN" "$SEARCH_FILTER" $ATTRIBUTES

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <DC=example,DC=com> with scope subtree
# filter: (objectclass=*)
# requesting: cn sAMAccountName
#

# search result
search: 2
result: 0 Success

# numResponses: 5
# numEntries: 4

dn: uid=pasteur,dc=example,dc=com
cn: Louis Pasteur
sAMAccountName: pasteur

dn: uid=nobel,dc=example,dc=com
cn: Alfred Nobel
sAMAccountName: nobel

dn: uid=curie,dc=example,dc=com
cn: Marie Curie
sAMAccountName: curie

dn: uid=boyle,dc=example,dc=com
cn: Robert Boyle
sAMAccountName: boyle

EOF
