#!/bin/bash
# LDAP Search for Entries with Specific Attribute Present
# Demonstrates searching for entries with a specific attribute present.

#This script includes comments explaining the purpose of the script and demonstrates how to perform an LDAP search to retrieve entries with a specific attribute present using the attribute=* syntax. The provided example showcases searching for entries within the specified search base, checking for the presence of the "mail" attribute. 

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"

# Search for Entries with Specific Attribute Present
SEARCH_BASE="ou=Users,dc=example,dc=com"
ATTRIBUTE="mail"

# Running the ldapsearch command to check for attribute presence
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$SEARCH_BASE" "($ATTRIBUTE=*)"

<<OUTCOME
Sample Outcome:

# extended LDIF
#
# LDAPv3
# base <ou=Users,dc=example,dc=com> with scope subtree
# filter: (mail=*)
# requesting: ALL
#

# search result
search: 2
result: 0 Success

# numResponses: 2
# numEntries: 2

dn: uid=john,ou=Users,dc=example,dc=com
mail: johndoe@example.com

dn: uid=emma,ou=Users,dc=example,dc=com
mail: emmajohnson@example.com
OUTCOME
