#!/bin/bash
# LDAP Search Example with Negation Filters
# Demonstrates using the ldapsearch command with negation filters.
# This script demonstrates how to perform an LDAP search using negation filters based on the provided connection details. It searches for entries that do not match the cn=read-only-admin condition and retrieves the cn attribute

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Search with Negation Filters
NEGATION_FILTER="(!(cn=read-only-admin))"
ATTRIBUTES="cn"

# Running the ldapsearch command with negation filters
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "$NEGATION_FILTER" $ATTRIBUTES

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: (!(cn=read-only-admin))
# requesting: cn
#

# search result
search: 2
result: 0 Success

# numResponses: 3
# numEntries: 2

dn: uid=pasteur,dc=example,dc=com
cn: Louis Pasteur

dn: uid=nobel,dc=example,dc=com
cn: Alfred Nobel
EOF
