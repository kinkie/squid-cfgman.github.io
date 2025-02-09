---
title: "Squid 3.1.0 configuration directive: query_icmp"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure query_icmp
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_query_icmp) | [Alphabetical Index](index_all#toc_query_icmp)

## Option Name:
[query_icmp](#query_icmp)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** query_icmp off


## Suggested Config:
```plaintext

```

## Details:

	If you want to ask your peers to include ICMP data in their ICP
	replies, enable this option.

	If your peer has configured Squid (during compilation) with
	'--enable-icmp' that peer will send ICMP pings to origin server
	sites of the URLs it receives.  If you enable this option the
	ICP replies from that peer will include the ICMP data (if available).
	Then, when choosing a parent cache, Squid will choose the parent with
	the minimal RTT to the origin server.  When this happens, the
	hierarchy field of the access.log will be
	"CLOSEST_PARENT_MISS".  This option is off by default.



[Index](index#toc_query_icmp) | [Alphabetical Index](index_all#toc_query_icmp)

