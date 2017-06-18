## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  ## This function creates a special "matrix" object that can cache its inverse.
  
  inverse_Of_X = solve(x)
  mat <- NULL
  set <- function(y) {
    x <<- y
    mat <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse_Of_X) mat <<- inverse_Of_X
  getInverse <- function() mat
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  ## This function computes the inverse of the special "matrix" returned
  ## by makeCacheMatrix above. If the inverse has already been calculated
  ## (and the matrix has not changed), then cacheSolve should retrieve the
  ## inverse from the cache.
  
  ## Return a matrix that is the inverse of 'x'
  
  inverse_Of_X <- x$getInverse()
  if(!is.null(inverse_Of_X)) {
    message("getting cached data ...")
    return(inverse_Of_X)
  }
  data <- x$get()
  inverse_Of_X <- solve(data)
  x$setInverse(inverse_Of_X)
  return(inverse_Of_X)
  
}
