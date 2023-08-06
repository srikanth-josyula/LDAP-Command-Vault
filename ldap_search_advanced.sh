
#!/bin/bash
# LDAP Search with Advanced Options
# Demonstrates using advanced options for custom LDAP searches.

#This script includes comments explaining the purpose of the script and demonstrates how to perform an LDAP search with advanced options. The provided example showcases the usage of the cn:caseExactMatch:=john filter to search for entries with a case-sensitive exact match of "john" in the cn attribute.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Search with Advanced Options
ADVANCED_FILTER="cn:caseExactMatch:=john"

# Running the ldapsearch command with advanced options
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "$ADVANCED_FILTER"

<<OUTPUT
Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: cn:caseExactMatch:=john
# requesting: ALL
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
OUTPUT
