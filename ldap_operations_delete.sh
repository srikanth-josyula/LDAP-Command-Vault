#!/bin/bash
# LDAP Delete Entry Example
# Demonstrates using ldapdelete to delete an entry from the directory.

#This script includes comments explaining the purpose of the script and demonstrates how to use the ldapdelete command to delete an entry from the directory. The provided example showcases deleting an entry using the specified bind DN and entry DN.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=admin,dc=example,dc=com"

# Entry DN to be deleted
ENTRY_DN="uid=john,ou=Users,dc=example,dc=com"

# Running the ldapdelete command to delete an entry
ldapdelete -x -h $HOST -p $PORT -D "$BIND_DN" -W "$ENTRY_DN"

<<OUTCOME
Sample Outcome:

Deletes an LDAP entry from the directory.
OUTCOME
