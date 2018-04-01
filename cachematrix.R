## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setii <- function(ii) i <<- ii
    getii <- function() i
    list(set=set, get=get, setii=setii, getii=getii)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            i <- x$getii()
	    if(!is.null(i)) {
	        message("getting cached data.")
	        return(i)
	    }
	    data <- x$get()
	    i <- solve(data, ...)
	    x$setii(i)
    i
}
