library(future)
plan(MultiprocessFuture())

longRunningFunction <- function(value) {
  Sys.sleep(5)
  return(value)
}

a <- future(longRunningFunction(1))
b <- future(longRunningFunction(2))
print("User interaction")                  # Time: 0s
c <- future(longRunningFunction(10))
future(print(value(a)))
future(print(value(b)))
sumAC <- future(value(a) + value(c))
sumBC <- future(value(b) + value(c))
print("User interaction")                  # Time: 0s
future(print(value(sumAC) + value(sumBC)))
print("User interaction")          
