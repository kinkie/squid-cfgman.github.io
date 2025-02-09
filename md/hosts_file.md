---
title: "Squid 3.1.0 configuration directive: hosts_file"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure hosts_file
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_hosts_file) | [Alphabetical Index](index_all#toc_hosts_file)

## Option Name:
[hosts_file](#hosts_file)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** hosts_file /etc/hosts


## Suggested Config:
```plaintext

```

## Details:

	Location of the host-local IP name-address associations
	database. Most Operating Systems have such a file on different
	default locations:
	- Un*X &amp; Linux:    /etc/hosts
	- Windows NT/2000: %SystemRoot%\system32\drivers\etc\hosts
			   (%SystemRoot% value install default is c:\winnt)
	- Windows XP/2003: %SystemRoot%\system32\drivers\etc\hosts
			   (%SystemRoot% value install default is c:\windows)
	- Windows 9x/Me:   %windir%\hosts
			   (%windir% value is usually c:\windows)
	- Cygwin:	   /etc/hosts

	The file contains newline-separated definitions, in the
	form ip_address_in_dotted_form name [name ...] names are
	whitespace-separated. Lines beginning with an hash (#)
	character are comments.

	The file is checked at startup and upon configuration.
	If set to 'none', it won't be checked.
	If append_domain is used, that domain will be added to
	domain-local (i.e. not containing any dot character) host
	definitions.



[Index](index#toc_hosts_file) | [Alphabetical Index](index_all#toc_hosts_file)

