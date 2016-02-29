---
title: foldEvery
category: conditionaltransformers
---
```haskell
foldEvery :: [Int] -> (Pattern a -> Pattern a) -> Pattern a -> Pattern a
```

<tt>foldEvery ns f p</tt> applies the function <tt>f</tt> to
<tt>p</tt>, and is applied for each cycle in <tt>ns</tt>.
