---
title: stack
category: compositions
---
```haskell
stack :: [Pattern a] -> Pattern a
```

<tt>stack</tt> combines a list of <tt>Pattern</tt>s into a new
pattern, so that their events are combined over time.
