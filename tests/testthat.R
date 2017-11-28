Sys.setenv("R_TESTS" = "")

## Need to do julia_setup() before loading the testthat library.
## dyn.load libjulia after library(testthat) is problematic.
julia_setup()
library(testthat)

test_check("JuliaCall")
test_check("rSimplexIntersection")
