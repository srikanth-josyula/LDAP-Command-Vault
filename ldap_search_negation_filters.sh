#!/bin/bash
# LDAP Search Example with Negation Filters
# Demonstrates using the ldapsearch command with negation filters to exclude specific entries.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Negation Filter Search
NEGATION_FILTER="(!(cn=Boyle))"
ATTRIBUTES="cn uid"

# Running the ldapsearch command with negation filter
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "$NEGATION_FILTER" $ATTRIBUTES

<<EOF
Explanation:
- This script demonstrates an LDAP search with negation filters.
- The provided connection details are used to connect to the LDAP server.
- The example searches for entries excluding those with the common name (cn) "Boyle".
- The specified attributes (cn and uid) are retrieved for the matching entries.

Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: (!(cn=Boyle))
# requesting: cn uid
#

# search result
search: 2
result: 0 Success

# numResponses: 4
# numEntries: 3

dn: uid=pasteur,dc=example,dc=com
cn: Louis Pasteur
uid: pasteur

dn: uid=nobel,dc=example,dc=com
cn: Alfred Nobel
uid: nobel

dn: uid=curie,dc=example,dc=com
cn: Marie Curie
uid: curie
EOF
