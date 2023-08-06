#!/bin/bash
# LDAP Add Entry Example
# Demonstrates using ldapadd to add a new entry to the directory.

#his script includes comments explaining the purpose of the script and demonstrates how to use the ldapadd command to add a new entry to the directory. The provided example showcases adding a new entry using the specified bind DN and LDIF file

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=admin,dc=example,dc=com"

# Running the ldapadd command to add a new entry
ldapadd -x -h $HOST -p $PORT -D "$BIND_DN" -W -f new_entry.ldif

<<OUTCOME
Sample Outcome:

Adds a new entry to the LDAP directory.
OUTCOME


#For example, a simple LDIF entry representing a person might look like: new_entry.ldif

#dn: uid=john,ou=Users,dc=example,dc=com
#objectClass: inetOrgPerson
#cn: John Doe
#sn: Doe
#uid: john
#mail: johndoe@example.com
