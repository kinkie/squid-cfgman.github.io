---
title: "Squid 3.1.0 configuration directive: shared_transient_entries_limit"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure shared_transient_entries_limit
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_shared_transient_entries_limit) | [Alphabetical Index](index_all#toc_shared_transient_entries_limit)

## Option Name:
[shared_transient_entries_limit](#shared_transient_entries_limit)
 * **Replaces:** collapsed_forwarding_shared_entries_limit
 * **Requires:** 
 * **Default Value:** shared_transient_entries_limit 16384


## Suggested Config:
```plaintext

```

## Details:

	This directive limits the size of a table used for sharing current
	transaction information among SMP workers. A table entry stores meta
	information about a single cache entry being delivered to Squid
	client(s) by one or more SMP workers. A single table entry consumes
	less than 128 shared memory bytes.

	The limit should be significantly larger than the number of
	concurrent non-collapsed cachable responses leaving Squid. For a
	cache that handles less than 5000 concurrent requests, the default
	setting of 16384 should be plenty.

	Using excessively large values wastes shared memory. Limiting the
	table size too much results in hash collisions, leading to lower hit
	ratio and missed SMP request collapsing opportunities: Transactions
	left without a table entry cannot cache their responses and are
	invisible to other concurrent requests for the same resource.

	A zero limit is allowed but unsupported. A positive small limit
	lowers hit ratio, but zero limit disables a lot of essential
	synchronization among SMP workers, leading to HTTP violations (e.g.,
	stale hit responses). It also disables shared collapsed forwarding:
	A worker becomes unable to collapse its requests on transactions in
	other workers, resulting in more trips to the origin server and more
	cache thrashing.



[Index](index#toc_shared_transient_entries_limit) | [Alphabetical Index](index_all#toc_shared_transient_entries_limit)

