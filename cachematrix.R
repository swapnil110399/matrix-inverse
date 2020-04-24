## two functions which r usedd to calculate the inverse of a matrix
## create a amtrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  I<- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) I <<- inverse
  getinverse <- function() I
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## calculate the inverse of the matrixx from the above fn if the matrix inverse is calculate then get the value from it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  I <- x$getinverse()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
   I<- inv(data)
  x$setinverse(I)
  I
}
