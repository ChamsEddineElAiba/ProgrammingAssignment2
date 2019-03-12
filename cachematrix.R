
## This function creates a special matrix containing a function that set and get the value of the matrix and set and get the value of the inverse 

makeCacheMatrix <- function(x = matrix()) {
	matriceinverse <- NULL
	set <- function(y) {
		x <<- y
		matriceinverse <<- NULL
	}
#returns the vector
get <- function() x
#set the value of the inverse 
setinverse <- function(solve) inverse <<- solve
#get the value of the inverse 
getinverse <- function() matriceinverse 
# gives the name 'set' to the set() function defined above
# gives the name 'get' to the get() function defined above
# gives the name 'setinverse' to the setinverse() function defined above
# gives the name 'getinverse' to the getinverse() function defined above
list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## This function checks if the inverse is available. Otherwise it sets it 

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
