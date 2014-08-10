## Put comments here that give an overall description of what your
## functions do

## `makeCacheMatrix` creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}


## `cacheSolve` computes the inverse of the special "matrix" returned by
## `makeCacheMatrix` above, possibly using a cached value.
## It assumes `x` is always invertible, the return value is a plain matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


# tests
plain <- matrix(nrow=3, ncol=3, c(1,2,3,3,2,1,1,3,2))
m <- makeCacheMatrix(plain)
stopifnot(identical(m$get(), plain))
m$set(NULL)
stopifnot(identical(m$get(), NULL))
m$set(plain)
stopifnot(identical(m$get(), plain))

im <- cacheSolve(m)
imok <- solve(plain)
stopifnot(identical(im, imok))
im <- cacheSolve(m)
stopifnot(identical(im, imok))


