---
title: "Squid 3.1.0 configuration directive: follow_x_forwarded_for"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure follow_x_forwarded_for
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_follow_x_forwarded_for) | [Alphabetical Index](index_all#toc_follow_x_forwarded_for)

## Option Name:
[follow_x_forwarded_for](#follow_x_forwarded_for)
 * **Replaces:** 
 * **Requires:** --enable-follow-x-forwarded-for
 * **Default Value:** X-Forwarded-For header will be ignored.


## Suggested Config:
```plaintext

```

## Details:

	Determine which client proxies can be trusted to provide correct
	information regarding real client IP address.

	Requests may pass through a chain of several other proxies
	before reaching us. The original source details may by sent in:
		* HTTP message Forwarded header, or
		* HTTP message X-Forwarded-For header, or
		* PROXY protocol connection header.

	PROXY protocol connections are controlled by the proxy_protocol_access
	directive which is checked before this.

	If a request reaches us from a source that is allowed by this
	directive, then we trust the information it provides regarding
	the IP of the client it received from (if any).

	For the purpose of ACLs used in this directive the src ACL type always
	matches the address we are testing and srcdomain matches its rDNS.

	On each HTTP request Squid checks for X-Forwarded-For header fields.
	If found the header values are iterated in reverse order and an allow
	match is required for Squid to continue on to the next value.
	The verification ends when a value receives a deny match, cannot be
	tested, or there are no more values to test.
	NOTE: Squid does not yet follow the Forwarded HTTP header.

	The end result of this process is an IP address that we will
	refer to as the indirect client address.  This address may
	be treated as the client address for access control, ICAP, delay
	pools and logging, depending on the acl_uses_indirect_client,
	icap_uses_indirect_client, delay_pool_uses_indirect_client,
	log_uses_indirect_client and tproxy_uses_indirect_client options.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

	SECURITY CONSIDERATIONS:

		Any host from which we accept client IP details can place
		incorrect information in the relevant header, and Squid
		will use the incorrect information as if it were the
		source address of the request.  This may enable remote
		hosts to bypass any access control restrictions that are
		based on the client's source addresses.

	For example:

		acl localhost src 127.0.0.1
		acl my_other_proxy srcdomain .proxy.example.com
		follow_x_forwarded_for allow localhost
		follow_x_forwarded_for allow my_other_proxy



[Index](index#toc_follow_x_forwarded_for) | [Alphabetical Index](index_all#toc_follow_x_forwarded_for)

