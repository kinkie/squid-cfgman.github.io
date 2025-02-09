---
title: "Squid 3.1.0 configuration directive: ftp_client_idle_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ftp_client_idle_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ftp_client_idle_timeout) | [Alphabetical Index](index_all#toc_ftp_client_idle_timeout)

## Option Name:
[ftp_client_idle_timeout](#ftp_client_idle_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** ftp_client_idle_timeout 30 minutes


## Suggested Config:
```plaintext

```

## Details:

	How long to wait for an FTP request on a connection to Squid ftp_port.
	Many FTP clients do not deal with idle connection closures well,
	necessitating a longer default timeout than client_idle_pconn_timeout
	used for incoming HTTP requests.



[Index](index#toc_ftp_client_idle_timeout) | [Alphabetical Index](index_all#toc_ftp_client_idle_timeout)

