## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##a)set the value of the vector
##b)get the value of the vector
##c)set the value of the mean
##d)get the value of the mean

# creating makecachematrix function 
makeCacheMatrix <- function(x = matrix()) {
# Setting up an inverse property
    inv <- NULL
# Setting the matrix 

      set <- function(y) {
    x <<- y
    inv<<- NULL
  }
  get <- function() {
    x
    }# getting the matrix after setting it 
  
  #set inverse of matrix
setinvmat<- function(inverse){
    inv <<- inverse
  }
  
#get inverse of matrix created
getinvmat<- function(){
  inv
}
  
# list of the methods   
  list(set = set, get = get,
       setinvmat = setinvmat,
       getinvmat = getinvmat)
}



## Write a short comment describing this function
# Function first checks to see if a inverse has been calculated. If so, it gets expected results and skips the computation. 
# Otherwise, it calculates the inverse of matrix and sets the value of the cache in the cache via the setinvmatfunction.

cacheSolve<- function(x, ...){
 #verification of to see inverse calculated or not
   inv <- x$getinvmat()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  #setting inverse ans getting value of cache
        data <- x$get()
  inv <- solve(data)
  x$setinvmat(inv)
  inv
}
