---
title: "Squid 3.1.0 configuration directive: log_mime_hdrs"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure log_mime_hdrs
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_log_mime_hdrs) | [Alphabetical Index](index_all#toc_log_mime_hdrs)

## Option Name:
[log_mime_hdrs](#log_mime_hdrs)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** log_mime_hdrs off


## Suggested Config:
```plaintext

```

## Details:

	The Cache can record both the request and the response MIME
	headers for each HTTP transaction.  The headers are encoded
	safely and will appear as two bracketed fields at the end of
	the access log (for either the native or httpd-emulated log
	formats).  To enable this logging set log_mime_hdrs to 'on'.



[Index](index#toc_log_mime_hdrs) | [Alphabetical Index](index_all#toc_log_mime_hdrs)

