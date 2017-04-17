## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-null
set<-function(y){
        x<<-y
        inv<<- null
}
get<-function()x
setInverse<-function(inverse) inv<<-inverse
getInverse<-function() inv
list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
        }
        
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
inv<-x$getInverse()
if(!is.null(inv)){
        message("get cashed data")
        return(inv)
}
z<-x$get()
inv<-solve(z,...)
x$setInverse(z)
z
}
