---
title: "Squid 3.1.0 configuration directive: relaxed_header_parser"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure relaxed_header_parser
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_relaxed_header_parser) | [Alphabetical Index](index_all#toc_relaxed_header_parser)

## Option Name:
[relaxed_header_parser](#relaxed_header_parser)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** relaxed_header_parser on


## Suggested Config:
```plaintext

```

## Details:

	In the default "on" setting Squid accepts certain forms
	of non-compliant HTTP messages where it is unambiguous
	what the sending application intended even if the message
	is not correctly formatted. The messages is then normalized
	to the correct form when forwarded by Squid.

	If set to "warn" then a warning will be emitted in cache.log
	each time such HTTP error is encountered.

	If set to "off" then such HTTP errors will cause the request
	or response to be rejected.



[Index](index#toc_relaxed_header_parser) | [Alphabetical Index](index_all#toc_relaxed_header_parser)

