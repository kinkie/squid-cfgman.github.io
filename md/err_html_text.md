---
title: "Squid 3.1.0 configuration directive: err_html_text"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure err_html_text
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_err_html_text) | [Alphabetical Index](index_all#toc_err_html_text)

## Option Name:
[err_html_text](#err_html_text)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	HTML text to include in error messages.  Make this a "mailto"
	URL to your admin address, or maybe just a link to your
	organizations Web page.

	To include this in your error messages, you must rewrite
	the error template files (found in the "errors" directory).
	Wherever you want the 'err_html_text' line to appear,
	insert a %L tag in the error template file.



[Index](index#toc_err_html_text) | [Alphabetical Index](index_all#toc_err_html_text)

