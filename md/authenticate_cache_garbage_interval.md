---
title: "Squid 3.1.0 configuration directive: authenticate_cache_garbage_interval"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure authenticate_cache_garbage_interval
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_authenticate_cache_garbage_interval) | [Alphabetical Index](index_all#toc_authenticate_cache_garbage_interval)

## Option Name:
[authenticate_cache_garbage_interval](#authenticate_cache_garbage_interval)
 * **Replaces:** 
 * **Requires:** --enable-auth
 * **Default Value:** authenticate_cache_garbage_interval 1 hour


## Suggested Config:
```plaintext

```

## Details:

	The time period between garbage collection across the username cache.
	This is a trade-off between memory utilization (long intervals - say
	2 days) and CPU (short intervals - say 1 minute). Only change if you
	have good reason to.



[Index](index#toc_authenticate_cache_garbage_interval) | [Alphabetical Index](index_all#toc_authenticate_cache_garbage_interval)

