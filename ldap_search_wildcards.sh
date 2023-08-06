#!/bin/bash
# LDAP Wildcards Example
# Demonstrates using wildcards in an LDAP search for pattern matching.
# In this example, the script connects to the LDAP server using the provided connection details and performs a search for entries with a UID starting with "jo". The wildcard * is used to match any characters following "jo" in the UID attribute. The output shows the retrieved entry that matches the search filter.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Running the LDAP search with wildcards
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "(uid=jo*)" cn uid

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: (uid=jo*)
# requesting: cn uid
#

# search result
search: 2
result: 0 Success

# numResponses: 2
# numEntries: 1

dn: uid=john,dc=example,dc=com
cn: John Doe
uid: john
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top
EOF
