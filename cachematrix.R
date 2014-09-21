## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  ##Creates a matrix
  m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
}
get <- function() x
setmatrix <- function(solve) m<<- solve  ##Use the 'solve' function to get the inverse of a matrix
getmatrix <- function() m
list(set=set, get=get,
   setmatrix=setmatrix,  ## Sets the value of the matrix
   getmatrix=getmatrix)  ## Gets the value pf the matrix
}



## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) { 
    m <- x$getmatrix()  ## Matrix is created
    if(!is.null(m)){     ## Checks for the cached value, if it s not empty then returns cached value
      message("getting cached inverse matrix")
      return(m)
    }
    matrix <- x$get()   ##If the matrix is empty, uses 'solve' function to return the inverse matrix
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m
}
