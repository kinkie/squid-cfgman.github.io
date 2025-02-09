---
title: "Squid 3.1.0 configuration directive: ftp_epsv"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ftp_epsv
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ftp_epsv) | [Alphabetical Index](index_all#toc_ftp_epsv)

## Option Name:
[ftp_epsv](#ftp_epsv)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	FTP Protocol extensions permit the use of a special "EPSV" command.

	NATs may be able to put the connection on a "fast path" through the
	translator using EPSV, as the EPRT command will never be used
	and therefore, translation of the data portion of the segments
	will never be needed.

	EPSV is often required to interoperate with FTP servers on IPv6
	networks. On the other hand, it may break some IPv4 servers.

	By default, EPSV may try EPSV with any FTP server. To fine tune
	that decision, you may restrict EPSV to certain clients or servers
	using ACLs:

		ftp_epsv allow|deny al1 acl2 ...

	WARNING: Disabling EPSV may cause problems with external NAT and IPv6.

	Only fast ACLs are supported.
	Requires ftp_passive to be ON (default) for any effect.



[Index](index#toc_ftp_epsv) | [Alphabetical Index](index_all#toc_ftp_epsv)

