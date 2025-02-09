---
title: "Squid 3.1.0 configuration directive: snmp_port"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure snmp_port
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_snmp_port) | [Alphabetical Index](index_all#toc_snmp_port)

## Option Name:
[snmp_port](#snmp_port)
 * **Replaces:** 
 * **Requires:** --enable-snmp
 * **Default Value:** SNMP disabled.


## Suggested Config:
```plaintext

```

## Details:

	The port number where Squid listens for SNMP requests. To enable
	SNMP support set this to a suitable port number. Port number
	3401 is often used for the Squid SNMP agent. By default it's
	set to "0" (disabled)

	Example:
		snmp_port 3401



[Index](index#toc_snmp_port) | [Alphabetical Index](index_all#toc_snmp_port)

