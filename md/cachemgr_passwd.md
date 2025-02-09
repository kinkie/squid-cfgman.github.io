---
title: "Squid 3.1.0 configuration directive: cachemgr_passwd"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cachemgr_passwd
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cachemgr_passwd) | [Alphabetical Index](index_all#toc_cachemgr_passwd)

## Option Name:
[cachemgr_passwd](#cachemgr_passwd)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** No password. Actions which require password are denied.


## Suggested Config:
```plaintext

```

## Details:

	Specify passwords for cachemgr operations.

	Usage: cachemgr_passwd password action action ...

	Some valid actions are (see cache manager menu for a full list):
		5min
		60min
		asndb
		authenticator
		cbdata
		client_list
		comm_incoming
		config *
		counters
		delay
		digest_stats
		dns
		events
		filedescriptors
		fqdncache
		histograms
		http_headers
		info
		io
		ipcache
		mem
		menu
		netdb
		objects
		offline_toggle *
		pconn
		peer_select
		reconfigure *
		redirector
		refresh
		server_list
		shutdown *
		store_digest
		storedir
		utilization
		via_headers
		vm_objects

	* Indicates actions which will not be performed without a
	  valid password, others can be performed if not listed here.

	To disable an action, set the password to "disable".
	To allow performing an action without a password, set the
	password to "none".

	Use the keyword "all" to set the same password for all actions.

Example:
 cachemgr_passwd secret shutdown
 cachemgr_passwd lesssssssecret info stats/objects
 cachemgr_passwd disable all



[Index](index#toc_cachemgr_passwd) | [Alphabetical Index](index_all#toc_cachemgr_passwd)

