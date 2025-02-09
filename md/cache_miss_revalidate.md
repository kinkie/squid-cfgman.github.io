---
title: "Squid 3.1.0 configuration directive: cache_miss_revalidate"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_miss_revalidate
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_miss_revalidate) | [Alphabetical Index](index_all#toc_cache_miss_revalidate)

## Option Name:
[cache_miss_revalidate](#cache_miss_revalidate)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** cache_miss_revalidate on


## Suggested Config:
```plaintext

```

## Details:

	RFC 7232 defines a conditional request mechanism to prevent
	response objects being unnecessarily transferred over the network.
	If that mechanism is used by the client and a cache MISS occurs
	it can prevent new cache entries being created.

	This option determines whether Squid on cache MISS will pass the
	client revalidation request to the server or tries to fetch new
	content for caching. It can be useful while the cache is mostly
	empty to more quickly have the cache populated by generating
	non-conditional GETs.

	When set to 'on' (default), Squid will pass all client If-* headers
	to the server. This permits server responses without a cacheable
	payload to be delivered and on MISS no new cache entry is created.

	When set to 'off' and if the request is cacheable, Squid will
	remove the clients If-Modified-Since and If-None-Match headers from
	the request sent to the server. This requests a 200 status response
	from the server to create a new cache entry with.



[Index](index#toc_cache_miss_revalidate) | [Alphabetical Index](index_all#toc_cache_miss_revalidate)

