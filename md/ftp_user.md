---
title: "Squid 3.1.0 configuration directive: ftp_user"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ftp_user
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ftp_user) | [Alphabetical Index](index_all#toc_ftp_user)

## Option Name:
[ftp_user](#ftp_user)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** ftp_user Squid@


## Suggested Config:
```plaintext

```

## Details:

	If you want the anonymous login password to be more informative
	(and enable the use of picky FTP servers), set this to something
	reasonable for your domain, like wwwuser@somewhere.net

	The reason why this is domainless by default is the
	request can be made on the behalf of a user in any domain,
	depending on how the cache is used.
	Some FTP server also validate the email address is valid
	(for example perl.com).



[Index](index#toc_ftp_user) | [Alphabetical Index](index_all#toc_ftp_user)

