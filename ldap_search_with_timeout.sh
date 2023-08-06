#!/bin/bash
# LDAP Search with Timeout
# Demonstrates performing searches with a specified timeout.

#This script includes comments explaining the purpose of the script and demonstrates how to perform an LDAP search with a specified timeout using the -z option. The provided example showcases searching for entries with objectClass=person within the specified search base, retrieving the specified attributes, while setting a search timeout of 10 seconds. 

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"

# Search with Timeout
TIMEOUT="10"
SEARCH_BASE="ou=Users,dc=example,dc=com"
FILTER="(objectClass=person)"
ATTRIBUTES="cn mail"

# Running the ldapsearch command with timeout
ldapsearch -x -z $TIMEOUT -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$SEARCH_BASE" "$FILTER" $ATTRIBUTES

<<OUTCOME
Sample Outcome:

Retrieves entries with a search timeout of 10 seconds.
OUTCOME
