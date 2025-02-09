---
title: "Squid 3.1.0 configuration directive: ssl_bump"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ssl_bump
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ssl_bump) | [Alphabetical Index](index_all#toc_ssl_bump)

## Option Name:
[ssl_bump](#ssl_bump)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** Become a TCP tunnel without decrypting proxied traffic.


## Suggested Config:
```plaintext

```

## Details:

	This option is consulted when a CONNECT request is received on
	an http_port (or a new connection is intercepted at an
	https_port), provided that port was configured with an ssl-bump
	flag. The subsequent data on the connection is either treated as
	HTTPS and decrypted OR tunneled at TCP level without decryption,
	depending on the first matching bumping "action".

	ssl_bump &lt;action&gt; [!]acl ...

	The following bumping actions are currently supported:

	    splice
		Become a TCP tunnel without decrypting proxied traffic.
		This is the default action.

	    bump
		When used on step SslBump1, establishes a secure connection
		with the client first, then connect to the server.
		When used on step SslBump2 or SslBump3, establishes a secure
		connection with the server and, using a mimicked server
		certificate, with the client.

	    peek
		Receive client (step SslBump1) or server (step SslBump2)
		certificate while preserving the possibility of splicing the
		connection. Peeking at the server certificate (during step 2)
		usually precludes bumping of the connection at step 3.

	    stare
		Receive client (step SslBump1) or server (step SslBump2)
		certificate while preserving the possibility of bumping the
		connection. Staring at the server certificate (during step 2)
		usually precludes splicing of the connection at step 3.

	    terminate
		Close client and server connections.

	Backward compatibility actions available at step SslBump1:

	    client-first
		Bump the connection. Establish a secure connection with the
		client first, then connect to the server. This old mode does
		not allow Squid to mimic server SSL certificate and does not
		work with intercepted SSL connections.

	    server-first
		Bump the connection. Establish a secure connection with the
		server first, then establish a secure connection with the
		client, using a mimicked server certificate. Works with both
		CONNECT requests and intercepted SSL connections, but does
		not allow to make decisions based on SSL handshake info.

	    peek-and-splice
		Decide whether to bump or splice the connection based on
		client-to-squid and server-to-squid SSL hello messages.
		XXX: Remove.

	    none
		Same as the "splice" action.

	All ssl_bump rules are evaluated at each of the supported bumping
	steps.  Rules with actions that are impossible at the current step are
	ignored. The first matching ssl_bump action wins and is applied at the
	end of the current step. If no rules match, the splice action is used.
	See the at_step ACL for a list of the supported SslBump steps.

	This clause supports both fast and slow acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

	See also: http_port ssl-bump, https_port ssl-bump, and acl at_step.


	# Example: Bump all TLS connections except those originating from
	# localhost or those going to example.com.

	acl broken_sites ssl::server_name .example.com
	ssl_bump splice localhost
	ssl_bump splice broken_sites
	ssl_bump bump all



[Index](index#toc_ssl_bump) | [Alphabetical Index](index_all#toc_ssl_bump)

