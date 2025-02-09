---
title: "Squid 3.1.0 configuration directive: detect_broken_pconn"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure detect_broken_pconn
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_detect_broken_pconn) | [Alphabetical Index](index_all#toc_detect_broken_pconn)

## Option Name:
[detect_broken_pconn](#detect_broken_pconn)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** detect_broken_pconn off


## Suggested Config:
```plaintext

```

## Details:

	Some servers have been found to incorrectly signal the use
	of HTTP/1.0 persistent connections even on replies not
	compatible, causing significant delays. This server problem
	has mostly been seen on redirects.

	By enabling this directive Squid attempts to detect such
	broken replies and automatically assume the reply is finished
	after 10 seconds timeout.



[Index](index#toc_detect_broken_pconn) | [Alphabetical Index](index_all#toc_detect_broken_pconn)

