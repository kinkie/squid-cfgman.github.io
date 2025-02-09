---
title: "Squid 3.1.0 configuration directive: qos_flows"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure qos_flows
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_qos_flows) | [Alphabetical Index](index_all#toc_qos_flows)

## Option Name:
[qos_flows](#qos_flows)
 * **Replaces:** 
 * **Requires:** --enable-zph-qos
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Allows you to select a TOS/DSCP value to mark outgoing
	connections to the client, based on where the reply was sourced.
	For platforms using netfilter, allows you to set a netfilter mark
	value instead of, or in addition to, a TOS value.

	By default this functionality is disabled. To enable it with the default
	settings simply use "qos_flows mark" or "qos_flows tos". Default
	settings will result in the netfilter mark or TOS value being copied
	from the upstream connection to the client. Note that it is the connection
	CONNMARK value not the packet MARK value that is copied.

	It is not currently possible to copy the mark or TOS value from the
	client to the upstream connection request.

	TOS values really only have local significance - so you should
	know what you're specifying. For more information, see RFC2474,
	RFC2475, and RFC3260.

	The TOS/DSCP byte must be exactly that - a octet value  0 - 255.
	Note that only multiples of 4 are usable as the two rightmost bits have
	been redefined for use by ECN (RFC 3168 section 23.1).
	The squid parser will enforce this by masking away the ECN bits.

	Mark values can be any unsigned 32-bit integer value.

	This setting is configured by setting the following values:

	tos|mark                Whether to set TOS or netfilter mark values

	local-hit=0xFF		Value to mark local cache hits.

	sibling-hit=0xFF	Value to mark hits from sibling peers.

	parent-hit=0xFF		Value to mark hits from parent peers.

	miss=0xFF[/mask]	Value to mark cache misses. Takes precedence
				over the preserve-miss feature (see below), unless
				mask is specified, in which case only the bits
				specified in the mask are written.

	The TOS variant of the following features are only possible on Linux
	and require your kernel to be patched with the TOS preserving ZPH
	patch, available from http://zph.bratcheda.org
	No patch is needed to preserve the netfilter mark, which will work
	with all variants of netfilter.

	disable-preserve-miss
		This option disables the preservation of the TOS or netfilter
		mark. By default, the existing TOS or netfilter mark value of
		the response coming from the remote server will be retained
		and masked with miss-mark.
		NOTE: in the case of a netfilter mark, the mark must be set on
		the connection (using the CONNMARK target) not on the packet
		(MARK target).

	miss-mask=0xFF
		Allows you to mask certain bits in the TOS or mark value
		received from the remote server, before copying the value to
		the TOS sent towards clients.
		Default for tos: 0xFF (TOS from server is not changed).
		Default for mark: 0xFFFFFFFF (mark from server is not changed).

	All of these features require the --enable-zph-qos compilation flag
	(enabled by default). Netfilter marking also requires the
	libnetfilter_conntrack libraries (--with-netfilter-conntrack) and
	libcap 2.09+ (--with-libcap).




[Index](index#toc_qos_flows) | [Alphabetical Index](index_all#toc_qos_flows)

