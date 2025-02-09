---
title: "Squid 3.1.0 configuration directive: force_request_body_continuation"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure force_request_body_continuation
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_force_request_body_continuation) | [Alphabetical Index](index_all#toc_force_request_body_continuation)

## Option Name:
[force_request_body_continuation](#force_request_body_continuation)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Deny, unless rules exist in squid.conf.


## Suggested Config:
```plaintext

```

## Details:

	This option controls how Squid handles data upload requests from HTTP
	and FTP agents that require a "Please Continue" control message response
	to actually send the request body to Squid. It is mostly useful in
	adaptation environments.

	When Squid receives an HTTP request with an "Expect: 100-continue"
	header or an FTP upload command (e.g., STOR), Squid normally sends the
	request headers or FTP command information to an adaptation service (or
	peer) and waits for a response. Most adaptation services (and some
	broken peers) may not respond to Squid at that stage because they may
	decide to wait for the HTTP request body or FTP data transfer. However,
	that request body or data transfer may never come because Squid has not
	responded with the HTTP 100 or FTP 150 (Please Continue) control message
	to the request sender yet!

	An allow match tells Squid to respond with the HTTP 100 or FTP 150
	(Please Continue) control message on its own, before forwarding the
	request to an adaptation service or peer. Such a response usually forces
	the request sender to proceed with sending the body. A deny match tells
	Squid to delay that control response until the origin server confirms
	that the request body is needed. Delaying is the default behavior.



[Index](index#toc_force_request_body_continuation) | [Alphabetical Index](index_all#toc_force_request_body_continuation)

