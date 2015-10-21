## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- matrix()
  set <- function(y) {
    x <<- y
    m <<- matrix()
  }
  
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getInverse <- function() m
  list(set = set, get = get, 
       getInverse = getInverse,
       setsolve = setsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if (!is.na(m[1,1])) {
    message("matrix inverse")
    message("getting cached matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
