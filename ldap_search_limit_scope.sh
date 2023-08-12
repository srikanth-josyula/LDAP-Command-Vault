#!/bin/bash
# LDAP Search with Limiting Search Scope
# Demonstrates searching within a specific subtree of the directory.

#This script includes comments explaining the purpose of the script and demonstrates how to perform an LDAP search within a specific subtree of the directory using the -b option. The provided example showcases searching for entries with objectClass=person within the "ou=Users,dc=example,dc=com" search base and retrieving the specified attributes. I

# Connection Details
HOSTNAME="ldap.forumsys.com"
HOSTPORT=389
BIND_DN="cn=read-only-admin"
BIND_PASSWORD="password"

# Search with Limiting Search Scope
SEARCH_BASE="ou=Users,dc=example,dc=com"
FILTER="(objectClass=person)"
ATTRIBUTES="cn mail"

# Running the ldapsearch command with limiting search scope
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$SEARCH_BASE" "$FILTER" $ATTRIBUTES

<<OUTPUT
Sample Output:

# extended LDIF
#
# LDAPv3
# base <ou=Users,dc=example,dc=com> with scope subtree
# filter: (objectClass=person)
# requesting: cn mail
#

# search result
search: 2
result: 0 Success

# numResponses: 3
# numEntries: 2

dn: uid=john,ou=Users,dc=example,dc=com
cn: John Doe
mail: johndoe@example.com

dn: uid=emma,ou=Users,dc=example,dc=com
cn: Emma Johnson
mail: emmajohnson@example.com
OUTPUT
