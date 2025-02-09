---
title: "Squid 3.1.0 configuration directive: dns_nameservers"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure dns_nameservers
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_dns_nameservers) | [Alphabetical Index](index_all#toc_dns_nameservers)

## Option Name:
[dns_nameservers](#dns_nameservers)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Use operating system definitions


## Suggested Config:
```plaintext

```

## Details:

	Use this if you want to specify a list of DNS name servers
	(IP addresses) to use instead of those given in your
	/etc/resolv.conf file.

	On Windows platforms, if no value is specified here or in
	the /etc/resolv.conf file, the list of DNS name servers are
	taken from the Windows registry, both static and dynamic DHCP
	configurations are supported.

	Example: dns_nameservers 10.0.0.1 192.172.0.4



[Index](index#toc_dns_nameservers) | [Alphabetical Index](index_all#toc_dns_nameservers)

