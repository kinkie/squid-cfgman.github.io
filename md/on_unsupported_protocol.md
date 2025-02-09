---
title: "Squid 3.1.0 configuration directive: on_unsupported_protocol"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure on_unsupported_protocol
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_on_unsupported_protocol) | [Alphabetical Index](index_all#toc_on_unsupported_protocol)

## Option Name:
[on_unsupported_protocol](#on_unsupported_protocol)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Respond with an error message to unidentifiable traffic


## Suggested Config:
```plaintext

```

## Details:

	Determines Squid behavior when encountering strange requests at the
	beginning of an accepted TCP connection or the beginning of a bumped
	CONNECT tunnel. Controlling Squid reaction to unexpected traffic is
	especially useful in interception environments where Squid is likely
	to see connections for unsupported protocols that Squid should either
	terminate or tunnel at TCP level.

		on_unsupported_protocol &lt;action&gt; [!]acl ...

	The first matching action wins. Only fast ACLs are supported.

	Supported actions are:

	tunnel: Establish a TCP connection with the intended server and
		blindly shovel TCP packets between the client and server.

	respond: Respond with an error message, using the transfer protocol
		for the Squid port that received the request (e.g., HTTP
		for connections intercepted at the http_port). This is the
		default.

	Squid expects the following traffic patterns:

	  http_port: a plain HTTP request
	  https_port: SSL/TLS handshake followed by an [encrypted] HTTP request
	  ftp_port: a plain FTP command (no on_unsupported_protocol support yet!)
	  CONNECT tunnel on http_port: same as https_port
	  CONNECT tunnel on https_port: same as https_port

	Currently, this directive has effect on intercepted connections and
	bumped tunnels only. Other cases are not supported because Squid
	cannot know the intended destination of other traffic.

	For example:
	  # define what Squid errors indicate receiving non-HTTP traffic:
	  acl foreignProtocol squid_error ERR_PROTOCOL_UNKNOWN ERR_TOO_BIG
	  # define what Squid errors indicate receiving nothing:
	  acl serverTalksFirstProtocol squid_error ERR_REQUEST_START_TIMEOUT
	  # tunnel everything that does not look like HTTP:
          on_unsupported_protocol tunnel foreignProtocol
	  # tunnel if we think the client waits for the server to talk first:
	  on_unsupported_protocol tunnel serverTalksFirstProtocol
	  # in all other error cases, just send an HTTP "error page" response:
	  on_unsupported_protocol respond all

	See also: squid_error ACL



[Index](index#toc_on_unsupported_protocol) | [Alphabetical Index](index_all#toc_on_unsupported_protocol)

