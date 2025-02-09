---
title: "Squid 3.1.0 configuration directive: cache_store_log"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_store_log
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_store_log) | [Alphabetical Index](index_all#toc_cache_store_log)

## Option Name:
[cache_store_log](#cache_store_log)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Logs the activities of the storage manager.  Shows which
	objects are ejected from the cache, and which objects are
	saved and for how long.
	There are not really utilities to analyze this data, so you can safely
	disable it (the default).

	Store log uses modular logging outputs. See access_log for the list
	of modules supported.

	Example:
		cache_store_log stdio:/usr/local/squid/var/logs/store.log
		cache_store_log daemon:/usr/local/squid/var/logs/store.log



[Index](index#toc_cache_store_log) | [Alphabetical Index](index_all#toc_cache_store_log)

