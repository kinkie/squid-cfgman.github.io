---
title: "Squid 3.1.0 configuration directive: tcp_outgoing_mark"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure tcp_outgoing_mark
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_tcp_outgoing_mark) | [Alphabetical Index](index_all#toc_tcp_outgoing_mark)

## Option Name:
[tcp_outgoing_mark](#tcp_outgoing_mark)
 * **Replaces:** 
 * **Requires:** --with-cap and Packet MARK (Linux)
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Allows you to apply a Netfilter mark value to outgoing packets
	on the server side, based on an ACL.

	tcp_outgoing_mark mark-value [!]aclname ...

	Example where normal_service_net uses the mark value 0x00
	and good_service_net uses 0x20

	acl normal_service_net src 10.0.0.0/24
	acl good_service_net src 10.0.1.0/24
	tcp_outgoing_mark 0x00 normal_service_net
	tcp_outgoing_mark 0x20 good_service_net

	Only fast ACLs are supported.



[Index](index#toc_tcp_outgoing_mark) | [Alphabetical Index](index_all#toc_tcp_outgoing_mark)

