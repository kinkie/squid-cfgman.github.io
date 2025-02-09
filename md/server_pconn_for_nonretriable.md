---
title: "Squid 3.1.0 configuration directive: server_pconn_for_nonretriable"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure server_pconn_for_nonretriable
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_server_pconn_for_nonretriable) | [Alphabetical Index](index_all#toc_server_pconn_for_nonretriable)

## Option Name:
[server_pconn_for_nonretriable](#server_pconn_for_nonretriable)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Open new connections for forwarding requests Squid cannot retry safely.


## Suggested Config:
```plaintext

```

## Details:

	This option provides fine-grained control over persistent connection
	reuse when forwarding HTTP requests that Squid cannot retry. It is useful
	in environments where opening new connections is very expensive
	(e.g., all connections are secured with TLS with complex client and server
	certificate validation) and race conditions associated with persistent
	connections are very rare and/or only cause minor problems.

	HTTP prohibits retrying unsafe and non-idempotent requests (e.g., POST).
	Squid limitations also prohibit retrying all requests with bodies (e.g., PUT).
	By default, when forwarding such "risky" requests, Squid opens a new
	connection to the server or cache_peer, even if there is an idle persistent
	connection available. When Squid is configured to risk sending a non-retriable
	request on a previously used persistent connection, and the server closes
	the connection before seeing that risky request, the user gets an error response
	from Squid. In most cases, that error response will be HTTP 502 (Bad Gateway)
	with ERR_ZERO_SIZE_OBJECT or ERR_WRITE_ERROR (peer connection reset) error detail.

	If an allow rule matches, Squid reuses an available idle persistent connection
	(if any) for the request that Squid cannot retry. If a deny rule matches, then
	Squid opens a new connection for the request that Squid cannot retry.

	This option does not affect requests that Squid can retry. They will reuse idle
	persistent connections (if any).

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

	Example:
		acl SpeedIsWorthTheRisk method POST
		server_pconn_for_nonretriable allow SpeedIsWorthTheRisk



[Index](index#toc_server_pconn_for_nonretriable) | [Alphabetical Index](index_all#toc_server_pconn_for_nonretriable)

