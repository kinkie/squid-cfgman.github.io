---
title: "Squid 3.1.0 configuration directive: sslcrtd_children"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslcrtd_children
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslcrtd_children) | [Alphabetical Index](index_all#toc_sslcrtd_children)

## Option Name:
[sslcrtd_children](#sslcrtd_children)
 * **Replaces:** 
 * **Requires:** --enable-ssl-crtd
 * **Default Value:** sslcrtd_children 32 startup=5 idle=1


## Suggested Config:
```plaintext

```

## Details:

	Specifies the maximum number of certificate generation processes that
	Squid may spawn (numberofchildren) and several related options. Using
	too few of these helper processes (a.k.a. "helpers") creates request
	queues. Using too many helpers wastes your system resources. Squid
	does not support spawning more than 32 helpers.

	Usage: numberofchildren [option]...

	The startup= and idle= options allow some measure of skew in your
	tuning.

		startup=N

	Sets the minimum number of processes to spawn when Squid
	starts or reconfigures. When set to zero the first request will
	cause spawning of the first child process to handle it.

	Starting too few children temporary slows Squid under load while it
	tries to spawn enough additional processes to cope with traffic.

		idle=N

	Sets a minimum of how many processes Squid is to try and keep available
	at all times. When traffic begins to rise above what the existing
	processes can handle this many more will be spawned up to the maximum
	configured. A minimum setting of 1 is required.

		queue-size=N

	Sets the maximum number of queued requests. A request is queued when
	no existing child is idle and no new child can be started due to
	numberofchildren limit. If the queued requests exceed queue size for
	more than 3 minutes squid aborts its operation. The default value is
	set to 2*numberofchildren.

	You must have at least one ssl_crtd process.



[Index](index#toc_sslcrtd_children) | [Alphabetical Index](index_all#toc_sslcrtd_children)

