---
title: "Squid 3.1.0 configuration directive: adaptation_masterx_shared_names"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_masterx_shared_names
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_masterx_shared_names) | [Alphabetical Index](index_all#toc_adaptation_masterx_shared_names)

## Option Name:
[adaptation_masterx_shared_names](#adaptation_masterx_shared_names)
 * **Replaces:** 
 * **Requires:** --enable-ecap or --enable-icap-client
 * **Default Value:** none


## Suggested Config:
```plaintext
# share authentication information among ICAP services

```

## Details:

	For each master transaction (i.e., the HTTP request and response
	sequence, including all related ICAP and eCAP exchanges), Squid
	maintains a table of metadata. The table entries are (name, value)
	pairs shared among eCAP and ICAP exchanges. The table is destroyed
	with the master transaction.

	This option specifies the table entry names that Squid must accept
	from and forward to the adaptation transactions.

	An ICAP REQMOD or RESPMOD transaction may set an entry in the
	shared table by returning an ICAP header field with a name
	specified in adaptation_masterx_shared_names.

	An eCAP REQMOD or RESPMOD transaction may set an entry in the
	shared table by implementing the libecap::visitEachOption() API
	to provide an option with a name specified in
	adaptation_masterx_shared_names.

	Squid will store and forward the set entry to subsequent adaptation
	transactions within the same master transaction scope.

	Only one shared entry name is supported at this time.

Example:
adaptation_masterx_shared_names X-Subscriber-ID



[Index](index#toc_adaptation_masterx_shared_names) | [Alphabetical Index](index_all#toc_adaptation_masterx_shared_names)

