## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
        ## init inverse property
        I <- NULL
        #set matrix x
        set <- function(y){
                x <<- y
                I <<- NULL
        }
#get matrix x
        get <- function() x{
        }
        #set inverse of matrix x
        setinverse <- function(i){
                I <<- i
        }
        #get inverse of matrix x
        getinverse <- function(){
                I
        }
        #list the matrix
        list(set = set, get = get, setinverse = setinverse,getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## the inversion matrix IM of the matrix x
        IM <- x$getinverse()
        if(!is.null(IM)){
                message("get the inverse")
                return(IM)
        }
        data <- x$get()
        IM <- inverse(data, ...)
        x$setinverse(IM)
        else{
                message("get cache inverse")
        }
        IM
}
