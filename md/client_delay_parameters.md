---
title: "Squid 3.1.0 configuration directive: client_delay_parameters"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure client_delay_parameters
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_client_delay_parameters) | [Alphabetical Index](index_all#toc_client_delay_parameters)

## Option Name:
[client_delay_parameters](#client_delay_parameters)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:


	This option configures client-side bandwidth limits using the
	following format:

	    client_delay_parameters pool speed_limit max_bucket_size

	pool is an integer ID used for client_delay_access matching.

	speed_limit is bytes added to the bucket per second.

	max_bucket_size is the maximum size of a bucket, enforced after any
	speed_limit additions.

	Please see the delay_parameters option for more information and
	examples.

	Example:
		client_delay_parameters 1 1024 2048
		client_delay_parameters 2 51200 16384

	See also client_delay_access.




[Index](index#toc_client_delay_parameters) | [Alphabetical Index](index_all#toc_client_delay_parameters)

