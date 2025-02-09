---
title: "Squid 3.1.0 configuration directive: icap_io_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_io_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_io_timeout) | [Alphabetical Index](index_all#toc_icap_io_timeout)

## Option Name:
[icap_io_timeout](#icap_io_timeout)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** Use read_timeout.


## Suggested Config:
```plaintext

```

## Details:

	This parameter specifies how long to wait for an I/O activity on
	an established, active ICAP connection before giving up and
	either terminating the HTTP transaction or bypassing the
	failure.



[Index](index#toc_icap_io_timeout) | [Alphabetical Index](index_all#toc_icap_io_timeout)

