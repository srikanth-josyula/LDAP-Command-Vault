#!/bin/bash
# LDAP Search Example with Filter and Returning Specific Attributes
# Demonstrates searching with filters and returning specific attributes from matching entries.

#This script demonstrates how to perform an LDAP search with filters and returning specific attributes from matching entries. It searches for entries that match the objectClass=person filter and retrieves the cn and mail attributes.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Search with Filter and Returning Specific Attributes
FILTER="(objectClass=person)"
ATTRIBUTES="cn mail"

# Running the ldapsearch command with filter and attributes
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "$FILTER" $ATTRIBUTES

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: (objectClass=person)
# requesting: cn mail
#

# search result
search: 2
result: 0 Success

# numResponses: 3
# numEntries: 2

dn: uid=john,dc=example,dc=com
cn: John Doe
mail: johndoe@example.com

dn: uid=emma,dc=example,dc=com
cn: Emma Johnson
mail: emmajohnson@example.com
EOF
