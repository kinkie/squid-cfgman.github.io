---
title: "Squid 3.1.0 configuration directive: icap_service_failure_limit"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_service_failure_limit
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_service_failure_limit) | [Alphabetical Index](index_all#toc_icap_service_failure_limit)

## Option Name:
[icap_service_failure_limit](#icap_service_failure_limit)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** icap_service_failure_limit 10


## Suggested Config:
```plaintext

```

## Details:

	The limit specifies the number of failures that Squid tolerates
	when establishing a new TCP connection with an ICAP service. If
	the number of failures exceeds the limit, the ICAP service is
	not used for new ICAP requests until it is time to refresh its
	OPTIONS.

	A negative value disables the limit. Without the limit, an ICAP
	service will not be considered down due to connectivity failures
	between ICAP OPTIONS requests.

	Squid forgets ICAP service failures older than the specified
	value of memory-depth. The memory fading algorithm
	is approximate because Squid does not remember individual
	errors but groups them instead, splitting the option
	value into ten time slots of equal length.

	When memory-depth is 0 and by default this option has no
	effect on service failure expiration.

	Squid always forgets failures when updating service settings
	using an ICAP OPTIONS transaction, regardless of this option
	setting.

	For example,
		# suspend service usage after 10 failures in 5 seconds:
		icap_service_failure_limit 10 in 5 seconds



[Index](index#toc_icap_service_failure_limit) | [Alphabetical Index](index_all#toc_icap_service_failure_limit)

