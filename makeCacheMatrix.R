## Put comments here that give an overall description of what your
## functions do: This function try to find the inversion of the matrix 
## through two steps

## Write a short comment describing this function : To make derive and set the vector


makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function: To get the inverse matrix from the vector

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)) {
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
