# ADDED COMMENT TO TEST COMMIT TO GITHUB 

# CACHING THE INVERSE OF A MATRIX 
# Matrix inversion is usually a costly computation and their may be some benefit to caching the inverse of a 
# matrix rather than compute it repeatedly. Below is a pair of functions that cache the inverse of a matrix.


# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x # just the above function itself, which is converting x into matrix  
    #setmean <- function(mean) m <<- mean
    setinverse <- function(solve) m <<- solve # test: solve(c) %*% c
    #getmean <- function() m
    getinverse <- function() m 
    list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
# If the inverse has already been calculated (and the matrix has not changed), # then the cachesolve should 
# retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}




 



# BACKUP of example functions 
#makeVector <- function(x = numeric()) {
#  m <- NULL
#  set <- function(y) {
#    x <<- y
#    m <<- NULL
#  }
#  get <- function() x
#  setmean <- function(mean) m <<- mean
#  getmean <- function() m
#  list(set = set, get = get,
#       setmean = setmean,
#       getmean = getmean)
#}

#cachemean <- function(x, ...) {
#  m <- x$getmean()
#  if(!is.null(m)) {
#    message("getting cached data")
#    return(m)
#  }
#  data <- x$get()
#  m <- mean(data, ...)
#  x$setmean(m)
#  m
}









