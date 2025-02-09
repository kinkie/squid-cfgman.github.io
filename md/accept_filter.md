---
title: "Squid 3.1.0 configuration directive: accept_filter"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure accept_filter
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_accept_filter) | [Alphabetical Index](index_all#toc_accept_filter)

## Option Name:
[accept_filter](#accept_filter)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext
# FreeBSD
# Linux

```

## Details:

	FreeBSD:

	The name of an accept(2) filter to install on Squid's
	listen socket(s).  This feature is perhaps specific to
	FreeBSD and requires support in the kernel.

	The 'httpready' filter delays delivering new connections
	to Squid until a full HTTP request has been received.
	See the accf_http(9) man page for details.

	The 'dataready' filter delays delivering new connections
	to Squid until there is some data to process.
	See the accf_dataready(9) man page for details.

	Linux:

	The 'data' filter delays delivering of new connections
	to Squid until there is some data to process by TCP_ACCEPT_DEFER.
	You may optionally specify a number of seconds to wait by
	'data=N' where N is the number of seconds. Defaults to 30
	if not specified.  See the tcp(7) man page for details.
EXAMPLE:
accept_filter httpready
accept_filter data



[Index](index#toc_accept_filter) | [Alphabetical Index](index_all#toc_accept_filter)

