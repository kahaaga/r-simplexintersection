#' Setup Julia.
#'
#' Initialise Julia and load relevant packages.
#'
#' @export
setup_julia <- function() {
  JuliaCall::julia_setup()
  JuliaCall::julia_library("SimplexIntersection")
}
