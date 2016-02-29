---
title: slowcat
category: compositions
---
```haskell
slowcat :: [Pattern a] -> Pattern a
```

<tt>slowcat</tt> does the same as <tt>cat</tt>, but maintaining the
duration of the original patterns. It is the equivalent of
<tt>append'</tt>, but with a list of patterns.
