---
title: "Squid 3.1.0 configuration directive: adaptation_service_set"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_service_set
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_service_set) | [Alphabetical Index](index_all#toc_adaptation_service_set)

## Option Name:
[adaptation_service_set](#adaptation_service_set)
 * **Replaces:** 
 * **Requires:** --enable-ecap or --enable-icap-client
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:


	Configures an ordered set of similar, redundant services. This is
	useful when hot standby or backup adaptation servers are available.

	    adaptation_service_set set_name service_name1 service_name2 ...

 	The named services are used in the set declaration order. The first
	applicable adaptation service from the set is used first. The next
	applicable service is tried if and only if the transaction with the
	previous service fails and the message waiting to be adapted is still
	intact.

	When adaptation starts, broken services are ignored as if they were
	not a part of the set. A broken service is a down optional service.

	The services in a set must be attached to the same vectoring point
	(e.g., pre-cache) and use the same adaptation method (e.g., REQMOD).

	If all services in a set are optional then adaptation failures are
	bypassable. If all services in the set are essential, then a
	transaction failure with one service may still be retried using
	another service from the set, but when all services fail, the master
	transaction fails as well.

	A set may contain a mix of optional and essential services, but that
	is likely to lead to surprising results because broken services become
	ignored (see above), making previously bypassable failures fatal.
	Technically, it is the bypassability of the last failed service that
	matters.

	See also: adaptation_access adaptation_service_chain

Example:
adaptation_service_set svcBlocker urlFilterPrimary urlFilterBackup
adaptation service_set svcLogger loggerLocal loggerRemote



[Index](index#toc_adaptation_service_set) | [Alphabetical Index](index_all#toc_adaptation_service_set)

