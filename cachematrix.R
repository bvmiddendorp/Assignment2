## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# the makeCacheMatrix is exactly the same as the example for mean, just substituting mean for inverse more or less
# as you can understand from the above, my algebra is not strong enough to have any clue about what the inverse of a matrix is.


makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## Write a short comment describing this function
# Here the inverse is created and cached. 


cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}
#Example:
#> x=(rbind(c(1,2), c(3,4)))
#> m = makeCacheMatrix(x)
#> m$get()
#       [,1] [,2]
#[1,]    1    2
#[2,]    3    4
#> cacheSolve(m)
#       [,1] [,2]
#[1,] -2.0  1.0
#[2,]  1.5 -0.5
#> cacheSolve(m)
#       [,1] [,2]
#[1,] -2.0  1.0
#[2,]  1.5 -0.5
#> 
