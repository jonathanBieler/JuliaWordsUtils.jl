# JuliaWordsUtils

A couple of utility functions to select Julia words from in a String.

Examples:

```julia
  get_word_backward(4,"@static") == "@sta"
  select_word_backward(3,"@static") == (1,3)
  extend_word(3, "A.B.C") == ("B", 3, 3)
  extend_word(3, "A.B.C",false) == ("A.B.C", 1, 5)
```

[![Build Status](https://travis-ci.org/jonathanBieler/JuliaWordsUtils.jl.svg?branch=master)](https://travis-ci.org/jonathanBieler/JuliaWordsUtils.jl)

[![Coverage Status](https://coveralls.io/repos/jonathanBieler/JuliaWordsUtils.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/jonathanBieler/JuliaWordsUtils.jl?branch=master)

[![codecov.io](http://codecov.io/github/jonathanBieler/JuliaWordsUtils.jl/coverage.svg?branch=master)](http://codecov.io/github/jonathanBieler/JuliaWordsUtils.jl?branch=master)
