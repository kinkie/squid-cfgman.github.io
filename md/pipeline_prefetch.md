---
title: "Squid 3.1.0 configuration directive: pipeline_prefetch"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure pipeline_prefetch
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_pipeline_prefetch) | [Alphabetical Index](index_all#toc_pipeline_prefetch)

## Option Name:
[pipeline_prefetch](#pipeline_prefetch)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Do not pre-parse pipelined requests.


## Suggested Config:
```plaintext

```

## Details:

	HTTP clients may send a pipeline of 1+N requests to Squid using a
	single connection, without waiting for Squid to respond to the first
	of those requests. This option limits the number of concurrent
	requests Squid will try to handle in parallel. If set to N, Squid
	will try to receive and process up to 1+N requests on the same
	connection concurrently.

	Defaults to 0 (off) for bandwidth management and access logging
	reasons.

	NOTE: pipelining requires persistent connections to clients.

	WARNING: pipelining breaks NTLM and Negotiate/Kerberos authentication.



[Index](index#toc_pipeline_prefetch) | [Alphabetical Index](index_all#toc_pipeline_prefetch)

