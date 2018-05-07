## Put comments here that give an overall description of what your
## functions do
## 1. Set the values of a new matrix.
## 2. Delete previous values stored in memory, only if new ones comes in play
## 3. Store values in memory
## 4. Compute the inverse of the matrix stored in memory
## Write a short comment describing this function
## Set the values of the matrix and stored them in memory
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL 
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function () x
        setsolve <- function(solve)  m <<- solve
        getsolve <- function() m
        list (set = set,
              get = get,
              setsolve = setsolve,
              getsolve = getsolve)
}
## Write a short comment describing this function
## Check if the x matrix inverse has been calculated and stored in memory before.
## If not proceed to calculate the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached inverse matrix")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
