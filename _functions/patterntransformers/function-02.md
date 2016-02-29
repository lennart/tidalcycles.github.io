---
title: density
category: patterntransformers
---
```haskell
density :: Time -> Pattern a -> Pattern a
```

<tt>density</tt> returns the given pattern with density increased by
the given <tt>Time</tt> factor. Therefore <tt>density 2 p</tt> will
return a pattern that is twice as fast, and <tt>density (1%3) p</tt>
will return one three times as slow.
