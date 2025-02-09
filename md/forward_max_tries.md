---
title: "Squid 3.1.0 configuration directive: forward_max_tries"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure forward_max_tries
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_forward_max_tries) | [Alphabetical Index](index_all#toc_forward_max_tries)

## Option Name:
[forward_max_tries](#forward_max_tries)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** forward_max_tries 25


## Suggested Config:
```plaintext

```

## Details:

	Limits the number of attempts to forward the request.

	For the purpose of this limit, Squid counts all high-level request
	forwarding attempts, including any same-destination retries after
	certain persistent connection failures and any attempts to use a
	different peer. However, these low-level attempts are not counted:
	* connection reopening attempts (enabled using connect_retries)
	* unfinished Happy Eyeballs connection attempts (prevented by setting
	  happy_eyeballs_connect_limit to 0)

	See also: forward_timeout, connect_retries, and %request_attempts.



[Index](index#toc_forward_max_tries) | [Alphabetical Index](index_all#toc_forward_max_tries)

