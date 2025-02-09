---
title: "Squid 3.1.0 configuration directive: retry_on_error"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure retry_on_error
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_retry_on_error) | [Alphabetical Index](index_all#toc_retry_on_error)

## Option Name:
[retry_on_error](#retry_on_error)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** retry_on_error off


## Suggested Config:
```plaintext

```

## Details:

	If set to ON Squid will automatically retry requests when
	receiving an error response with status 403 (Forbidden),
	500 (Internal Error), 501 or 503 (Service not available).
	Status 502 and 504 (Gateway errors) are always retried.

	This is mainly useful if you are in a complex cache hierarchy to
	work around access control errors.

	NOTE: This retry will attempt to find another working destination.
	Which is different from the server which just failed.



[Index](index#toc_retry_on_error) | [Alphabetical Index](index_all#toc_retry_on_error)

