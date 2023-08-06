#!/bin/bash
# LDAP Search Example with Filters
# Demonstrates using the ldapsearch command with filters for specific searches.
# This script demonstrates how to perform an LDAP search using filters based on the provided connection details. It searches for entries with the objectClass=inetOrgPerson filter and retrieves the specified attributes (cn, uid, and homeDirectory). The provided sample output showcases the results of the LDAP search.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Search with Filters
SEARCH_FILTER="objectClass=inetOrgPerson"
ATTRIBUTES="cn uid homeDirectory"

# Running the ldapsearch command with filters
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "$SEARCH_FILTER" $ATTRIBUTES

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: objectClass=inetOrgPerson
# requesting: cn uid homeDirectory
#

# search result
search: 2
result: 0 Success

# numResponses: 4
# numEntries: 3

dn: uid=pasteur,dc=example,dc=com
cn: Louis Pasteur
uid: pasteur
homeDirectory: /home/pasteur
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top

dn: uid=nobel,dc=example,dc=com
cn: Alfred Nobel
uid: nobel
homeDirectory: /home/nobel
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top

dn: uid=curie,dc=example,dc=com
cn: Marie Curie
uid: curie
homeDirectory: /home/curie
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top
EOF
