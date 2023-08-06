#!/bin/bash
# LDAP Search Example with AND Operator
# Demonstrates using the AND operator in an ldapsearch command.
# This script demonstrates an LDAP search with the AND operator using the provided connection details. It searches for entries with both the objectClass=inetOrgPerson and uid=pasteur conditions and retrieves the specified attributes (cn and uid). The provided sample output displays the result of the LDAP search.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Search with AND Operator
SEARCH_FILTER="(&(objectclass=inetOrgPerson)(uid=pasteur))"
ATTRIBUTES="cn uid"

# Running the ldapsearch command with AND Operator
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "$SEARCH_FILTER" $ATTRIBUTES

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: (&(objectclass=inetOrgPerson)(uid=pasteur))
# requesting: cn uid
#

# search result
search: 2
result: 0 Success

# numResponses: 2
# numEntries: 1

dn: uid=pasteur,dc=example,dc=com
cn: Louis Pasteur
uid: pasteur
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top
EOF
