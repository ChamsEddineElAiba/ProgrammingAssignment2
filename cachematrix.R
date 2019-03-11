## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	matriceinverse <- NULL
	set <- function(y) {
		x <<- y
		matriceinverse <<- NULL
	}
#returns the vector
get <- function() x
setinverse <- function(solve) inverse <<- solve
getinverse <- function() matriceinverse 
# gives the name 'set' to the set() function defined above
# gives the name 'get' to the get() function defined above
# gives the name 'setinverse' to the setinverse() function defined above
# gives the name 'getinverse' to the getinverse() function defined above
list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	matriceinverse <- x$getinverse()
	if (!is.null(matriceinverse)){
		message ('getting the inverse of the matrix')
		return (matriceinverse)
	}

mat <- x$get()
matriceinverse <- solve(mat,...)
x$setinverse(matriceinverse)
matriceinverse
}
