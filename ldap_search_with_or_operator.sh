#!/bin/bash
# LDAP Search Example with OR Operator
# Demonstrates using the OR operator to broaden LDAP searches with multiple conditions.
# In this script, the OR operator (|) is used in the search filter to retrieve entries matching either objectClass=account or objectClass=organizationalRole. The provided sample output displays the results of the LDAP search

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Search with OR Operator
SEARCH_FILTER="(|(objectClass=account)(objectClass=organizationalRole))"
ATTRIBUTES="cn"

# Running the ldapsearch command with OR operator
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "$SEARCH_FILTER" $ATTRIBUTES

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: (|(objectClass=account)(objectClass=organizationalRole))
# requesting: cn
#

# search result
search: 2
result: 0 Success

# numResponses: 6
# numEntries: 5

dn: uid=pasteur,dc=example,dc=com
cn: Louis Pasteur

dn: uid=nobel,dc=example,dc=com
cn: Alfred Nobel

dn: uid=curie,dc=example,dc=com
cn: Marie Curie

dn: uid=boyle,dc=example,dc=com
cn: Robert Boyle

dn: uid=admin,dc=example,dc=com
cn: Admin User
EOF
