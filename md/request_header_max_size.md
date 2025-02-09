---
title: "Squid 3.1.0 configuration directive: request_header_max_size"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure request_header_max_size
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_request_header_max_size) | [Alphabetical Index](index_all#toc_request_header_max_size)

## Option Name:
[request_header_max_size](#request_header_max_size)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** request_header_max_size 64 KB


## Suggested Config:
```plaintext

```

## Details:

	This directives limits the header size of a received HTTP request
	(including request-line). Increasing this limit beyond its 64 KB default
	exposes certain old Squid code to various denial-of-service attacks. This
	limit also applies to received FTP commands.

	This limit has no direct affect on Squid memory consumption.

	Squid does not check this limit when sending requests.



[Index](index#toc_request_header_max_size) | [Alphabetical Index](index_all#toc_request_header_max_size)

