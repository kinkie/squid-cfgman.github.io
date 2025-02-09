---
title: "Squid 3.1.0 configuration directive: minimum_icp_query_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure minimum_icp_query_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_minimum_icp_query_timeout) | [Alphabetical Index](index_all#toc_minimum_icp_query_timeout)

## Option Name:
[minimum_icp_query_timeout](#minimum_icp_query_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** minimum_icp_query_timeout 5


## Suggested Config:
```plaintext

```

## Details:

	Normally the ICP query timeout is determined dynamically.  But
	sometimes it can lead to very small timeouts, even lower than
	the normal latency variance on your link due to traffic.
	Use this option to put an lower limit on the dynamic timeout
	value.  Do NOT use this option to always use a fixed (instead
	of a dynamic) timeout value. To set a fixed timeout see the
	'icp_query_timeout' directive.



[Index](index#toc_minimum_icp_query_timeout) | [Alphabetical Index](index_all#toc_minimum_icp_query_timeout)

