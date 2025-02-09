---
title: "Squid 3.1.0 configuration directive: mcast_groups"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure mcast_groups
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_mcast_groups) | [Alphabetical Index](index_all#toc_mcast_groups)

## Option Name:
[mcast_groups](#mcast_groups)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	This tag specifies a list of multicast groups which your server
	should join to receive multicasted ICP queries.

	NOTE!  Be very careful what you put here!  Be sure you
	understand the difference between an ICP _query_ and an ICP
	_reply_.  This option is to be set only if you want to RECEIVE
	multicast queries.  Do NOT set this option to SEND multicast
	ICP (use cache_peer for that).  ICP replies are always sent via
	unicast, so this option does not affect whether or not you will
	receive replies from multicast group members.

	You must be very careful to NOT use a multicast address which
	is already in use by another group of caches.

	If you are unsure about multicast, please read the Multicast
	chapter in the Squid FAQ (http://www.squid-cache.org/FAQ/).

	Usage: mcast_groups 239.128.16.128 224.0.1.20

	By default, Squid doesn't listen on any multicast groups.



[Index](index#toc_mcast_groups) | [Alphabetical Index](index_all#toc_mcast_groups)

