---
title: "Squid 3.1.0 configuration directive: sslcrtvalidator_children"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslcrtvalidator_children
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslcrtvalidator_children) | [Alphabetical Index](index_all#toc_sslcrtvalidator_children)

## Option Name:
[sslcrtvalidator_children](#sslcrtvalidator_children)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** sslcrtvalidator_children 32 startup=5 idle=1 concurrency=1


## Suggested Config:
```plaintext

```

## Details:

	Specifies the maximum number of certificate validation processes that
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

		concurrency=

	The number of requests each certificate validator helper can handle in
	parallel. A value of 0 indicates the certificate validator does not
	support concurrency. Defaults to 1.

	When this directive is set to a value &gt;= 1 then the protocol
	used to communicate with the helper is modified to include
	a request ID in front of the request/response. The request
	ID from the request must be echoed back with the response
	to that request.

		queue-size=N

	Sets the maximum number of queued requests. A request is queued when
	no existing child can accept it due to concurrency limit and no new
	child can be started due to numberofchildren limit. If the queued
	requests exceed queue size for more than 3 minutes squid aborts its
	operation. The default value is set to 2*numberofchildren.

	You must have at least one ssl_crt_validator process.



[Index](index#toc_sslcrtvalidator_children) | [Alphabetical Index](index_all#toc_sslcrtvalidator_children)

