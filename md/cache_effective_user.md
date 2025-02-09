---
title: "Squid 3.1.0 configuration directive: cache_effective_user"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_effective_user
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_effective_user) | [Alphabetical Index](index_all#toc_cache_effective_user)

## Option Name:
[cache_effective_user](#cache_effective_user)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** cache_effective_user nobody


## Suggested Config:
```plaintext

```

## Details:

	If you start Squid as root, it will change its effective/real
	UID/GID to the user specified below.  The default is to change
	to UID of nobody.
	see also; cache_effective_group



[Index](index#toc_cache_effective_user) | [Alphabetical Index](index_all#toc_cache_effective_user)

