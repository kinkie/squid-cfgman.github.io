---
title: "Squid 3.1.0 configuration directive: icap_connect_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_connect_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_connect_timeout) | [Alphabetical Index](index_all#toc_icap_connect_timeout)

## Option Name:
[icap_connect_timeout](#icap_connect_timeout)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	This parameter specifies how long to wait for the TCP connect to
	the requested ICAP server to complete before giving up and either
	terminating the HTTP transaction or bypassing the failure.

	The default for optional services is peer_connect_timeout.
	The default for essential services is connect_timeout.
	If this option is explicitly set, its value applies to all services.



[Index](index#toc_icap_connect_timeout) | [Alphabetical Index](index_all#toc_icap_connect_timeout)

