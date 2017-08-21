## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
  set <- function(y){
          x <<- y
          m <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
    if(!is.null(m)) {
          message ("getting cached data")
          return(m)
    }
    data <- x$get() # Get value of matrix
    m <- solve(data, ...) # Calculate inverse
    x$setinverse(m) # Cache the result
    m # Return the inverse
}
