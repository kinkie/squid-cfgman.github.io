---
title: "Squid 3.1.0 configuration directive: dead_peer_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure dead_peer_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_dead_peer_timeout) | [Alphabetical Index](index_all#toc_dead_peer_timeout)

## Option Name:
[dead_peer_timeout](#dead_peer_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** dead_peer_timeout 10 seconds


## Suggested Config:
```plaintext

```

## Details:

	This controls how long Squid waits to declare a peer cache
	as "dead."  If there are no ICP replies received in this
	amount of time, Squid will declare the peer dead and not
	expect to receive any further ICP replies.  However, it
	continues to send ICP queries, and will mark the peer as
	alive upon receipt of the first subsequent ICP reply.

	This timeout also affects when Squid expects to receive ICP
	replies from peers.  If more than 'dead_peer' seconds have
	passed since the last ICP reply was received, Squid will not
	expect to receive an ICP reply on the next query.  Thus, if
	your time between requests is greater than this timeout, you
	will see a lot of requests sent DIRECT to origin servers
	instead of to your parents.



[Index](index#toc_dead_peer_timeout) | [Alphabetical Index](index_all#toc_dead_peer_timeout)

