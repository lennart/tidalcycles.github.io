---
title: palindrome
category: patterntransformers
---
```haskell
palindrome :: Pattern a -> Pattern a
```

<tt>palindrome p</tt> applies <tt>rev</tt> to <tt>p</tt> every other
cycle, so that the pattern alternates between forwards and backwards.
