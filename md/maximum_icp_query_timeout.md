---
title: "Squid 3.1.0 configuration directive: maximum_icp_query_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure maximum_icp_query_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_maximum_icp_query_timeout) | [Alphabetical Index](index_all#toc_maximum_icp_query_timeout)

## Option Name:
[maximum_icp_query_timeout](#maximum_icp_query_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** maximum_icp_query_timeout 2000


## Suggested Config:
```plaintext

```

## Details:

	Normally the ICP query timeout is determined dynamically.  But
	sometimes it can lead to very large values (say 5 seconds).
	Use this option to put an upper limit on the dynamic timeout
	value.  Do NOT use this option to always use a fixed (instead
	of a dynamic) timeout value. To set a fixed timeout see the
	'icp_query_timeout' directive.



[Index](index#toc_maximum_icp_query_timeout) | [Alphabetical Index](index_all#toc_maximum_icp_query_timeout)

