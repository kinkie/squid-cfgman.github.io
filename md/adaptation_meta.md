---
title: "Squid 3.1.0 configuration directive: adaptation_meta"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_meta
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_meta) | [Alphabetical Index](index_all#toc_adaptation_meta)

## Option Name:
[adaptation_meta](#adaptation_meta)
 * **Replaces:** 
 * **Requires:** --enable-ecap or --enable-icap-client
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	This option allows Squid administrator to add custom ICAP request
	headers or eCAP options to Squid ICAP requests or eCAP transactions.
	Use it to pass custom authentication tokens and other
	transaction-state related meta information to an ICAP/eCAP service.

	The addition of a meta header is ACL-driven:
		adaptation_meta name value [!]aclname ...

	Processing for a given header name stops after the first ACL list match.
	Thus, it is impossible to add two headers with the same name. If no ACL
	lists match for a given header name, no such header is added. For
	example:

		# do not debug transactions except for those that need debugging
		adaptation_meta X-Debug 1 needs_debugging

		# log all transactions except for those that must remain secret
		adaptation_meta X-Log 1 !keep_secret

		# mark transactions from users in the "G 1" group
		adaptation_meta X-Authenticated-Groups "G 1" authed_as_G1

	The "value" parameter may be a regular squid.conf token or a "double
	quoted string". Within the quoted string, use backslash (\) to escape
	any character, which is currently only useful for escaping backslashes
	and double quotes. For example,
	    "this string has one backslash (\\) and two \"quotes\""

	Used adaptation_meta header values may be logged via %note
	logformat code. If multiple adaptation_meta headers with the same name
	are used during master transaction lifetime, the header values are
	logged in the order they were used and duplicate values are ignored
	(only the first repeated value will be logged).



[Index](index#toc_adaptation_meta) | [Alphabetical Index](index_all#toc_adaptation_meta)

