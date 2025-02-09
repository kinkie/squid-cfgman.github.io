---
title: "Squid 3.1.0 configuration directive: read_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure read_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_read_timeout) | [Alphabetical Index](index_all#toc_read_timeout)

## Option Name:
[read_timeout](#read_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** read_timeout 15 minutes


## Suggested Config:
```plaintext

```

## Details:

	Applied on peer server connections.

	After each successful read(), the timeout will be extended by this
	amount.  If no data is read again after this amount of time,
	the request is aborted and logged with ERR_READ_TIMEOUT.

	The default is 15 minutes.



[Index](index#toc_read_timeout) | [Alphabetical Index](index_all#toc_read_timeout)

