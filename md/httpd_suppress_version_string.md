---
title: "Squid 3.1.0 configuration directive: httpd_suppress_version_string"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure httpd_suppress_version_string
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_httpd_suppress_version_string) | [Alphabetical Index](index_all#toc_httpd_suppress_version_string)

## Option Name:
[httpd_suppress_version_string](#httpd_suppress_version_string)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** httpd_suppress_version_string off


## Suggested Config:
```plaintext

```

## Details:

	Do not send Squid version string in HTTP metadata and generated content
	such as HTML error pages. Squid version string is still present in certain
	SNMP responses, HTTP(S) Server response header field,
        various console output, and cache.log.



[Index](index#toc_httpd_suppress_version_string) | [Alphabetical Index](index_all#toc_httpd_suppress_version_string)

