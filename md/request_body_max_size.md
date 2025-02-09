---
title: "Squid 3.1.0 configuration directive: request_body_max_size"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure request_body_max_size
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_request_body_max_size) | [Alphabetical Index](index_all#toc_request_body_max_size)

## Option Name:
[request_body_max_size](#request_body_max_size)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** No limit.


## Suggested Config:
```plaintext

```

## Details:

	This specifies the maximum size for an HTTP request body.
	In other words, the maximum size of a PUT/POST request.
	A user who attempts to send a request with a body larger
	than this limit receives an "Invalid Request" error message.
	If you set this parameter to a zero (the default), there will
	be no limit imposed.

	See also client_request_buffer_max_size for an alternative
	limitation on client uploads which can be configured.



[Index](index#toc_request_body_max_size) | [Alphabetical Index](index_all#toc_request_body_max_size)

