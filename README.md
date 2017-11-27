# Exact simplex intersection in N dimensions
R package for computing the intersection between simplices in N dimensions. Computes both the intersecting volume and the points in which the simplices intersect.
The heavy lifting in the package is done by the [SimplexIntersection.jl](https://github.com/kahaaga/SimplexIntersection.jl) library for the Julia programming language, which `rSimplexIntersection` calls under the hood.

## Installation 
To install the package, run the following command in your R console:

```
devtools::install_github("khaaga/r-simplexintersection")
```

## Using the package

### Example of volume calculation
```r
# Define two simplices that have some overlapping volume
simplex1 <- t(matrix(c(0.934702, 0.297735, 0.670881, 
                            0.85225, 0.670881, 0.626323, 
                            0.521743, 0.942819, 0.521743, 
                            0.385638, 0.202466, 0.613331), nrow = 4, ncol = 3))
simplex2 <- t(matrix(c(0.670881, 0.85225, 0.297735, 
                       0.202466, 0.521743, 0.942819, 
                       0.626323, 0.898955, 0.202466, 
                       0.613331, 0.385638, 0.85225), nrow = 4, ncol = 3))

# Compute the intersecting volume
vol = rSimplexIntersection::intersect_volume(S1 = simplex1, S2 = simplex2)
```
