---
title: "Squid 3.1.0 configuration directive: proxy_protocol_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure proxy_protocol_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_proxy_protocol_access) | [Alphabetical Index](index_all#toc_proxy_protocol_access)

## Option Name:
[proxy_protocol_access](#proxy_protocol_access)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** all TCP connections to ports with require-proxy-header will be denied


## Suggested Config:
```plaintext

```

## Details:

	Determine which client proxies can be trusted to provide correct
	information regarding real client IP address using PROXY protocol.

	Requests may pass through a chain of several other proxies
	before reaching us. The original source details may by sent in:
		* HTTP message Forwarded header, or
		* HTTP message X-Forwarded-For header, or
		* PROXY protocol connection header.

	This directive is solely for validating new PROXY protocol
	connections received from a port flagged with require-proxy-header.
	It is checked only once after TCP connection setup.

	A deny match results in TCP connection closure.

	An allow match is required for Squid to permit the corresponding
	TCP connection, before Squid even looks for HTTP request headers.
	If there is an allow match, Squid starts using PROXY header information
	to determine the source address of the connection for all future ACL
	checks, logging, etc.

	SECURITY CONSIDERATIONS:

		Any host from which we accept client IP details can place
		incorrect information in the relevant header, and Squid
		will use the incorrect information as if it were the
		source address of the request.  This may enable remote
		hosts to bypass any access control restrictions that are
		based on the client's source addresses.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_proxy_protocol_access) | [Alphabetical Index](index_all#toc_proxy_protocol_access)

