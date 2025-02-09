---
title: "Squid 3.1.0 configuration directive: ecap_service"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ecap_service
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ecap_service) | [Alphabetical Index](index_all#toc_ecap_service)

## Option Name:
[ecap_service](#ecap_service)
 * **Replaces:** 
 * **Requires:** --enable-ecap
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Defines a single eCAP service

	ecap_service id vectoring_point uri [option ...]

        id: ID
		an opaque identifier or name which is used to direct traffic to
		this specific service. Must be unique among all adaptation
		services in squid.conf.

	vectoring_point: reqmod_precache|reqmod_postcache|respmod_precache|respmod_postcache
		This specifies at which point of transaction processing the
		eCAP service should be activated. *_postcache vectoring points
		are not yet supported.

	uri: ecap://vendor/service_name?custom&amp;cgi=style&amp;parameters=optional
		Squid uses the eCAP service URI to match this configuration
		line with one of the dynamically loaded services. Each loaded
		eCAP service must have a unique URI. Obtain the right URI from
		the service provider.

	To activate a service, use the adaptation_access directive. To group
	services, use adaptation_service_chain and adaptation_service_set.

	Service options are separated by white space. eCAP services support
	the following name=value options:

	bypass=on|off|1|0
		If set to 'on' or '1', the eCAP service is treated as optional.
		If the service cannot be reached or malfunctions, Squid will try
		to ignore any errors and process the message as if the service
		was not enabled. No all eCAP errors can be bypassed.
		If set to 'off' or '0', the eCAP service is treated as essential
		and all eCAP errors will result in an error page returned to the
		HTTP client.

                Bypass is off by default: services are treated as essential.

	routing=on|off|1|0
		If set to 'on' or '1', the eCAP service is allowed to
		dynamically change the current message adaptation plan by
		returning a chain of services to be used next.

		Dynamic adaptation plan may cross or cover multiple supported
		vectoring points in their natural processing order.

		Routing is not allowed by default.

	connection-encryption=on|off
		Determines the eCAP service effect on the connections_encrypted
		ACL.

		Defaults to "on", which does not taint the master transaction
		w.r.t. that ACL.

		Does not affect eCAP API calls.

	Older ecap_service format without optional named parameters is
	deprecated but supported for backward compatibility.


Example:
ecap_service s1 reqmod_precache ecap://filters.R.us/leakDetector?on_error=block bypass=off
ecap_service s2 respmod_precache ecap://filters.R.us/virusFilter config=/etc/vf.cfg bypass=on



[Index](index#toc_ecap_service) | [Alphabetical Index](index_all#toc_ecap_service)

