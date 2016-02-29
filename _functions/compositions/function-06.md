---
title: wedge
category: compositions
---
```haskell
wedge :: Time -> Pattern a -> Pattern a -> Pattern a
```

<tt>wedge t p p'</tt> combines patterns <tt>p</tt> and <tt>p'</tt> by
squashing the <tt>p</tt> into the portion of each cycle given by
<tt>t</tt>, and <tt>p'</tt> into the remainer of each cycle.
