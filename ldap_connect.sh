#!/bin/bash
# LDAP Connection Test Script
# This script tests the connection to an LDAP server without performing a search.

#In this script, the -b parameter is set to an empty value, and the search filter is set to (objectClass=*). The -s base flag specifies that the search should be performed at the base level. The attribute 1.1 is used to specify that no attributes should be returned (it's a common way to perform a simple connection test).

# Connection Details
HOSTNAME="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
BIND_PASSWORD="password"

# Running the LDAP connection test
ldapsearch -x -H ldap://${HOSTNAME}:${PORT} -D "${BIND_DN}" -w "${BIND_PASSWORD}" -b "" -s base "(objectClass=*)" 1.1
