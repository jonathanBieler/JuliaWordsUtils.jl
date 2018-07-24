# JuliaWordsUtils

[![Build Status](https://travis-ci.org/jonathanBieler/JuliaWordsUtils.jl.svg?branch=master)](https://travis-ci.org/jonathanBieler/JuliaWordsUtils.jl)

[![codecov.io](http://codecov.io/github/jonathanBieler/JuliaWordsUtils.jl/coverage.svg?branch=master)](http://codecov.io/github/jonathanBieler/JuliaWordsUtils.jl?branch=master)

A couple of utility functions to select Julia words from in a String.

Examples:

```julia
  get_word_backward(4,"@static") == "@sta"
  select_word_backward(3,"@static") == (1,3)
  extend_word(3, "A.B.C") == ("B", 3, 3)
  extend_word(3, "A.B.C",false) == ("A.B.C", 1, 5)
```
