---
title: "Squid 3.1.0 configuration directive: hopeless_kid_revival_delay"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure hopeless_kid_revival_delay
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_hopeless_kid_revival_delay) | [Alphabetical Index](index_all#toc_hopeless_kid_revival_delay)

## Option Name:
[hopeless_kid_revival_delay](#hopeless_kid_revival_delay)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** hopeless_kid_revival_delay 1 hour


## Suggested Config:
```plaintext

```

## Details:

	Normally, when a kid process dies, Squid immediately restarts the
	kid. A kid experiencing frequent deaths is marked as "hopeless" for
	the duration specified by this directive. Hopeless kids are not
	automatically restarted.

	Currently, zero values are not supported because they result in
	misconfigured SMP Squid instances running forever, endlessly
	restarting each dying kid. To effectively disable hopeless kids
	revival, set the delay to a huge value (e.g., 1 year).

	Reconfiguration also clears all hopeless kids designations, allowing
	for manual revival of hopeless kids.



[Index](index#toc_hopeless_kid_revival_delay) | [Alphabetical Index](index_all#toc_hopeless_kid_revival_delay)

