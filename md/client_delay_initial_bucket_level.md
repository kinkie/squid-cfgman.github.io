---
title: "Squid 3.1.0 configuration directive: client_delay_initial_bucket_level"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure client_delay_initial_bucket_level
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_client_delay_initial_bucket_level) | [Alphabetical Index](index_all#toc_client_delay_initial_bucket_level)

## Option Name:
[client_delay_initial_bucket_level](#client_delay_initial_bucket_level)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** client_delay_initial_bucket_level 50


## Suggested Config:
```plaintext

```

## Details:

	This option determines the initial bucket size as a percentage of
	max_bucket_size from client_delay_parameters. Buckets are created
	at the time of the "first" connection from the matching IP. Idle
	buckets are periodically deleted up.

	You can specify more than 100 percent but note that such "oversized"
	buckets are not refilled until their size goes down to max_bucket_size
	from client_delay_parameters.

	Example:
		client_delay_initial_bucket_level 50



[Index](index#toc_client_delay_initial_bucket_level) | [Alphabetical Index](index_all#toc_client_delay_initial_bucket_level)

