---
title: "Squid 3.1.0 configuration directive: email_err_data"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure email_err_data
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_email_err_data) | [Alphabetical Index](index_all#toc_email_err_data)

## Option Name:
[email_err_data](#email_err_data)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** email_err_data on


## Suggested Config:
```plaintext

```

## Details:

	If enabled, information about the occurred error will be
	included in the mailto links of the ERR pages (if %W is set)
	so that the email body contains the data.
	Syntax is &lt;A HREF="mailto:%w%W"&gt;%w&lt;/A&gt;



[Index](index#toc_email_err_data) | [Alphabetical Index](index_all#toc_email_err_data)

