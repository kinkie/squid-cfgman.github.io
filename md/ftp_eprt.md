---
title: "Squid 3.1.0 configuration directive: ftp_eprt"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ftp_eprt
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ftp_eprt) | [Alphabetical Index](index_all#toc_ftp_eprt)

## Option Name:
[ftp_eprt](#ftp_eprt)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** ftp_eprt on


## Suggested Config:
```plaintext

```

## Details:

	FTP Protocol extensions permit the use of a special "EPRT" command.

	This extension provides a protocol neutral alternative to the
	IPv4-only PORT command. When supported it enables active FTP data
	channels over IPv6 and efficient NAT handling.

	Turning this OFF will prevent EPRT being attempted and will skip
	straight to using PORT for IPv4 servers.

	Some devices are known to not handle this extension correctly and
	may result in crashes. Devices which support EPRT enough to fail
	cleanly will result in Squid attempting PORT anyway. This directive
	should only be disabled when EPRT results in device failures.

	WARNING: Doing so will convert Squid back to the old behavior with all
	the related problems with external NAT devices/layers and IPv4-only FTP.



[Index](index#toc_ftp_eprt) | [Alphabetical Index](index_all#toc_ftp_eprt)

