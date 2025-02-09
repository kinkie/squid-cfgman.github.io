---
title: "Squid 3.1.0 configuration directive: adaptation_service_chain"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_service_chain
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_service_chain) | [Alphabetical Index](index_all#toc_adaptation_service_chain)

## Option Name:
[adaptation_service_chain](#adaptation_service_chain)
 * **Replaces:** 
 * **Requires:** --enable-ecap or --enable-icap-client
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:


	Configures a list of complementary services that will be applied
	one-by-one, forming an adaptation chain or pipeline. This is useful
	when Squid must perform different adaptations on the same message.

	    adaptation_service_chain chain_name service_name1 svc_name2 ...

 	The named services are used in the chain declaration order. The first
	applicable adaptation service from the chain is used first. The next
	applicable service is applied to the successful adaptation results of
	the previous service in the chain.

	When adaptation starts, broken services are ignored as if they were
	not a part of the chain. A broken service is a down optional service.

	Request satisfaction terminates the adaptation chain because Squid
	does not currently allow declaration of RESPMOD services at the
	"reqmod_precache" vectoring point (see icap_service or ecap_service).

	The services in a chain must be attached to the same vectoring point
	(e.g., pre-cache) and use the same adaptation method (e.g., REQMOD).

	A chain may contain a mix of optional and essential services. If an
	essential adaptation fails (or the failure cannot be bypassed for
	other reasons), the master transaction fails. Otherwise, the failure
	is bypassed as if the failed adaptation service was not in the chain.

	See also: adaptation_access adaptation_service_set

Example:
adaptation_service_chain svcRequest requestLogger urlFilter leakDetector



[Index](index#toc_adaptation_service_chain) | [Alphabetical Index](index_all#toc_adaptation_service_chain)

