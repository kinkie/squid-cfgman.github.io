---
title: "Squid 3.1.0 configuration directive: tcp_outgoing_tos"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure tcp_outgoing_tos
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_tcp_outgoing_tos) | [Alphabetical Index](index_all#toc_tcp_outgoing_tos)

## Option Name:
[tcp_outgoing_tos](#tcp_outgoing_tos)
 * **Replaces:** tcp_outgoing_ds, tcp_outgoing_dscp
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Allows you to select a TOS/Diffserv value for packets outgoing
	on the server side, based on an ACL.

	tcp_outgoing_tos ds-field [!]aclname ...

	Example where normal_service_net uses the TOS value 0x00
	and good_service_net uses 0x20

	acl normal_service_net src 10.0.0.0/24
	acl good_service_net src 10.0.1.0/24
	tcp_outgoing_tos 0x00 normal_service_net
	tcp_outgoing_tos 0x20 good_service_net

	TOS/DSCP values really only have local significance - so you should
	know what you're specifying. For more information, see RFC2474,
	RFC2475, and RFC3260.

	The TOS/DSCP byte must be exactly that - a octet value  0 - 255, or
	"default" to use whatever default your host has.
	Note that only multiples of 4 are usable as the two rightmost bits have
	been redefined for use by ECN (RFC 3168 section 23.1).
	The squid parser will enforce this by masking away the ECN bits.

	Processing proceeds in the order specified, and stops at first fully
	matching line.

	Only fast ACLs are supported.



[Index](index#toc_tcp_outgoing_tos) | [Alphabetical Index](index_all#toc_tcp_outgoing_tos)

