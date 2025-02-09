---
title: "Squid 3.1.0 configuration directive: udp_outgoing_address"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure udp_outgoing_address
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_udp_outgoing_address) | [Alphabetical Index](index_all#toc_udp_outgoing_address)

## Option Name:
[udp_outgoing_address](#udp_outgoing_address)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Use udp_incoming_address or an address selected by the operating system.


## Suggested Config:
```plaintext

```

## Details:

	udp_outgoing_address	is used for UDP packets sent out to other
				caches.

	The default behavior is to not bind to any specific address.

	Instead it will use the same socket as udp_incoming_address.
	Only change this if you want to have UDP queries sent using another
	address than where this Squid listens for UDP queries from other
	caches.

	NOTE: udp_outgoing_address is used by the ICP, HTCP, and DNS
	modules. Altering it will affect all of them in the same manner.

	see also; udp_incoming_address

	NOTE, udp_incoming_address and udp_outgoing_address can not
	have the same value since they both use the same port.



[Index](index#toc_udp_outgoing_address) | [Alphabetical Index](index_all#toc_udp_outgoing_address)

