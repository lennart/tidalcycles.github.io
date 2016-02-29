---
title: slow
category: patterntransformers
---
```haskell
slow :: Time -> Pattern a -> Pattern a
```

<tt>slow</tt> does the opposite of <tt>density</tt>, i.e. <tt>slow 2
p</tt> will return a pattern that is half the speed.
