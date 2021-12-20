##  creating a pair of functions that cache the inverse of a matrix.

## This first function "makeCacheMatrix" creates a special "matrix" object 
##that can cache its inverse


makeCacheMatrix <- function(x = numeric()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This second function "cacheSolve" computes the inverse of the special "matrix" returned
##by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
