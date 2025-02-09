---
title: "Squid 3.1.0 configuration directive: nonhierarchical_direct"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure nonhierarchical_direct
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_nonhierarchical_direct) | [Alphabetical Index](index_all#toc_nonhierarchical_direct)

## Option Name:
[nonhierarchical_direct](#nonhierarchical_direct)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** nonhierarchical_direct on


## Suggested Config:
```plaintext

```

## Details:

	By default, Squid will send any non-hierarchical requests
	(not cacheable request type) direct to origin servers.

	When this is set to "off", Squid will prefer to send these
	requests to parents.

	Note that in most configurations, by turning this off you will only
	add latency to these request without any improvement in global hit
	ratio.

	This option only sets a preference. If the parent is unavailable a
	direct connection to the origin server may still be attempted. To
	completely prevent direct connections use never_direct.



[Index](index#toc_nonhierarchical_direct) | [Alphabetical Index](index_all#toc_nonhierarchical_direct)

