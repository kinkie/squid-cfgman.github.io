---
title: "Squid 3.1.0 configuration directive: connect_retries"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure connect_retries
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_connect_retries) | [Alphabetical Index](index_all#toc_connect_retries)

## Option Name:
[connect_retries](#connect_retries)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Do not retry failed connections.


## Suggested Config:
```plaintext

```

## Details:

	Limits the number of reopening attempts when establishing a single
	TCP connection. All these attempts must still complete before the
	applicable connection opening timeout expires.

	By default and when connect_retries is set to zero, Squid does not
	retry failed connection opening attempts.

	The (not recommended) maximum is 10 tries. An attempt to configure a
	higher value results in the value of 10 being used (with a warning).

	Squid may open connections to retry various high-level forwarding
	failures. For an outside observer, that activity may look like a
	low-level connection reopening attempt, but those high-level retries
	are governed by forward_max_tries instead.

	See also: connect_timeout, forward_timeout, icap_connect_timeout,
	and forward_max_tries.



[Index](index#toc_connect_retries) | [Alphabetical Index](index_all#toc_connect_retries)

