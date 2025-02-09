---
title: "Squid 3.1.0 configuration directive: mark_client_connection"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure mark_client_connection
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_mark_client_connection) | [Alphabetical Index](index_all#toc_mark_client_connection)

## Option Name:
[mark_client_connection](#mark_client_connection)
 * **Replaces:** 
 * **Requires:** --with-cap and Packet MARK (Linux)
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Allows you to apply a Netfilter CONNMARK value to a connection
	on the client-side, based on an ACL.

	mark_client_connection mark-value[/mask] [!]aclname ...

	The mark-value and mask are unsigned integers (hex, octal, or decimal).
	The mask may be used to preserve marking previously set by other agents
	(e.g., iptables).

	A matching rule replaces the CONNMARK value. If a mask is also
	specified, then the masked bits of the original value are zeroed, and
	the configured mark-value is ORed with that adjusted value.
	For example, applying a mark-value 0xAB/0xF to 0x5F CONNMARK, results
	in a 0xFB marking (rather than a 0xAB or 0x5B).

	This directive semantics is similar to iptables --set-mark rather than
	--set-xmark functionality.

	The directive does not interfere with qos_flows (which uses packet MARKs,
	not CONNMARKs).

	Example where squid marks intercepted FTP connections:

	acl proto_ftp proto FTP
	mark_client_connection 0x200/0xff00 proto_ftp

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_mark_client_connection) | [Alphabetical Index](index_all#toc_mark_client_connection)

