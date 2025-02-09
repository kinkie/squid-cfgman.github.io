---
title: "Squid 3.1.0 configuration directive: url_rewrite_host_header"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure url_rewrite_host_header
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_url_rewrite_host_header) | [Alphabetical Index](index_all#toc_url_rewrite_host_header)

## Option Name:
[url_rewrite_host_header](#url_rewrite_host_header)
 * **Replaces:** redirect_rewrites_host_header
 * **Requires:** 
 * **Default Value:** url_rewrite_host_header on


## Suggested Config:
```plaintext

```

## Details:

	To preserve same-origin security policies in browsers and
	prevent Host: header forgery by redirectors Squid rewrites
	any Host: header in redirected requests.

	If you are running an accelerator this may not be a wanted
	effect of a redirector. This directive enables you disable
	Host: alteration in reverse-proxy traffic.

	WARNING: Entries are cached on the result of the URL rewriting
	process, so be careful if you have domain-virtual hosts.

	WARNING: Squid and other software verifies the URL and Host
	are matching, so be careful not to relay through other proxies
	or inspecting firewalls with this disabled.



[Index](index#toc_url_rewrite_host_header) | [Alphabetical Index](index_all#toc_url_rewrite_host_header)

