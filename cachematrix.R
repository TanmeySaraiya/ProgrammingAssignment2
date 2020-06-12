## Put comments here that give an overall description of what your
## functions do

## Sets the vector which stores the cahce of the inverse of matrix
## A list of 4 function is created 
## 1.set - set value of the matrix
## 2.get - get value of the matrix
## 3.setinv - sets the inverse of the matrix
## 4.getinv -gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function(){
    x
  }
  setinv <- function(vlue_inv)  inv<<- vlue_inv
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Checks the created the list of functions for the inverse of the matrix by getinv funcrion
## If getinv returns NULL value then calculates the inverse of the matrix
## Then stores the calculated mean in the matrix for future reference


cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  vlue_inv <- solve(data, ...)
  x$setinv(vlue_inv)
  inv
}



