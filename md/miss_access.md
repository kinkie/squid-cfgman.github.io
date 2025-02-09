---
title: "Squid 3.1.0 configuration directive: miss_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure miss_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_miss_access) | [Alphabetical Index](index_all#toc_miss_access)

## Option Name:
[miss_access](#miss_access)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Allow, unless rules exist in squid.conf.


## Suggested Config:
```plaintext

```

## Details:

	Determines whether network access is permitted when satisfying a request.

	For example;
	    to force your neighbors to use you as a sibling instead of
	    a parent.

		acl localclients src 192.0.2.0/24 2001:DB8::a:0/64
		miss_access deny  !localclients
		miss_access allow all

	This means only your local clients are allowed to fetch relayed/MISS
	replies from the network and all other clients can only fetch cached
	objects (HITs).

	The default for this setting allows all clients who passed the
	http_access rules to relay via this proxy.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_miss_access) | [Alphabetical Index](index_all#toc_miss_access)

