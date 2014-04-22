## Put comments here that give an overall description of what your
## functions do

## This code wil generate the matrix inverse 
library(MASS)
makeCacheMatrix <- function(x = matrix()) {
        inverse <-NULL
        set <- function(y){
                x<<-y
                inverse <<- NULL
        }
        get<-function(){x}
        setInverse<-function(inversecalcuda){inverse<<-inversecalcuda}
        getInverse<-function() {inverse}
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inverse <-x$getInverse() 
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data<- x$get()
        inverse <-solve(data, ...)
        x$setInverse(inverse)
        inverse ## Return a matrix that is the inverse of 'x'
}

#source("cachematrix.R")
# x<-makeCacheMatrix(matrix(1:4,nrow = 2, ncol = 2))
# x$get()


#cacheSolve(x)