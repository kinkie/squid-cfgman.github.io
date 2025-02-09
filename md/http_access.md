---
title: "Squid 3.1.0 configuration directive: http_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure http_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_http_access) | [Alphabetical Index](index_all#toc_http_access)

## Option Name:
[http_access](#http_access)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Deny, unless rules exist in squid.conf.


## Suggested Config:
```plaintext
#
# Recommended minimum Access Permission configuration:
#
# Deny requests to certain unsafe ports
# Deny CONNECT to other than secure SSL ports
# Only allow cachemgr access from localhost
# This default configuration only allows localhost requests because a more
# permissive Squid installation could introduce new attack vectors into the
# network by proxying external TCP connections to unprotected services.
# The two deny rules below are unnecessary in this default configuration
# because they are followed by a "deny all" rule. However, they may become
# critically important when you start allowing external requests below them.
# Protect web applications running on the same server as Squid. They often
# assume that only local users can access them at "localhost" ports.
# Protect cloud servers that provide local users with sensitive info about
# their server via certain well-known link-local (a.k.a. APIPA) addresses.
#
# INSERT YOUR OWN RULE(S) HERE TO ALLOW ACCESS FROM YOUR CLIENTS
#
# For example, to allow access from your local networks, you may uncomment the
# following rule (and/or add rules that match your definition of "local"):
# http_access allow localnet
# And finally deny all other access to this proxy

```

## Details:

	Allowing or Denying access based on defined access lists

	To allow or deny a message received on an HTTP, HTTPS, or FTP port:
	http_access allow|deny [!]aclname ...

	NOTE on default values:

	If there are no "access" lines present, the default is to deny
	the request.

	If none of the "access" lines cause a match, the default is the
	opposite of the last line in the list.  If the last line was
	deny, the default is allow.  Conversely, if the last line
	is allow, the default will be deny.  For these reasons, it is a
	good idea to have an "deny all" entry at the end of your access
	lists to avoid potential confusion.

	This clause supports both fast and slow acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

CONFIG_START

http_access deny !Safe_ports

http_access deny CONNECT !SSL_ports

http_access allow localhost manager
http_access deny manager

http_access allow localhost


http_access deny to_localhost

http_access deny to_linklocal



http_access deny all
CONFIG_END



[Index](index#toc_http_access) | [Alphabetical Index](index_all#toc_http_access)

