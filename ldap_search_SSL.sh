#!/bin/bash
# LDAP Search Example with Secure Connection
# Demonstrates using ldapsearch to perform a secure LDAP search.

#This script demonstrates how to use the ldapsearch command to perform a secure LDAP search over an SSL/TLS-encrypted connection. It utilizes the syntax ldapsearch [options] -ZZ [search filter] [attributes] to search for entries with the specified attributes within a specific search base. An example is provided where it searches for entries with objectClass=person within the "ou=Users,dc=example,dc=com" search base using a secure connection.

#The provided example showcases searching for entries with objectClass=person within the specified search base, using the -ZZ option for a secure connection. 


# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BASE_DN="ou=Users,dc=example,dc=com"

# Running the ldapsearch command with secure connection
ldapsearch -x -ZZ -h $HOST -p $PORT -b "$BASE_DN" "(objectClass=person)" cn mail
