---
title: "Squid 3.1.0 configuration directive: delay_class"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure delay_class
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_delay_class) | [Alphabetical Index](index_all#toc_delay_class)

## Option Name:
[delay_class](#delay_class)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	This defines the class of each delay pool.  There must be exactly one
	delay_class line for each delay pool.  For example, to define two
	delay pools, one of class 2 and one of class 3, the settings above
	and here would be:

	Example:
	    delay_pools 4      # 4 delay pools
	    delay_class 1 2    # pool 1 is a class 2 pool
	    delay_class 2 3    # pool 2 is a class 3 pool
	    delay_class 3 4    # pool 3 is a class 4 pool
	    delay_class 4 5    # pool 4 is a class 5 pool

	The delay pool classes are:

		class 1		Everything is limited by a single aggregate
				bucket.

		class 2 	Everything is limited by a single aggregate
				bucket as well as an "individual" bucket chosen
				from bits 25 through 32 of the IPv4 address.

		class 3		Everything is limited by a single aggregate
				bucket as well as a "network" bucket chosen
				from bits 17 through 24 of the IP address and a
				"individual" bucket chosen from bits 17 through
				32 of the IPv4 address.

		class 4		Everything in a class 3 delay pool, with an
				additional limit on a per user basis. This
				only takes effect if the username is established
				in advance - by forcing authentication in your
				http_access rules.

		class 5		Requests are grouped according their tag (see
				external_acl's tag= reply).


	Each pool also requires a delay_parameters directive to configure the pool size
	and speed limits used whenever the pool is applied to a request. Along with
	a set of delay_access directives to determine when it is used.

	NOTE: If an IP address is a.b.c.d
		-&gt; bits 25 through 32 are "d"
		-&gt; bits 17 through 24 are "c"
		-&gt; bits 17 through 32 are "c * 256 + d"

	NOTE-2: Due to the use of bitmasks in class 2,3,4 pools they only apply to
		IPv4 traffic. Class 1 and 5 pools may be used with IPv6 traffic.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

	See also delay_parameters and delay_access.



[Index](index#toc_delay_class) | [Alphabetical Index](index_all#toc_delay_class)

