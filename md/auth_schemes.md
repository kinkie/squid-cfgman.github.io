---
title: "Squid 3.1.0 configuration directive: auth_schemes"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure auth_schemes
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_auth_schemes) | [Alphabetical Index](index_all#toc_auth_schemes)

## Option Name:
[auth_schemes](#auth_schemes)
 * **Replaces:** 
 * **Requires:** --enable-auth
 * **Default Value:** use all auth_param schemes in their configuration order


## Suggested Config:
```plaintext

```

## Details:

	Use this directive to customize authentication schemes presence and
	order in Squid's Unauthorized and Authentication Required responses.

		auth_schemes scheme1,scheme2,... [!]aclname ...

	where schemeN is the name of one of the authentication schemes
	configured using auth_param directives. At least one scheme name is
	required. Multiple scheme names are separated by commas. Either
	avoid whitespace or quote the entire schemes list.

	A special "ALL" scheme name expands to all auth_param-configured
	schemes in their configuration order. This directive cannot be used
	to configure Squid to offer no authentication schemes at all.

	The first matching auth_schemes rule determines the schemes order
	for the current Authentication Required transaction. Note that the
	future response is not yet available during auth_schemes evaluation.

	If this directive is not used or none of its rules match, then Squid
	responds with all configured authentication schemes in the order of
	auth_param directives in the configuration file.

	This directive does not determine when authentication is used or
	how each authentication scheme authenticates clients.

	The following example sends basic and negotiate authentication
	schemes, in that order, when requesting authentication of HTTP
	requests matching the isIE ACL (not shown) while sending all
	auth_param schemes in their configuration order to other clients:

		auth_schemes basic,negotiate isIE
		auth_schemes ALL all # explicit default

	This directive supports fast ACLs only.

	See also: auth_param.



[Index](index#toc_auth_schemes) | [Alphabetical Index](index_all#toc_auth_schemes)

