---
title: "Squid 3.1.0 configuration directive: authenticate_ttl"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure authenticate_ttl
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_authenticate_ttl) | [Alphabetical Index](index_all#toc_authenticate_ttl)

## Option Name:
[authenticate_ttl](#authenticate_ttl)
 * **Replaces:** 
 * **Requires:** --enable-auth
 * **Default Value:** authenticate_ttl 1 hour


## Suggested Config:
```plaintext

```

## Details:

	The time a user &amp; their credentials stay in the logged in
	user cache since their last request. When the garbage
	interval passes, all user credentials that have passed their
	TTL are removed from memory.



[Index](index#toc_authenticate_ttl) | [Alphabetical Index](index_all#toc_authenticate_ttl)

