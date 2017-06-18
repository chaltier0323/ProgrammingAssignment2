## Read R code from a file
source("ProgrammingAssignment2/cachematrix.R")

my_matrix <- makeCacheMatrix( matrix( c(1,2,3,4), nrow = 2, ncol = 2) )

my_matrix$get()

my_matrix$getInverse()

cacheSolve(my_matrix)