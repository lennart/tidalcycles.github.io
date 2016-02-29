---
title: every
category: conditionaltransformers
---
```haskell
every :: Int -> (Pattern a -> Pattern a) -> Pattern a -> Pattern a
```

<tt>every n f p</tt> applies the function <tt>f</tt> to <tt>p</tt>,
but only affects every <tt>n</tt> cycles.
