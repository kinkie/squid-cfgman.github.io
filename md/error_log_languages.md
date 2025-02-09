---
title: "Squid 3.1.0 configuration directive: error_log_languages"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure error_log_languages
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_error_log_languages) | [Alphabetical Index](index_all#toc_error_log_languages)

## Option Name:
[error_log_languages](#error_log_languages)
 * **Replaces:** 
 * **Requires:** --enable-auto-locale
 * **Default Value:** error_log_languages on


## Suggested Config:
```plaintext

```

## Details:

	Log to cache.log what languages users are attempting to
	auto-negotiate for translations.

	Successful negotiations are not logged. Only failures
	have meaning to indicate that Squid may need an upgrade
	of its error page translations.



[Index](index#toc_error_log_languages) | [Alphabetical Index](index_all#toc_error_log_languages)

