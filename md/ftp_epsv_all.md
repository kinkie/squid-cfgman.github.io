---
title: "Squid 3.1.0 configuration directive: ftp_epsv_all"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ftp_epsv_all
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ftp_epsv_all) | [Alphabetical Index](index_all#toc_ftp_epsv_all)

## Option Name:
[ftp_epsv_all](#ftp_epsv_all)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** ftp_epsv_all off


## Suggested Config:
```plaintext

```

## Details:

	FTP Protocol extensions permit the use of a special "EPSV ALL" command.

	NATs may be able to put the connection on a "fast path" through the
	translator, as the EPRT command will never be used and therefore,
	translation of the data portion of the segments will never be needed.

	When a client only expects to do two-way FTP transfers this may be
	useful.
	If squid finds that it must do a three-way FTP transfer after issuing
	an EPSV ALL command, the FTP session will fail.

	If you have any doubts about this option do not use it.
	Squid will nicely attempt all other connection methods.

	Requires ftp_passive to be ON (default) for any effect.



[Index](index#toc_ftp_epsv_all) | [Alphabetical Index](index_all#toc_ftp_epsv_all)

