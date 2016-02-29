---
title: (<~)
category: patterntransformers
---
```haskell
(<~) :: Time -> Pattern a -> Pattern a
```

The <tt>&lt;~</tt> operator shifts (or rotates) a pattern to the left
(or counter-clockwise) by the given <tt>Time</tt> value. For example
<tt>(1%16) &lt;~ p</tt> will return a pattern with all the events
moved one 16th of a cycle to the left.
