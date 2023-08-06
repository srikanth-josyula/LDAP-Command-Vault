#!/bin/bash
# LDAP Compare Attribute Value Example
# Demonstrates using ldapcompare to compare an attribute value of an entry.

#This script includes comments explaining the purpose of the script and demonstrates how to use the ldapcompare command to compare an attribute value of an entry in the directory. The provided example showcases comparing the "cn" attribute value of an entry using the specified bind DN, entry DN, attribute, and value.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=admin,dc=example,dc=com"

# Entry DN and Attribute to be compared
ENTRY_DN="uid=john,ou=Users,dc=example,dc=com"
ATTRIBUTE="cn"
VALUE="John"

# Running the ldapcompare command to compare attribute value
ldapcompare -x -h $HOST -p $PORT -D "$BIND_DN" -W "$ENTRY_DN" $ATTRIBUTE "$VALUE"

<<OUTCOME
Sample Outcome:

Compares the specified attribute value of an LDAP entry.
OUTCOME
