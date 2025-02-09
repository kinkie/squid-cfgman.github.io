---
title: "Squid 3.1.0 configuration directive: test_reachability"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure test_reachability
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_test_reachability) | [Alphabetical Index](index_all#toc_test_reachability)

## Option Name:
[test_reachability](#test_reachability)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** test_reachability off


## Suggested Config:
```plaintext

```

## Details:

	When this is 'on', ICP MISS replies will be ICP_MISS_NOFETCH
	instead of ICP_MISS if the target host is NOT in the ICMP
	database, or has a zero RTT.



[Index](index#toc_test_reachability) | [Alphabetical Index](index_all#toc_test_reachability)

