---
title: "Squid 3.1.0 configuration directive: response_delay_pool"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure response_delay_pool
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_response_delay_pool) | [Alphabetical Index](index_all#toc_response_delay_pool)

## Option Name:
[response_delay_pool](#response_delay_pool)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	This option configures client response bandwidth limits using the
	following format:

	response_delay_pool name [option=value] ...

	name	the response delay pool name

	available options:

		individual-restore	The speed limit of an individual
					bucket(bytes/s). To be used in conjunction
					with 'individual-maximum'.

		individual-maximum	The maximum number of bytes which can
					be placed into the individual bucket. To be used
					in conjunction with 'individual-restore'.

		aggregate-restore	The speed limit for the aggregate
					bucket(bytes/s). To be used in conjunction with
					'aggregate-maximum'.

		aggregate-maximum	The maximum number of bytes which can
	   				be placed into the aggregate bucket. To be used
					in conjunction with 'aggregate-restore'.

		initial-bucket-level	The initial bucket size as a percentage
					of individual-maximum.

	Individual and(or) aggregate bucket options may not be specified,
   	meaning no individual and(or) aggregate speed limitation.
	See also response_delay_pool_access and delay_parameters for
	terminology details.



[Index](index#toc_response_delay_pool) | [Alphabetical Index](index_all#toc_response_delay_pool)

