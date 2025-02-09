---
title: "Squid 3.1.0 configuration directive: url_rewrite_children"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure url_rewrite_children
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_url_rewrite_children) | [Alphabetical Index](index_all#toc_url_rewrite_children)

## Option Name:
[url_rewrite_children](#url_rewrite_children)
 * **Replaces:** redirect_children
 * **Requires:** 
 * **Default Value:** url_rewrite_children 20 startup=0 idle=1 concurrency=0


## Suggested Config:
```plaintext

```

## Details:

	Specifies the maximum number of redirector processes that Squid may
	spawn (numberofchildren) and several related options. Using too few of
	these helper processes (a.k.a. "helpers") creates request queues.
	Using too many helpers wastes your system resources.

	Usage: numberofchildren [option]...

	The startup= and idle= options allow some measure of skew in your
	tuning.

		startup=

	Sets a minimum of how many processes are to be spawned when Squid
	starts or reconfigures. When set to zero the first request will
	cause spawning of the first child process to handle it.

	Starting too few will cause an initial slowdown in traffic as Squid
	attempts to simultaneously spawn enough processes to cope.

		idle=

	Sets a minimum of how many processes Squid is to try and keep available
	at all times. When traffic begins to rise above what the existing
	processes can handle this many more will be spawned up to the maximum
	configured. A minimum setting of 1 is required.

		concurrency=

	The number of requests each redirector helper can handle in
	parallel. Defaults to 0 which indicates the redirector
	is a old-style single threaded redirector.

	When this directive is set to a value &gt;= 1 then the protocol
	used to communicate with the helper is modified to include
	an ID in front of the request/response. The ID from the request
	must be echoed back with the response to that request.

		queue-size=N

	Sets the maximum number of queued requests. A request is queued when
	no existing child can accept it due to concurrency limit and no new
	child can be started due to numberofchildren limit. The default
	maximum is zero if url_rewrite_bypass is enabled and
	2*numberofchildren otherwise. If the queued requests exceed queue size
	and redirector_bypass configuration option is set, then redirector is
	bypassed. Otherwise, Squid is allowed to temporarily exceed the
	configured maximum, marking the affected helper as "overloaded". If
	the helper overload lasts more than 3 minutes, the action prescribed
	by the on-persistent-overload option applies.

		on-persistent-overload=action

	Specifies Squid reaction to a new helper request arriving when the helper
	has been overloaded for more that 3 minutes already. The number of queued
	requests determines whether the helper is overloaded (see the queue-size
	option).

	Two actions are supported:

	  die	Squid worker quits. This is the default behavior.

	  ERR	Squid treats the helper request as if it was
		immediately submitted, and the helper immediately
		replied with an ERR response. This action has no effect
		on the already queued and in-progress helper requests.



[Index](index#toc_url_rewrite_children) | [Alphabetical Index](index_all#toc_url_rewrite_children)

