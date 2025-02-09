---
title: "Squid 3.1.0 configuration directive: icp_hit_stale"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icp_hit_stale
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icp_hit_stale) | [Alphabetical Index](index_all#toc_icp_hit_stale)

## Option Name:
[icp_hit_stale](#icp_hit_stale)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** icp_hit_stale off


## Suggested Config:
```plaintext

```

## Details:

	If you want to return ICP_HIT for stale cache objects, set this
	option to 'on'.  If you have sibling relationships with caches
	in other administrative domains, this should be 'off'.  If you only
	have sibling relationships with caches under your control,
	it is probably okay to set this to 'on'.
	If set to 'on', your siblings should use the option "allow-miss"
	on their cache_peer lines for connecting to you.



[Index](index#toc_icp_hit_stale) | [Alphabetical Index](index_all#toc_icp_hit_stale)

