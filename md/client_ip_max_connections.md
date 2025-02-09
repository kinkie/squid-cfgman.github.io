---
title: "Squid 3.1.0 configuration directive: client_ip_max_connections"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure client_ip_max_connections
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_client_ip_max_connections) | [Alphabetical Index](index_all#toc_client_ip_max_connections)

## Option Name:
[client_ip_max_connections](#client_ip_max_connections)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** No limit.


## Suggested Config:
```plaintext

```

## Details:

	Set an absolute limit on the number of connections a single
	client IP can use. Any more than this and Squid will begin to drop
	new connections from the client until it closes some links.

	Note that this is a global limit. It affects all HTTP, HTCP, and FTP
	connections from the client. For finer control use the ACL access controls.

	Requires client_db to be enabled (the default).

	WARNING: This may noticeably slow down traffic received via external proxies
	or NAT devices and cause them to rebound error messages back to their clients.



[Index](index#toc_client_ip_max_connections) | [Alphabetical Index](index_all#toc_client_ip_max_connections)

