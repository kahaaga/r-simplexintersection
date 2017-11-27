#' Compute the intersection volume between two simplices. Wraps the
#' simplexintersection function from the SimplexIntersection.jl library
#' at https://github.com/kahaaga/SimplexIntersection.jl
simplex_volume <- function(S1, S2) {
  julia_do.call(func_name = "SimplexIntersection.simplexintersection",
                arg_list = list(S1, S2))[[1]]
}
