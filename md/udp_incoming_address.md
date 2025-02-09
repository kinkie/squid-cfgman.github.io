---
title: "Squid 3.1.0 configuration directive: udp_incoming_address"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure udp_incoming_address
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_udp_incoming_address) | [Alphabetical Index](index_all#toc_udp_incoming_address)

## Option Name:
[udp_incoming_address](#udp_incoming_address)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Accept packets from all machine interfaces.


## Suggested Config:
```plaintext

```

## Details:

	udp_incoming_address	is used for UDP packets received from other
				caches.

	The default behavior is to not bind to any specific address.

	Only change this if you want to have all UDP queries received on
	a specific interface/address.

	NOTE: udp_incoming_address is used by the ICP, HTCP, and DNS
	modules. Altering it will affect all of them in the same manner.

	see also; udp_outgoing_address

	NOTE, udp_incoming_address and udp_outgoing_address can not
	have the same value since they both use the same port.



[Index](index#toc_udp_incoming_address) | [Alphabetical Index](index_all#toc_udp_incoming_address)

