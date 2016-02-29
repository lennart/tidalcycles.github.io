---
title: randcat
category: compositions
---
```haskell
randcat :: [Pattern a] -> Pattern a
```

<tt>randcat ps</tt>: does a <tt>slowcat</tt> on the list of patterns
<tt>ps</tt> but randomises the order in which they are played.
