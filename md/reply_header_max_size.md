---
title: "Squid 3.1.0 configuration directive: reply_header_max_size"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure reply_header_max_size
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_reply_header_max_size) | [Alphabetical Index](index_all#toc_reply_header_max_size)

## Option Name:
[reply_header_max_size](#reply_header_max_size)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** reply_header_max_size 64 KB


## Suggested Config:
```plaintext

```

## Details:

	This directives limits the header size of a received HTTP response
	(including status-line). Increasing this limit beyond its 64 KB default
	exposes certain old Squid code to various denial-of-service attacks. This
	limit also applies to FTP command responses.

	Squid also checks this limit when loading hit responses from disk cache.

	Squid does not check this limit when sending responses.



[Index](index#toc_reply_header_max_size) | [Alphabetical Index](index_all#toc_reply_header_max_size)

