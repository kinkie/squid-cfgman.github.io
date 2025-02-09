---
title: "Squid 3.1.0 configuration directive: quick_abort_min"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure quick_abort_min
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_quick_abort_min) | [Alphabetical Index](index_all#toc_quick_abort_min)

## Option Name:
[quick_abort_min](#quick_abort_min)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** quick_abort_min 16 KB


## Suggested Config:
```plaintext

```

## Details:

	Continuing to download a cachable response after its request is aborted is
	going to waste resources if the received response is not requested again.
	On the other hand, aborting an in-progress download may effectively waste
	(already spent) resources if the received cachable response is requested
	again. Such waste is especially noticeable when, for example, impatient
	users repeatedly request and then abort slow downloads. To balance these
	trade-offs when a request is aborted during response download, Squid may
	check quick_abort_* directives to decide whether to finish the retrieval:

	If the transfer has less than 'quick_abort_min' KB remaining,
	it will finish the retrieval.

	If the transfer has more than 'quick_abort_max' KB remaining,
	it will abort the retrieval.

	If more than 'quick_abort_pct' of the transfer has completed,
	it will finish the retrieval.

	If you do not want any retrieval to continue after the client
	has aborted, set both 'quick_abort_min' and 'quick_abort_max'
	to '0 KB'.

	If you want retrievals to always continue if they are being
	cached set 'quick_abort_min' to '-1 KB'.

	Many other conditions affect Squid decision to abort or continue download.
	For example, Squid continues to download responses that feed other
	requests but aborts responses with unknown body length.



[Index](index#toc_quick_abort_min) | [Alphabetical Index](index_all#toc_quick_abort_min)

