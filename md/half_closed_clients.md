---
title: "Squid 3.1.0 configuration directive: half_closed_clients"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure half_closed_clients
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_half_closed_clients) | [Alphabetical Index](index_all#toc_half_closed_clients)

## Option Name:
[half_closed_clients](#half_closed_clients)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** half_closed_clients off


## Suggested Config:
```plaintext

```

## Details:

	Some clients may shutdown the sending side of their TCP
	connections, while leaving their receiving sides open.	Sometimes,
	Squid can not tell the difference between a half-closed and a
	fully-closed TCP connection.

	By default, Squid will immediately close client connections when
	read(2) returns "no more data to read."

	Change this option to 'on' and Squid will keep open connections
	until a read(2) or write(2) on the socket returns an error.
	This may show some benefits for reverse proxies. But if not
	it is recommended to leave OFF.



[Index](index#toc_half_closed_clients) | [Alphabetical Index](index_all#toc_half_closed_clients)

