---
title: "Squid 3.1.0 configuration directive: htcp_port"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure htcp_port
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_htcp_port) | [Alphabetical Index](index_all#toc_htcp_port)

## Option Name:
[htcp_port](#htcp_port)
 * **Replaces:** 
 * **Requires:** --enable-htcp
 * **Default Value:** HTCP disabled.


## Suggested Config:
```plaintext

```

## Details:

	The port number where Squid sends and receives HTCP queries to
	and from neighbor caches.  To turn it on you want to set it to
	4827.

	Example:
		htcp_port 4827



[Index](index#toc_htcp_port) | [Alphabetical Index](index_all#toc_htcp_port)

