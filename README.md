# LDAP Command Vault
LDAP Command Vault is a project designed to organize, store, and manage LDAP command line queries in a convenient and structured manner. 

# Features

## Features

- **Check Connectvity & configurations:** Stores LDAP command line queries and helpful in checking connectivity with ldap server .
- **Search and Filtering:** This has the details of using ldapsearch tool for searching and using filter options.


## Common options:
-  -d level   set LDAP debugging level to `level'<br />
  -D binddn  bind DN<br />
  -e [!]<ext>[=<extparam>] general extensions (! indicates criticality)<br />
             [!]assert=<filter>     (RFC 4528; a RFC 4515 Filter string)<br />
             [!]authzid=<authzid>   (RFC 4370; "dn:<dn>" or "u:<user>")<br />
             [!]chaining[=<resolveBehavior>[/<continuationBehavior>]]<br />
                     one of "chainingPreferred", "chainingRequired",<br />
                     "referralsPreferred", "referralsRequired"<br />
             [!]manageDSAit         (RFC 3296)<br />
             [!]noop<br />
             ppolicy<br />
             [!]postread[=<attrs>]  (RFC 4527; comma-separated attr list)<br />
             [!]preread[=<attrs>]   (RFC 4527; comma-separated attr list)<br />
             [!]relax<br />
             [!]sessiontracking<br />
             abandon, cancel, ignore (SIGINT sends abandon/cancel,<br />
             or ignores response; if critical, doesn't wait for SIGINT.<br />
             not really controls)<br />
  -h host    LDAP server<br />
  -H URI     LDAP Uniform Resource Identifier(s)<br />
  -I         use SASL Interactive mode<br />
  -n         show what would be done but don't actually do it<br />
  -N         do not use reverse DNS to canonicalize SASL host name<br />
  -O props   SASL security properties<br />
  -o <opt>[=<optparam>] general options<br />
             nettimeout=<timeout> (in seconds, or "none" or "max")<br />
             ldif-wrap=<width> (in columns, or "no" for no wrapping)<br />
  -p port    port on LDAP server<br />
  -Q         use SASL Quiet mode<br />
  -R realm   SASL realm<br />
  -U authcid SASL authentication identity<br />
  -v         run in verbose mode (diagnostics to standard output)<br />
  -V         print version info (-VV only)<br />
  -w passwd  bind password (for simple authentication)<br />
  -W         prompt for bind password<br />
  -x         Simple authentication<br />
  -X authzid SASL authorization identity ("dn:<dn>" or "u:<user>")<br />
  -y file    Read password from file<br />
  -Y mech    SASL mechanism<br />
  -Z         Start TLS request (-ZZ to require successful response)<br />
