---
title: "Squid 3.1.0 configuration directive: forwarded_for"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure forwarded_for
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_forwarded_for) | [Alphabetical Index](index_all#toc_forwarded_for)

## Option Name:
[forwarded_for](#forwarded_for)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** forwarded_for on


## Suggested Config:
```plaintext

```

## Details:

	If set to "on", Squid will append your client's IP address
	in the HTTP requests it forwards. By default it looks like:

		X-Forwarded-For: 192.1.2.3

	If set to "off", it will appear as

		X-Forwarded-For: unknown

	If set to "transparent", Squid will not alter the
	X-Forwarded-For header in any way.

	If set to "delete", Squid will delete the entire
	X-Forwarded-For header.

	If set to "truncate", Squid will remove all existing
	X-Forwarded-For entries, and place the client IP as the sole entry.



[Index](index#toc_forwarded_for) | [Alphabetical Index](index_all#toc_forwarded_for)

