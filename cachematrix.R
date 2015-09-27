## Put comments here that give an overall description of what your
## functions do
## The following function makeCacheMatrix creates a special "matrix", 
## which is really a list containing a function to
## 1.) set the value of the matrix
## 2.) get the value of the matrix
## 3.) set the inverse of the matrix
## 4.) get the inverse of the matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m = NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## The following function calculates the inverse of a matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)){
    message("Getting Cached Data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}
