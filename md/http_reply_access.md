---
title: "Squid 3.1.0 configuration directive: http_reply_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure http_reply_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_http_reply_access) | [Alphabetical Index](index_all#toc_http_reply_access)

## Option Name:
[http_reply_access](#http_reply_access)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Allow, unless rules exist in squid.conf.


## Suggested Config:
```plaintext

```

## Details:

	Allow replies to client requests. This is complementary to http_access.

	http_reply_access allow|deny [!] aclname ...

	NOTE: if there are no access lines present, the default is to allow
	all replies.

	If none of the access lines cause a match the opposite of the
	last line will apply. Thus it is good practice to end the rules
	with an "allow all" or "deny all" entry.

	This clause supports both fast and slow acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_http_reply_access) | [Alphabetical Index](index_all#toc_http_reply_access)

