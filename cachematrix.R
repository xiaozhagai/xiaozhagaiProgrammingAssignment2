## creates a special "matrix" object that can cache its inverse

## makeCacheMatrix create the special martrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(i) i <<- i
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## cacheSolve check if you have already calculated the inverse of the matrix and show its inverse

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return()
        }
        data = x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        
        return(i)
}
