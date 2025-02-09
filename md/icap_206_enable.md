---
title: "Squid 3.1.0 configuration directive: icap_206_enable"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_206_enable
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_206_enable) | [Alphabetical Index](index_all#toc_icap_206_enable)

## Option Name:
[icap_206_enable](#icap_206_enable)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** icap_206_enable on


## Suggested Config:
```plaintext

```

## Details:

	206 (Partial Content) responses is an ICAP extension that allows the
	ICAP agents to optionally combine adapted and original HTTP message
	content. The decision to combine is postponed until the end of the
	ICAP response. Squid supports Partial Content extension by default.

	Activation of the Partial Content extension is negotiated with each
	ICAP service during OPTIONS exchange. Most ICAP servers should handle
	negotiation correctly even if they do not support the extension, but
	some might fail. To disable Partial Content support for all ICAP
	services and to avoid any negotiation, set this option to "off".

	Example:
	    icap_206_enable off



[Index](index#toc_icap_206_enable) | [Alphabetical Index](index_all#toc_icap_206_enable)

