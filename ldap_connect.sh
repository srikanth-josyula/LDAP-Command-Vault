#!/bin/bash
# LDAP Connection Script
# Connects to the online LDAP test server using provided credentials.

HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
BIND_PASSWORD="password"

# Running the ldapsearch command to test connection
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$BIND_PASSWORD" -b "dc=example,dc=com" -s base "(objectclass=*)" namingContexts
