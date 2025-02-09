---
title: "Squid 3.1.0 configuration directive: wccp2_service_info"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure wccp2_service_info
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_wccp2_service_info) | [Alphabetical Index](index_all#toc_wccp2_service_info)

## Option Name:
[wccp2_service_info](#wccp2_service_info)
 * **Replaces:** 
 * **Requires:** --enable-wccpv2
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Dynamic WCCPv2 services require further information to define the
	traffic you wish to have diverted.

	The format is:

	wccp2_service_info &lt;id&gt; protocol=&lt;protocol&gt; flags=&lt;flag&gt;,&lt;flag&gt;..
	    priority=&lt;priority&gt; ports=&lt;port&gt;,&lt;port&gt;..

	The relevant WCCPv2 flags:
	+ src_ip_hash, dst_ip_hash
	+ source_port_hash, dst_port_hash
	+ src_ip_alt_hash, dst_ip_alt_hash
	+ src_port_alt_hash, dst_port_alt_hash
	+ ports_source

	The port list can be one to eight entries.

	Example:

	wccp2_service_info 80 protocol=tcp flags=src_ip_hash,ports_source
	    priority=240 ports=80

	Note: the service id must have been defined by a previous
	'wccp2_service dynamic &lt;id&gt;' entry.



[Index](index#toc_wccp2_service_info) | [Alphabetical Index](index_all#toc_wccp2_service_info)

