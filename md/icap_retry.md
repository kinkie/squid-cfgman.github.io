---
title: "Squid 3.1.0 configuration directive: icap_retry"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_retry
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_retry) | [Alphabetical Index](index_all#toc_icap_retry)

## Option Name:
[icap_retry](#icap_retry)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** deny all


## Suggested Config:
```plaintext

```

## Details:

	This ACL determines which retriable ICAP transactions are
	retried. Transactions that received a complete ICAP response
	and did not have to consume or produce HTTP bodies to receive
	that response are usually retriable.

	icap_retry allow|deny [!]aclname ...

	Squid automatically retries some ICAP I/O timeouts and errors
	due to persistent connection race conditions.

	See also: icap_retry_limit



[Index](index#toc_icap_retry) | [Alphabetical Index](index_all#toc_icap_retry)

