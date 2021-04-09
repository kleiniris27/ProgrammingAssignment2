# the purpose of this code is that it caches and computes the values of the matrix whether is is invertible matrix or simply inverse


makeCacheMatrix <- function(mtx = matrix()) {
    inverse <- NULL
    set <- function(x) {
        mtx <<- x;
        inverse <<- NULL;
    }
    get <- function() return(mtx);
    setinv <- function(inverse) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(get = get, set = set, getinv = getinv, setinv = setinv))
}

# this section is for determining the inverse of the matrix by computing to get the values
# take note that if the inverse is already calculated, therefore, the cache from inverse must be reclaimed

cacheSolve <- function(mtx, ...) {
    inverse <- mtx$getinverse()
    if(!is.null(inverse)) {
        message("Getting the cached data...")
        return(inv)
   
	}
	data <- x$get()
	inv <- solve(data, ...)
	x$setinverse(inv)
	inverse
}
