---
title: "Squid 3.1.0 configuration directive: ftp_sanitycheck"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ftp_sanitycheck
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ftp_sanitycheck) | [Alphabetical Index](index_all#toc_ftp_sanitycheck)

## Option Name:
[ftp_sanitycheck](#ftp_sanitycheck)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** ftp_sanitycheck on


## Suggested Config:
```plaintext

```

## Details:

	For security and data integrity reasons Squid by default performs
	sanity checks of the addresses of FTP data connections ensure the
	data connection is to the requested server. If you need to allow
	FTP connections to servers using another IP address for the data
	connection turn this off.



[Index](index#toc_ftp_sanitycheck) | [Alphabetical Index](index_all#toc_ftp_sanitycheck)

