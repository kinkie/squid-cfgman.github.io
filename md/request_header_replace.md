---
title: "Squid 3.1.0 configuration directive: request_header_replace"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure request_header_replace
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_request_header_replace) | [Alphabetical Index](index_all#toc_request_header_replace)

## Option Name:
[request_header_replace](#request_header_replace)
 * **Replaces:** header_replace
 * **Requires:** --enable-http-violations
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Usage:   request_header_replace header_name message
	Example: request_header_replace User-Agent Nutscrape/1.0 (CP/M; 8-bit)

	This option allows you to change the contents of headers
	denied with request_header_access above, by replacing them
	with some fixed string.

	This only applies to request headers, not reply headers.

	By default, headers are removed if denied.



[Index](index#toc_request_header_replace) | [Alphabetical Index](index_all#toc_request_header_replace)

