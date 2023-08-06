#!/bin/bash
# LDAP Search Example with Admin Credentials
# Demonstrates using the ldapsearch command with admin credentials for additional information.

HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Running the ldapsearch command with admin credentials
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "(objectclass=*)" cn uid
