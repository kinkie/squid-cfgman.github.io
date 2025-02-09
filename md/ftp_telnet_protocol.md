---
title: "Squid 3.1.0 configuration directive: ftp_telnet_protocol"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ftp_telnet_protocol
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ftp_telnet_protocol) | [Alphabetical Index](index_all#toc_ftp_telnet_protocol)

## Option Name:
[ftp_telnet_protocol](#ftp_telnet_protocol)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** ftp_telnet_protocol on


## Suggested Config:
```plaintext

```

## Details:

	The FTP protocol is officially defined to use the telnet protocol
	as transport channel for the control connection. However, many
	implementations are broken and does not respect this aspect of
	the FTP protocol.

	If you have trouble accessing files with ASCII code 255 in the
	path or similar problems involving this ASCII code you can
	try setting this directive to off. If that helps, report to the
	operator of the FTP server in question that their FTP server
	is broken and does not follow the FTP standard.



[Index](index#toc_ftp_telnet_protocol) | [Alphabetical Index](index_all#toc_ftp_telnet_protocol)

