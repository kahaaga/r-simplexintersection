library(testthat)
library(rSimplexIntersection)

julia_setup()
julia_library("SimplexIntersection")

test_check("tstools")
