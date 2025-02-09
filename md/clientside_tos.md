---
title: "Squid 3.1.0 configuration directive: clientside_tos"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure clientside_tos
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_clientside_tos) | [Alphabetical Index](index_all#toc_clientside_tos)

## Option Name:
[clientside_tos](#clientside_tos)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Allows you to select a TOS/DSCP value for packets being transmitted
	on the client-side, based on an ACL.

	clientside_tos ds-field [!]aclname ...

	Example where normal_service_net uses the TOS value 0x00
	and good_service_net uses 0x20

	acl normal_service_net src 10.0.0.0/24
	acl good_service_net src 10.0.1.0/24
	clientside_tos 0x00 normal_service_net
	clientside_tos 0x20 good_service_net

	Note: This feature is incompatible with qos_flows. Any TOS values set here
	will be overwritten by TOS values in qos_flows.

	The TOS/DSCP byte must be exactly that - a octet value  0 - 255, or
	"default" to use whatever default your host has.
	Note that only multiples of 4 are usable as the two rightmost bits have
	been redefined for use by ECN (RFC 3168 section 23.1).
	The squid parser will enforce this by masking away the ECN bits.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_clientside_tos) | [Alphabetical Index](index_all#toc_clientside_tos)

