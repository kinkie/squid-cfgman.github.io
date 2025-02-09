---
title: "Squid 3.1.0 configuration directive: never_direct"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure never_direct
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_never_direct) | [Alphabetical Index](index_all#toc_never_direct)

## Option Name:
[never_direct](#never_direct)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Allow DNS results to be used for this request.


## Suggested Config:
```plaintext

```

## Details:

	Usage: never_direct allow|deny [!]aclname ...

	never_direct is the opposite of always_direct.  Please read
	the description for always_direct if you have not already.

	With 'never_direct' you can use ACL elements to specify
	requests which should NEVER be forwarded directly to origin
	servers.  For example, to force the use of a proxy for all
	requests, except those in your local domain use something like:

		acl local-servers dstdomain .foo.net
		never_direct deny local-servers
		never_direct allow all

	or if Squid is inside a firewall and there are local intranet
	servers inside the firewall use something like:

		acl local-intranet dstdomain .foo.net
		acl local-external dstdomain external.foo.net
		always_direct deny local-external
		always_direct allow local-intranet
		never_direct allow all

	This clause supports both fast and slow acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_never_direct) | [Alphabetical Index](index_all#toc_never_direct)

