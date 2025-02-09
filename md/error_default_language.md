---
title: "Squid 3.1.0 configuration directive: error_default_language"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure error_default_language
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_error_default_language) | [Alphabetical Index](index_all#toc_error_default_language)

## Option Name:
[error_default_language](#error_default_language)
 * **Replaces:** 
 * **Requires:** --enable-auto-locale
 * **Default Value:** Generate English language pages.


## Suggested Config:
```plaintext

```

## Details:

	Set the default language which squid will send error pages in
	if no existing translation matches the clients language
	preferences.

	If unset (default) generic English will be used.

	The squid developers are interested in making squid available in
	a wide variety of languages. If you are interested in making
	translations for any language see the squid wiki for details.
	https://wiki.squid-cache.org/Translations



[Index](index#toc_error_default_language) | [Alphabetical Index](index_all#toc_error_default_language)

