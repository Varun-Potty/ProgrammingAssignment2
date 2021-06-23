## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        xinv <- NULL

        get <- function()
                x

        set <- function(y){
                x <<- y
                xinv <<- NULL
        }

        getinv <- function()
                xinv

        setinv <- function(inv)
                xinv <<- inv

        list( set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        xinv <- x$getinv()

        if(!is.null(xinv)){
                print("Retriving cache data...")
                return(xinv)
        }

        data <- x$get()
        inv <- solve(x)
        x$setinv(inv)
        inv
}
