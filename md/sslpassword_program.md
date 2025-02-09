---
title: "Squid 3.1.0 configuration directive: sslpassword_program"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslpassword_program
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslpassword_program) | [Alphabetical Index](index_all#toc_sslpassword_program)

## Option Name:
[sslpassword_program](#sslpassword_program)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Specify a program used for entering SSL key passphrases
	when using encrypted SSL certificate keys. If not specified
	keys must either be unencrypted, or Squid started with the -N
	option to allow it to query interactively for the passphrase.

	The key file name is given as argument to the program allowing
	selection of the right password if you have multiple encrypted
	keys.



[Index](index#toc_sslpassword_program) | [Alphabetical Index](index_all#toc_sslpassword_program)

