---
title: "Squid 3.1.0 configuration directive: workers"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure workers
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_workers) | [Alphabetical Index](index_all#toc_workers)

## Option Name:
[workers](#workers)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** SMP support disabled.


## Suggested Config:
```plaintext

```

## Details:

	Number of main Squid processes or "workers" to fork and maintain.
	0: "no daemon" mode, like running "squid -N ..."
	1: "no SMP" mode, start one main Squid process daemon (default)
	N: start N main Squid process daemons (i.e., SMP mode)

	In SMP mode, each worker does nearly all what a single Squid daemon
	does (e.g., listen on http_port and forward HTTP requests).

	Changing the number of workers requires a restart: Squid warns about but
	otherwise ignores attempts to change this setting via reconfiguration.



[Index](index#toc_workers) | [Alphabetical Index](index_all#toc_workers)

