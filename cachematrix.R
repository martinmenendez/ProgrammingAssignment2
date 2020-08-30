## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL  ##initializing inverse as NULL
  set<- function(y){
    x<<- y
    inv<<- NULL  
  }  
  get<- function() x ##Function to get matrix x
  setinverse<- function(inverse) inv<<- inverse
  getinverse<- function() inv  ##Function to obtain inverse of the matrix x
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}

## Write a short comment describing this function

cacheSolve <- function(x, ...) { ##obtain cache data
        inv<- x$getinverse()
  if(!is.null(inv)){ ##checking wether inverse is NULL
    message("getting cached data")
    return(inv) ##rerturns inverse value
  }
  mat<- x$get()
  inv<- solve(mat, ...) ##calculates inverse of the matrix x
  x$setinverse(inv)
  inv

        ## Return a matrix that is the inverse of 'x'
}
