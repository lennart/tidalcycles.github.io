BEGIN {
  state = "start"
  i = 0
}

/---/ {
  if(state == "start") {
    state = "prelude"
  }
  else {
    if(state == "prelude") {
      state = "markdown"
      catset = 0
    }
    else {
      close(filename)
      i++


      state = "prelude"
    }
  }
}

{
    filename = sprintf("_functions/%s/function-%02d.md", tolower(mod), i)
    if(state == "prelude") {
      print >> filename
    }
    else {
      if (state == "markdown") {
        if (!catset) {
          cat = sprintf("category: %s", tolower(mod))
          print cat >> filename
          catset = 1
        }

        print >> filename
      }
    }
}

END {
  print "Written " int(i) " function documentation files as markdown"
}
