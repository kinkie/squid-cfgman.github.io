---
title: "Squid 3.1.0 configuration directive: mark_client_packet"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure mark_client_packet
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_mark_client_packet) | [Alphabetical Index](index_all#toc_mark_client_packet)

## Option Name:
[mark_client_packet](#mark_client_packet)
 * **Replaces:** clientside_mark
 * **Requires:** --with-cap and Packet MARK (Linux)
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Allows you to apply a Netfilter MARK value to packets being transmitted
	on the client-side, based on an ACL.

	mark_client_packet mark-value [!]aclname ...

	Example where normal_service_net uses the MARK value 0x00
	and good_service_net uses 0x20

	acl normal_service_net src 10.0.0.0/24
	acl good_service_net src 10.0.1.0/24
	mark_client_packet 0x00 normal_service_net
	mark_client_packet 0x20 good_service_net

	Note: This feature is incompatible with qos_flows. Any mark values set here
	will be overwritten by mark values in qos_flows.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_mark_client_packet) | [Alphabetical Index](index_all#toc_mark_client_packet)

