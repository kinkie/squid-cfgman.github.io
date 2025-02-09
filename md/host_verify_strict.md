---
title: "Squid 3.1.0 configuration directive: host_verify_strict"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure host_verify_strict
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_host_verify_strict) | [Alphabetical Index](index_all#toc_host_verify_strict)

## Option Name:
[host_verify_strict](#host_verify_strict)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** host_verify_strict off


## Suggested Config:
```plaintext

```

## Details:

	Regardless of this option setting, when dealing with intercepted
	traffic, Squid always verifies that the destination IP address matches
	the Host header domain or IP (called 'authority form URL').

	This enforcement is performed to satisfy a MUST-level requirement in
	RFC 2616 section 14.23: "The Host field value MUST represent the naming
	authority of the origin server or gateway given by the original URL".

	When set to ON:
		Squid always responds with an HTTP 409 (Conflict) error
		page and logs a security warning if there is no match.

		Squid verifies that the destination IP address matches
		the Host header for forward-proxy and reverse-proxy traffic
		as well. For those traffic types, Squid also enables the
		following checks, comparing the corresponding Host header
		and Request-URI components:

		 * The host names (domain or IP) must be identical,
		   but valueless or missing Host header disables all checks.
		   For the two host names to match, both must be either IP
		   or FQDN.

		 * Port numbers must be identical, but if a port is missing
		   the scheme-default port is assumed.


	When set to OFF (the default):
		Squid allows suspicious requests to continue but logs a
		security warning and blocks caching of the response.

		 * Forward-proxy traffic is not checked at all.

		 * Reverse-proxy traffic is not checked at all.

		 * Intercepted traffic which passes verification is handled
		   according to client_dst_passthru.

		 * Intercepted requests which fail verification are sent
		   to the client original destination instead of DIRECT.
		   This overrides 'client_dst_passthru off'.

		For now suspicious intercepted CONNECT requests are always
		responded to with an HTTP 409 (Conflict) error page.


	SECURITY NOTE:

	As described in CVE-2009-0801 when the Host: header alone is used
	to determine the destination of a request it becomes trivial for
	malicious scripts on remote websites to bypass browser same-origin
	security policy and sandboxing protections.

	The cause of this is that such applets are allowed to perform their
	own HTTP stack, in which case the same-origin policy of the browser
	sandbox only verifies that the applet tries to contact the same IP
	as from where it was loaded at the IP level. The Host: header may
	be different from the connected IP and approved origin.




[Index](index#toc_host_verify_strict) | [Alphabetical Index](index_all#toc_host_verify_strict)

