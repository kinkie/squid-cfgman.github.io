---
title: "Squid 3.1.0 configuration directive: shutdown_lifetime"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure shutdown_lifetime
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_shutdown_lifetime) | [Alphabetical Index](index_all#toc_shutdown_lifetime)

## Option Name:
[shutdown_lifetime](#shutdown_lifetime)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** shutdown_lifetime 30 seconds


## Suggested Config:
```plaintext

```

## Details:

	When SIGTERM or SIGHUP is received, the cache is put into
	"shutdown pending" mode until all active sockets are closed.
	This value is the lifetime to set for all open descriptors
	during shutdown mode.  Any active clients after this many
	seconds will receive a 'timeout' message.



[Index](index#toc_shutdown_lifetime) | [Alphabetical Index](index_all#toc_shutdown_lifetime)

