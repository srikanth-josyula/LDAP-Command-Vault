#!/bin/bash
# LDAP Modify DN (Move/Rename) Example
# Demonstrates using ldapmodrdn to move or rename an entry within the directory.

#This script includes comments explaining the purpose of the script and demonstrates how to use the ldapmodrdn command to move or rename an entry within the directory. The provided example showcases moving or renaming an entry using the specified bind DN and LDIF file.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=admin,dc=example,dc=com"

# Running the ldapmodrdn command to move or rename an entry
ldapmodrdn -x -h $HOST -p $PORT -D "$BIND_DN" -W -r -f modify_dn.ldif

<<OUTCOME
Sample Outcome:

Moves or renames an LDAP entry.
OUTCOME
