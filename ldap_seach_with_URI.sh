
#!/bin/bash
# LDAP Search with Advanced Options
# Demonstrates using advanced options for custom LDAP searches.

#This script includes comments explaining the purpose of the script and demonstrates how to perform an LDAP search with advanced options. 
#The provided example showcases the usage of the cn:caseExactMatch:=john filter to search for entries with a case-sensitive exact match of "john" in the cn attribute.

# Connection Details
HOSTURI="ldap://ldap.forumsys.com:389"
BIND_DN="cn=read-only-admin"
BIND_PASSWORD="password"

# Search with AND Operator
SEARCH_BASE_DN="dc=example,dc=com"
SEARCH_FILTER="(objectclass=*)"
ATTRIBUTES="dn cn sAMAccountName"

# Search with AND Operator
ADVANCED_FILTER="sAMAccountName:caseExactMatch:=john"

# Running the ldapsearch command with admin credentials
echo ldapsearch -x -H $HOSTURI -D "$BIND_DN" -w "$BIND_PASSWORD" -b "$SEARCH_BASE_DN" $ADVANCED_FILTER $ATTRIBUTES
ldapsearch -x -H $HOSTURI -D "$BIND_DN" -w "$BIND_PASSWORD" -b "$SEARCH_BASE_DN" $ADVANCED_FILTER $ATTRIBUTES

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
sAMAccountName: john
OUTPUT
