---
title: "Squid 3.1.0 configuration directive: write_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure write_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_write_timeout) | [Alphabetical Index](index_all#toc_write_timeout)

## Option Name:
[write_timeout](#write_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** write_timeout 15 minutes


## Suggested Config:
```plaintext

```

## Details:

	This timeout is tracked for all connections that have data
	available for writing and are waiting for the socket to become
	ready. After each successful write, the timeout is extended by
	the configured amount. If Squid has data to write but the
	connection is not ready for the configured duration, the
	transaction associated with the connection is terminated. The
	default is 15 minutes.



[Index](index#toc_write_timeout) | [Alphabetical Index](index_all#toc_write_timeout)

