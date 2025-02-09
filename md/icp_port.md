---
title: "Squid 3.1.0 configuration directive: icp_port"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icp_port
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icp_port) | [Alphabetical Index](index_all#toc_icp_port)

## Option Name:
[icp_port](#icp_port)
 * **Replaces:** udp_port
 * **Requires:** 
 * **Default Value:** ICP disabled.


## Suggested Config:
```plaintext

```

## Details:

	The port number where Squid sends and receives ICP queries to
	and from neighbor caches.  The standard UDP port for ICP is 3130.

	Example:
		icp_port 3130



[Index](index#toc_icp_port) | [Alphabetical Index](index_all#toc_icp_port)

