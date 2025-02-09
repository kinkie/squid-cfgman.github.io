---
title: "Squid 3.1.0 configuration directive: error_directory"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure error_directory
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_error_directory) | [Alphabetical Index](index_all#toc_error_directory)

## Option Name:
[error_directory](#error_directory)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Send error pages in the clients preferred language


## Suggested Config:
```plaintext

```

## Details:

	If you wish to create your own versions of the default
	error files to customize them to suit your company copy
	the error/template files to another directory and point
	this tag at them.

	WARNING: This option will disable multi-language support
	         on error pages if used.

	The squid developers are interested in making squid available in
	a wide variety of languages. If you are making translations for a
	language that Squid does not currently provide please consider
	contributing your translation back to the project.
	https://wiki.squid-cache.org/Translations

	The squid developers working on translations are happy to supply drop-in
	translated error files in exchange for any new language contributions.



[Index](index#toc_error_directory) | [Alphabetical Index](index_all#toc_error_directory)

