## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#JLEE's makeCacheMatrix Explanation#

#The makeCacheMatrix allows one to create a matrix and cache its inverse fo
#This first function (1 of 2) allows one to "set" and "get" the values and also its inverse. 

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
        
  get <- function() x
  setinverse <- function(inverse) m <<- matrix
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

#JLEE's cacheSolve explanation#
#The 2nd part of the code is meant to take the inverse of the matrix
#If the matrix has already been inversed, then it simply returns it (doesn't compute it, just "returns" it and says "getting cached data")
#If the matrix has not been inversed, then it solves it!

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
        
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
              
  m
}

