---
title: "Squid 3.1.0 configuration directive: mail_program"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure mail_program
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_mail_program) | [Alphabetical Index](index_all#toc_mail_program)

## Option Name:
[mail_program](#mail_program)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** mail_program mail


## Suggested Config:
```plaintext

```

## Details:

	Email program used to send mail if the cache dies.
	The default is "mail". The specified program must comply
	with the standard Unix mail syntax:
	  mail-program recipient &lt; mailfile

	Optional command line options can be specified.



[Index](index#toc_mail_program) | [Alphabetical Index](index_all#toc_mail_program)

