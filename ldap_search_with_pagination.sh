#!/bin/bash
# LDAP Search with Result Pagination
# Demonstrates performing searches with result pagination for large datasets.

#This script includes comments explaining the purpose of the script and demonstrates how to perform an LDAP search with result pagination using the -E option. The provided example showcases searching for entries with objectClass=person within the specified search base, retrieving the specified attributes, while using result pagination to manage large result sets. 

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"

# Search with Result Pagination
PAGE_SIZE="100"
SEARCH_BASE="dc=example,dc=com"
FILTER="(objectClass=person)"
ATTRIBUTES="cn mail"

# Running the ldapsearch command with result pagination
ldapsearch -x -E pr=$PAGE_SIZE/noprompt -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$SEARCH_BASE" "$FILTER" $ATTRIBUTES

<<OUTPUT
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
OUTPUT
