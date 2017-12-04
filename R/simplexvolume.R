# Setup Julia
JuliaCall::julia_setup()

#' Load SimplexIntersection
load_simplexintersect <- function() {
  if (!JuliaCall::exists("SimplexIntersection")) {
    JuliaCall::julia_library("SimplexIntersection")
  }
}

#' Compute the intersection volume between two simplices. Wraps the
#' simplexintersection function from the SimplexIntersection.jl library
#' at https://github.com/kahaaga/SimplexIntersection.jl
#' @param S1 The first simplex.
#' @param S2 The second simplex.
#' @export
intersect_volume <- function(S1, S2) {
  JuliaCall::julia_do.call(
    func_name = "SimplexIntersection.simplexintersection",
    arg_list = list(S1, S2))[[1]]
}


#' Compute the intersection vertices between two simplices. Wraps the
#' simplexintersection function from the SimplexIntersection.jl library
#' at https://github.com/kahaaga/SimplexIntersection.jl
#' @param S1 The first simplex.
#' @param S2 The second simplex.
#' @export
intersect_vertices <- function(S1, S2) {
  JuliaCall::julia_do.call(
    func_name = "SimplexIntersection.simplexintersection",
    arg_list = list(S1, S2))[[2]]
}
