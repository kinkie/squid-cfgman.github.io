---
title: "Squid 3.1.0 configuration directive: icp_query_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icp_query_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icp_query_timeout) | [Alphabetical Index](index_all#toc_icp_query_timeout)

## Option Name:
[icp_query_timeout](#icp_query_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Dynamic detection.


## Suggested Config:
```plaintext

```

## Details:

	Normally Squid will automatically determine an optimal ICP
	query timeout value based on the round-trip-time of recent ICP
	queries.  If you want to override the value determined by
	Squid, set this 'icp_query_timeout' to a non-zero value.  This
	value is specified in MILLISECONDS, so, to use a 2-second
	timeout (the old default), you would write:

		icp_query_timeout 2000



[Index](index#toc_icp_query_timeout) | [Alphabetical Index](index_all#toc_icp_query_timeout)

