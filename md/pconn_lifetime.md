---
title: "Squid 3.1.0 configuration directive: pconn_lifetime"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure pconn_lifetime
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_pconn_lifetime) | [Alphabetical Index](index_all#toc_pconn_lifetime)

## Option Name:
[pconn_lifetime](#pconn_lifetime)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** pconn_lifetime 0 seconds


## Suggested Config:
```plaintext

```

## Details:

	Desired maximum lifetime of a persistent connection.
	When set, Squid will close a now-idle persistent connection that
	exceeded configured lifetime instead of moving the connection into
	the idle connection pool (or equivalent). No effect on ongoing/active
	transactions. Connection lifetime is the time period from the
	connection acceptance or opening time until "now".

	This limit is useful in environments with long-lived connections
	where Squid configuration or environmental factors change during a
	single connection lifetime. If unrestricted, some connections may
	last for hours and even days, ignoring those changes that should
	have affected their behavior or their existence.

	Currently, a new lifetime value supplied via Squid reconfiguration
	has no effect on already idle connections unless they become busy.

	When set to '0' this limit is not used.



[Index](index#toc_pconn_lifetime) | [Alphabetical Index](index_all#toc_pconn_lifetime)

