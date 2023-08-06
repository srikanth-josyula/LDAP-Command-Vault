#!/bin/bash
# LDAP Modify Entry Example
# Demonstrates using ldapmodify to modify attributes of an existing entry.

#This script includes comments explaining the purpose of the script and demonstrates how to use the ldapmodify command to modify attributes of an existing entry in the directory. The provided example showcases modifying attributes of an existing entry using the specified bind DN and LDIF file. 

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=admin,dc=example,dc=com"

# Running the ldapmodify command to modify an existing entry
ldapmodify -x -h $HOST -p $PORT -D "$BIND_DN" -W -f modify_entry.ldif

<<OUTCOME
Sample Outcome:

Modifies attributes of an existing LDAP entry.
OUTCOME

#create a file modify_entry.ldif
#dn: uid=john,ou=Users,dc=example,dc=com
#objectClass: inetOrgPerson
#cn: John Doe
#sn: Doe
#uid: john
#mail: johndoe@example.com
