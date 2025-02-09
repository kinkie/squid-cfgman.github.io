---
title: "Squid 3.1.0 configuration directive: icap_retry_limit"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_retry_limit
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_retry_limit) | [Alphabetical Index](index_all#toc_icap_retry_limit)

## Option Name:
[icap_retry_limit](#icap_retry_limit)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** No retries are allowed.


## Suggested Config:
```plaintext

```

## Details:

	Limits the number of retries allowed.

	Communication errors due to persistent connection race
	conditions are unavoidable, automatically retried, and do not
	count against this limit.

	See also: icap_retry



[Index](index#toc_icap_retry_limit) | [Alphabetical Index](index_all#toc_icap_retry_limit)

