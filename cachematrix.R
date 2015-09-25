## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will create the helper functions to create a cached inverse matrix for a given matrix parameter
## assumes matrix is invertable
makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(Y) {
    x <<- y
    inverseMatrix <<- NULL
  }
  get <- function() x
  setInverseMatrix <- function(solve) inverseMatrix <<- solve
  getInverseMatrix <- function() inverseMatrix
  list ( set = set, get=get, setInverseMatrix = setInverseMatrix, getInverseMatrix=getInverseMatrix)
}


## Write a short comment describing this function
## This function will check to see if the makeCacheMatrix parameter already has set the inverseMatrix
## if it has it will return the calculated matrix otherwise it will create it, store it, and return it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inverseMatrix <- x$getInverseMatrix()
     if(!is.null(inverseMatrix))
     {
        message ("getting cached data")
        return(inverseMatrix)
     }
     matrix <- x$get()
     inverseMatrix <- solve(matrix,...)
     x$setInverseMatrix(inverseMatrix)
     inverseMatrix
 }
