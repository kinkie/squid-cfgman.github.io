---
title: "Squid 3.1.0 configuration directive: dns_packet_max"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure dns_packet_max
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_dns_packet_max) | [Alphabetical Index](index_all#toc_dns_packet_max)

## Option Name:
[dns_packet_max](#dns_packet_max)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** EDNS disabled


## Suggested Config:
```plaintext

```

## Details:

	Maximum number of bytes packet size to advertise via EDNS.
	Set to "none" to disable EDNS large packet support.

	For legacy reasons DNS UDP replies will default to 512 bytes which
	is too small for many responses. EDNS provides a means for Squid to
	negotiate receiving larger responses back immediately without having
	to failover with repeat requests. Responses larger than this limit
	will retain the old behaviour of failover to TCP DNS.

	Squid has no real fixed limit internally, but allowing packet sizes
	over 1500 bytes requires network jumbogram support and is usually not
	necessary.

	WARNING: The RFC also indicates that some older resolvers will reply
	with failure of the whole request if the extension is added. Some
	resolvers have already been identified which will reply with mangled
	EDNS response on occasion. Usually in response to many-KB jumbogram
	sizes being advertised by Squid.
	Squid will currently treat these both as an unable-to-resolve domain
	even if it would be resolvable without EDNS.



[Index](index#toc_dns_packet_max) | [Alphabetical Index](index_all#toc_dns_packet_max)

