---
title: "Squid 3.1.0 configuration directive: url_rewrite_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure url_rewrite_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_url_rewrite_timeout) | [Alphabetical Index](index_all#toc_url_rewrite_timeout)

## Option Name:
[url_rewrite_timeout](#url_rewrite_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Squid waits for the helper response forever


## Suggested Config:
```plaintext

```

## Details:

	Squid times active requests to redirector. The timeout value and Squid
	reaction to a timed out request are configurable using the following
	format:

	url_rewrite_timeout timeout time-units on_timeout=&lt;action&gt; [response=&lt;quoted-response&gt;]

	supported timeout actions:
		fail	Squid return a ERR_GATEWAY_FAILURE error page

		bypass	Do not re-write the URL

		retry	Send the lookup to the helper again

		use_configured_response
			Use the &lt;quoted-response&gt; as helper response



[Index](index#toc_url_rewrite_timeout) | [Alphabetical Index](index_all#toc_url_rewrite_timeout)

