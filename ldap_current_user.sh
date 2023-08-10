#!/bin/bash
# LDAP Who Am I Example
# Demonstrates using ldapwhoami to determine the DN of the currently authenticated user.
# The ldapwhoami command is used to determine the DN (Distinguished Name) of the currently authenticated user. It's a command-line utility often used for testing and verifying the credentials of an LDAP user.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
USER_DN="uid=john,ou=Users,dc=example,dc=com"
PASSWORD="password"

# Running the ldapwhoami command
ldapwhoami -x -h $HOST -p $PORT -D "$USER_DN" -w "$PASSWORD"
