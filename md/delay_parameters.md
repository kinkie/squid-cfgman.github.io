---
title: "Squid 3.1.0 configuration directive: delay_parameters"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure delay_parameters
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_delay_parameters) | [Alphabetical Index](index_all#toc_delay_parameters)

## Option Name:
[delay_parameters](#delay_parameters)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	This defines the parameters for a delay pool.  Each delay pool has
	a number of "buckets" associated with it, as explained in the
	description of delay_class.

	For a class 1 delay pool, the syntax is:
		delay_class pool 1
		delay_parameters pool aggregate

	For a class 2 delay pool:
		delay_class pool 2
		delay_parameters pool aggregate individual

	For a class 3 delay pool:
		delay_class pool 3
		delay_parameters pool aggregate network individual

	For a class 4 delay pool:
		delay_class pool 4
		delay_parameters pool aggregate network individual user

	For a class 5 delay pool:
		delay_class pool 5
		delay_parameters pool tagrate

	The option variables are:

		pool		a pool number - ie, a number between 1 and the
				number specified in delay_pools as used in
				delay_class lines.

		aggregate	the speed limit parameters for the aggregate bucket
				(class 1, 2, 3).

		individual	the speed limit parameters for the individual
				buckets (class 2, 3).

		network		the speed limit parameters for the network buckets
				(class 3).

		user		the speed limit parameters for the user buckets
				(class 4).

		tagrate		the speed limit parameters for the tag buckets
				(class 5).

	A pair of delay parameters is written restore/maximum, where restore is
	the number of bytes (not bits - modem and network speeds are usually
	quoted in bits) per second placed into the bucket, and maximum is the
	maximum number of bytes which can be in the bucket at any time.

	There must be one delay_parameters line for each delay pool.


	For example, if delay pool number 1 is a class 2 delay pool as in the
	above example, and is being used to strictly limit each host to 64Kbit/sec
	(plus overheads), with no overall limit, the line is:

		delay_parameters 1 none 8000/8000

	Note that 8 x 8K Byte/sec -&gt; 64K bit/sec.

	Note that the word 'none' is used to represent no limit.


	And, if delay pool number 2 is a class 3 delay pool as in the above
	example, and you want to limit it to a total of 256Kbit/sec (strict limit)
	with each 8-bit network permitted 64Kbit/sec (strict limit) and each
	individual host permitted 4800bit/sec with a bucket maximum size of 64Kbits
	to permit a decent web page to be downloaded at a decent speed
	(if the network is not being limited due to overuse) but slow down
	large downloads more significantly:

		delay_parameters 2 32000/32000 8000/8000 600/8000

	Note that 8 x  32K Byte/sec -&gt;  256K bit/sec.
		  8 x   8K Byte/sec -&gt;   64K bit/sec.
		  8 x 600  Byte/sec -&gt; 4800  bit/sec.


	Finally, for a class 4 delay pool as in the example - each user will
	be limited to 128Kbits/sec no matter how many workstations they are logged into.:

		delay_parameters 4 32000/32000 8000/8000 600/64000 16000/16000


	See also delay_class and delay_access.




[Index](index#toc_delay_parameters) | [Alphabetical Index](index_all#toc_delay_parameters)

