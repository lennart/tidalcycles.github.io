---
title: append
category: compositions
---
```haskell
append :: Pattern a -> Pattern a -> Pattern a
```

<tt>append</tt> combines two patterns <tt>Pattern</tt>s into a new
pattern, so that the events of the second pattern are appended to
those of the first pattern, within a single cycle
