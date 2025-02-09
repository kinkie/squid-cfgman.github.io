---
title: "Squid 3.1.0 configuration directive: snmp_outgoing_address"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure snmp_outgoing_address
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_snmp_outgoing_address) | [Alphabetical Index](index_all#toc_snmp_outgoing_address)

## Option Name:
[snmp_outgoing_address](#snmp_outgoing_address)
 * **Replaces:** 
 * **Requires:** --enable-snmp
 * **Default Value:** Use snmp_incoming_address or an address selected by the operating system.


## Suggested Config:
```plaintext

```

## Details:

	Just like 'udp_outgoing_address', but for the SNMP port.

	snmp_outgoing_address	is used for SNMP packets returned to SNMP
				agents.

	If snmp_outgoing_address is not set it will use the same socket
	as snmp_incoming_address. Only change this if you want to have
	SNMP replies sent using another address than where this Squid
	listens for SNMP queries.

	NOTE, snmp_incoming_address and snmp_outgoing_address can not have
	the same value since they both use the same port.



[Index](index#toc_snmp_outgoing_address) | [Alphabetical Index](index_all#toc_snmp_outgoing_address)

