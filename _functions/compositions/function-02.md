---
title: cat
category: compositions
---
```haskell
cat :: [Pattern a] -> Pattern a
```

<tt>cat</tt> returns a new pattern which interlaces the cycles of the
given patterns, within a single cycle. It's the equivalent of
<tt>append</tt>, but with a list of patterns.
