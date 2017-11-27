context("Simplex intersection")


# Tests
X1 = matrix(c(0., 0., 0., 1., 0., 0., 0. , 1., 0., 0., 0., 1.), nrow = 3, ncol = 4)
Y1 = matrix(c(0.864401, 0.12, -0.2, -0.902914, 2.21188, 1.85278, 0.369714, 0.864401, 0.532813, -0.827763, 0.0721164, 2.21188), nrow = 3, ncol = 4)

suppressWarnings(simplex_volume(X1, Y1))
