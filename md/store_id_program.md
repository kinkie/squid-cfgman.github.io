---
title: "Squid 3.1.0 configuration directive: store_id_program"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure store_id_program
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_store_id_program) | [Alphabetical Index](index_all#toc_store_id_program)

## Option Name:
[store_id_program](#store_id_program)
 * **Replaces:** storeurl_rewrite_program
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Specify the location of the executable StoreID helper to use.
	Since they can perform almost any function there isn't one included.

	For each requested URL, the helper will receive one line with the format

	  [channel-ID &lt;SP&gt;] URL [&lt;SP&gt; extras]&lt;NL&gt;


	After processing the request the helper must reply using the following format:

	  [channel-ID &lt;SP&gt;] result [&lt;SP&gt; kv-pairs]

	The result code can be:

	  OK store-id="..."
		Use the StoreID supplied in 'store-id='.

	  ERR
		The default is to use HTTP request URL as the store ID.

	  BH
		An internal error occurred in the helper, preventing
		a result being identified.

	In addition to the above kv-pairs Squid also understands the following
	optional kv-pairs received from URL rewriters:
	  clt_conn_tag=TAG
		Associates a TAG with the client TCP connection.
		Please see url_rewrite_program related documentation for this
		kv-pair

	Helper programs should be prepared to receive and possibly ignore
	additional whitespace-separated tokens on each input line.

	When using the concurrency= option the protocol is changed by
	introducing a query channel tag in front of the request/response.
	The query channel tag is a number between 0 and concurrency-1.
	This value must be echoed back unchanged to Squid as the first part
	of the response relating to its request.

	NOTE: when using StoreID refresh_pattern will apply to the StoreID
	      returned from the helper and not the URL.

	WARNING: Wrong StoreID value returned by a careless helper may result
	         in the wrong cached response returned to the user.

	By default, a StoreID helper is not used.



[Index](index#toc_store_id_program) | [Alphabetical Index](index_all#toc_store_id_program)

