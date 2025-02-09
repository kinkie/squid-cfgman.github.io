---
title: "Squid 3.1.0 configuration directive: icap_preview_enable"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_preview_enable
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_preview_enable) | [Alphabetical Index](index_all#toc_icap_preview_enable)

## Option Name:
[icap_preview_enable](#icap_preview_enable)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** icap_preview_enable on


## Suggested Config:
```plaintext

```

## Details:

	The ICAP Preview feature allows the ICAP server to handle the
	HTTP message by looking only at the beginning of the message body
	or even without receiving the body at all. In some environments,
	previews greatly speedup ICAP processing.

	During an ICAP OPTIONS transaction, the server may tell	Squid what
	HTTP messages should be previewed and how big the preview should be.
	Squid will not use Preview if the server did not request one.

	To disable ICAP Preview for all ICAP services, regardless of
	individual ICAP server OPTIONS responses, set this option to "off".
Example:
icap_preview_enable off



[Index](index#toc_icap_preview_enable) | [Alphabetical Index](index_all#toc_icap_preview_enable)

