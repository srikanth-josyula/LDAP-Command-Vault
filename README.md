# LDAP Command Vault
LDAP Command Vault is a project designed to organize, store, and manage LDAP command line queries in a convenient and structured manner. 

# Features

## Features

- **Check Connectvity & configurations:** Stores LDAP command line queries and helpful in checking connectivity with ldap server .
- **Search and Filtering:** This has the details of using ldapsearch tool for searching and using filter options.


## Common options:
<pre>  
  -d level   set LDAP debugging level to `level'
  -D binddn  bind DN
  -e [!]<ext>[=<extparam>] general extensions (! indicates criticality)
             [!]assert=<filter>     (RFC 4528; a RFC 4515 Filter string)
             [!]authzid=<authzid>   (RFC 4370; "dn:<dn>" or "u:<user>")
             [!]chaining[=<resolveBehavior>[/<continuationBehavior>]]
                     one of "chainingPreferred", "chainingRequired",
                     "referralsPreferred", "referralsRequired"
             [!]manageDSAit         (RFC 3296)
             [!]noop
             ppolicy
             [!]postread[=<attrs>]  (RFC 4527; comma-separated attr list)<br />
             [!]preread[=<attrs>]   (RFC 4527; comma-separated attr list)<br />
             [!]relax<br />
             [!]sessiontracking<br />
             abandon, cancel, ignore (SIGINT sends abandon/cancel,<br />
             or ignores response; if critical, doesn't wait for SIGINT.<br />
             not really controls)<br />
  -h host    LDAP server<br />
  -H URI     LDAP Uniform Resource Identifier(s)
  -I         use SASL Interactive mode
  -n         show what would be done but don't actually do it
  -N         do not use reverse DNS to canonicalize SASL host name
  -O props   SASL security properties
  -o <opt>[=<optparam>] general options
             nettimeout=<timeout> (in seconds, or "none" or "max")
             ldif-wrap=<width> (in columns, or "no" for no wrapping)
  -p port    port on LDAP server
  -Q         use SASL Quiet mode
  -R realm   SASL realm
  -U authcid SASL authentication identity
  -v         run in verbose mode (diagnostics to standard output)
  -V         print version info (-VV only)
  -w passwd  bind password (for simple authentication)
  -W         prompt for bind password
  -x         Simple authentication
  -X authzid SASL authorization identity ("dn:<dn>" or "u:<user>")
  -y file    Read password from file
  -Y mech    SASL mechanism
  -Z         Start TLS request (-ZZ to require successful response)
  </user>pre>
