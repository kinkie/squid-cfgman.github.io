---
title: "Squid 3.1.0 configuration directive: tcp_outgoing_address"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure tcp_outgoing_address
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_tcp_outgoing_address) | [Alphabetical Index](index_all#toc_tcp_outgoing_address)

## Option Name:
[tcp_outgoing_address](#tcp_outgoing_address)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Address selection is performed by the operating system.


## Suggested Config:
```plaintext

```

## Details:

	Allows you to map requests to different outgoing IP addresses
	based on the username or source address of the user making
	the request.

	tcp_outgoing_address ipaddr [[!]aclname] ...

	For example;
		Forwarding clients with dedicated IPs for certain subnets.

	  acl normal_service_net src 10.0.0.0/24
	  acl good_service_net src 10.0.2.0/24

	  tcp_outgoing_address 2001:db8::c001 good_service_net
	  tcp_outgoing_address 10.1.0.2 good_service_net

	  tcp_outgoing_address 2001:db8::beef normal_service_net
	  tcp_outgoing_address 10.1.0.1 normal_service_net

	  tcp_outgoing_address 2001:db8::1
	  tcp_outgoing_address 10.1.0.3

	Processing proceeds in the order specified, and stops at first fully
	matching line.

	Squid will add an implicit IP version test to each line.
	Requests going to IPv4 websites will use the outgoing 10.1.0.* addresses.
	Requests going to IPv6 websites will use the outgoing 2001:db8:* addresses.


	NOTE: The use of this directive using client dependent ACLs is
	incompatible with the use of server side persistent connections. To
	ensure correct results it is best to set server_persistent_connections
	to off when using this directive in such configurations.

	NOTE: The use of this directive to set a local IP on outgoing TCP links
	is incompatible with using TPROXY to set client IP out outbound TCP links.
	When needing to contact peers use the no-tproxy cache_peer option and the
	client_dst_passthru directive re-enable normal forwarding such as this.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_tcp_outgoing_address) | [Alphabetical Index](index_all#toc_tcp_outgoing_address)

