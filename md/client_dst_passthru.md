---
title: "Squid 3.1.0 configuration directive: client_dst_passthru"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure client_dst_passthru
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_client_dst_passthru) | [Alphabetical Index](index_all#toc_client_dst_passthru)

## Option Name:
[client_dst_passthru](#client_dst_passthru)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** client_dst_passthru on


## Suggested Config:
```plaintext

```

## Details:

	With NAT or TPROXY intercepted traffic Squid may pass the request
	directly to the original client destination IP or seek a faster
	source using the HTTP Host header.

	Using Host to locate alternative servers can provide faster
	connectivity with a range of failure recovery options.
	But can also lead to connectivity trouble when the client and
	server are attempting stateful interactions unaware of the proxy.

	This option (on by default) prevents alternative DNS entries being
	located to send intercepted traffic DIRECT to an origin server.
	The clients original destination IP and port will be used instead.

	Regardless of this option setting, when dealing with intercepted
	traffic Squid will verify the Host: header and any traffic which
	fails Host verification will be treated as if this option were ON.

	see host_verify_strict for details on the verification process.



[Index](index#toc_client_dst_passthru) | [Alphabetical Index](index_all#toc_client_dst_passthru)

