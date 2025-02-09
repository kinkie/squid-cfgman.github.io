---
title: "Squid 3.1.0 configuration directive: snmp_incoming_address"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure snmp_incoming_address
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_snmp_incoming_address) | [Alphabetical Index](index_all#toc_snmp_incoming_address)

## Option Name:
[snmp_incoming_address](#snmp_incoming_address)
 * **Replaces:** 
 * **Requires:** --enable-snmp
 * **Default Value:** Accept SNMP packets from all machine interfaces.


## Suggested Config:
```plaintext

```

## Details:

	Just like 'udp_incoming_address', but for the SNMP port.

	snmp_incoming_address	is used for the SNMP socket receiving
				messages from SNMP agents.

	The default snmp_incoming_address is to listen on all
	available network interfaces.



[Index](index#toc_snmp_incoming_address) | [Alphabetical Index](index_all#toc_snmp_incoming_address)

