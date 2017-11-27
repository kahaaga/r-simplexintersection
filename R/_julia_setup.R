#' Setup Julia.
#'
#' Initialise Julia and load relevant packages.
#'
#' @export
setup_julia <- function() {
  # Set up Julia
  JuliaCall::julia_setup()

  # Check if SimplexIntersection Julia package exists.
  pkg_exists <- JuliaCall::julia_exists("SimplexIntersection")

  # If it doesn't, install it.
  if (!pkg_exists) {
    julia$call("Pkg.clone", "git@github.com:kahaaga/SimplexIntersection.jl.git")
  }

  # Load the SimplexIntersection package
  JuliaCall::julia_library("SimplexIntersection")
}
