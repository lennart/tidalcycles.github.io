/^--/{
# parses start of haddock comment
  s/^--\( |\)* *//
  # hold this line in the buffer
  h
  :loop
  # move next line
  n
  # if it is another line of comment
  /^[-]/{
    # remove comment symbols
    s/^-- *//
    # append line to hold buffer
    H
    # parse next line
    b loop
  }
  # skip over either blank linkes or data declarations
  /^ *$/{

    b skip
  }
  /^data/{
    b skip
  }
  # end of loop
  # replace function signature with YAML prelude
  s/^\([^ ]\{1,\}\) ::.*/---\
title: \1\
---\
```haskell\
&\
```\
/
# print prelude
  p
# swap buffers
  x
# replace links with anchor links
s/<a>\([^<]*\)<\/a>/<a href="#\1">\1<\/a>/g
# print documentation
  p
  :skip
}
