---
title: "Squid 3.1.0 configuration directive: url_rewrite_program"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure url_rewrite_program
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_url_rewrite_program) | [Alphabetical Index](index_all#toc_url_rewrite_program)

## Option Name:
[url_rewrite_program](#url_rewrite_program)
 * **Replaces:** redirect_program
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	The name and command line parameters of an admin-provided executable
	for redirecting clients or adjusting/replacing client request URLs.

	This helper is consulted after the received request is cleared by
	http_access and adapted using eICAP/ICAP services (if any). If the
	helper does not redirect the client, Squid checks adapted_http_access
	and may consult the cache or forward the request to the next hop.


	For each request, the helper gets one line in the following format:

	  [channel-ID &lt;SP&gt;] request-URL [&lt;SP&gt; extras] &lt;NL&gt;

	Use url_rewrite_extras to configure what Squid sends as 'extras'.


	The helper must reply to each query using a single line:

	  [channel-ID &lt;SP&gt;] result [&lt;SP&gt; kv-pairs] &lt;NL&gt;

	The result section must match exactly one of the following outcomes:

	  OK [status=30N] url="..."

		Redirect the client to a URL supplied in the 'url' parameter.
		Optional 'status' specifies the status code to send to the
		client in Squid's HTTP redirect response. It must be one of
		the standard HTTP redirect status codes: 301, 302, 303, 307,
		or 308. When no specific status is requested, Squid uses 302.

	  OK rewrite-url="..."

		Replace the current request URL with the one supplied in the
		'rewrite-url' parameter. Squid fetches the resource specified
		by the new URL and forwards the received response (or its
		cached copy) to the client.

		WARNING: Avoid rewriting URLs! When possible, redirect the
		client using an "OK url=..." helper response instead.
		Rewriting URLs may create inconsistent requests and/or break
		synchronization between internal client and origin server
		states, especially when URLs or other message parts contain
		snippets of that state. For example, Squid does not adjust
		Location headers and embedded URLs after the helper rewrites
		the request URL.

	  OK
		Keep the client request intact.

	  ERR
		Keep the client request intact.

	  BH [message="..."]
		A helper problem that should be reported to the Squid admin
		via a level-1 cache.log message. The 'message' parameter is
		reserved for specifying the log message.

	In addition to the kv-pairs mentioned above, Squid also understands
	the following optional kv-pairs in URL rewriter responses:

	  clt_conn_tag=TAG
		Associates a TAG with the client TCP connection.

		The clt_conn_tag=TAG pair is treated as a regular transaction
		annotation for the current request and also annotates future
		requests on the same client connection. A helper may update
		the TAG during subsequent requests by returning a new kv-pair.


	Helper messages contain the channel-ID part if and only if the
	url_rewrite_children directive specifies positive concurrency. As a
	channel-ID value, Squid sends a number between 0 and concurrency-1.
	The helper must echo back the received channel-ID in its response.

	By default, Squid does not use a URL rewriter.



[Index](index#toc_url_rewrite_program) | [Alphabetical Index](index_all#toc_url_rewrite_program)

