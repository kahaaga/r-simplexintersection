# Exact simplex intersection in N dimensions
R package for computing the intersection between simplices in N dimensions. Computes both the intersecting volume and the points in which the simplices intersect.
The heavy lifting in the package is done by the [SimplexIntersection.jl](https://github.com/kahaaga/SimplexIntersection.jl) library for the Julia programming language, which `rSimplexIntersection` calls under the hood.

## Installation 
To install the package, run the following command in your R console:

```
devtools::install_github("khaaga/r-simplexintersection")
```
