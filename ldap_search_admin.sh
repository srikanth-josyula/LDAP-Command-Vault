#!/bin/bash
# LDAP Search Example with Admin Credentials
# Demonstrates using the ldapsearch command with admin credentials for additional information.

# Connection Details
HOST="ldap.forumsys.com"
PORT=389
BIND_DN="cn=read-only-admin,dc=example,dc=com"
ADMIN_PASSWORD="password"
BASE_DN="dc=example,dc=com"

# Running the ldapsearch command with admin credentials
# The following command searches for entries in the specified base DN with the objectclass=* filter.
# It retrieves the common name (cn) and user ID (uid) attributes.
ldapsearch -x -h $HOST -p $PORT -D "$BIND_DN" -w "$ADMIN_PASSWORD" -b "$BASE_DN" "(objectclass=*)" cn uid

<<EOF
Sample Output:

# extended LDIF
#
# LDAPv3
# base <dc=example,dc=com> with scope subtree
# filter: (objectclass=*)
# requesting: cn uid
#

# search result
search: 2
result: 0 Success

# numResponses: 5
# numEntries: 4

dn: uid=pasteur,dc=example,dc=com
cn: Louis Pasteur
uid: pasteur
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top

dn: uid=nobel,dc=example,dc=com
cn: Alfred Nobel
uid: nobel
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top

dn: uid=curie,dc=example,dc=com
cn: Marie Curie
uid: curie
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top

dn: uid=boyle,dc=example,dc=com
cn: Robert Boyle
uid: boyle
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top
EOF
