---
title: "Squid 3.1.0 configuration directive: reply_header_replace"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure reply_header_replace
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_reply_header_replace) | [Alphabetical Index](index_all#toc_reply_header_replace)

## Option Name:
[reply_header_replace](#reply_header_replace)
 * **Replaces:** 
 * **Requires:** --enable-http-violations
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

        Usage:   reply_header_replace header_name message
        Example: reply_header_replace Server Foo/1.0

        This option allows you to change the contents of headers
        denied with reply_header_access above, by replacing them
        with some fixed string.

        This only applies to reply headers, not request headers.

        By default, headers are removed if denied.



[Index](index#toc_reply_header_replace) | [Alphabetical Index](index_all#toc_reply_header_replace)

