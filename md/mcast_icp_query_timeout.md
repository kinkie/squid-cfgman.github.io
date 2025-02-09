---
title: "Squid 3.1.0 configuration directive: mcast_icp_query_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure mcast_icp_query_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_mcast_icp_query_timeout) | [Alphabetical Index](index_all#toc_mcast_icp_query_timeout)

## Option Name:
[mcast_icp_query_timeout](#mcast_icp_query_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** mcast_icp_query_timeout 2000


## Suggested Config:
```plaintext

```

## Details:

	For multicast peers, Squid regularly sends out ICP "probes" to
	count how many other peers are listening on the given multicast
	address.  This value specifies how long Squid should wait to
	count all the replies.  The default is 2000 msec, or 2
	seconds.



[Index](index#toc_mcast_icp_query_timeout) | [Alphabetical Index](index_all#toc_mcast_icp_query_timeout)

