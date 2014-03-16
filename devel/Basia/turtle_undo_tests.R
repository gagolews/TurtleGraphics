library(grid)
n <- 100
ruchy <- data.frame(x = runif(n), y = runif(n))

cat("Adding and removing turtle at each step - grid package:\n")
x <- system.time(expr={
  grid.newpage()
  grid.circle(ruchy$x[1], ruchy$y[1], r = .05, name = "ciri")
  for(i in 2:(n-1)){
    grid.remove("ciri")
    grid.polygon(ruchy$x[i:(i+1)], ruchy$y[i:(i+1)], name = "linie")
    grid.circle(ruchy$x[i], ruchy$y[i], r = .05, name = "ciri")
    cat(sprintf("\r%f", i/n))
  }
  cat("\r")   ### can any1 tell me why this line is necessary? Marcin
})
print(x)

cat("Creating standard plot at each step:\n")
x <- system.time(expr={
  for(i in 1:n){
    plot(ruchy$x[1:i], ruchy$y[1:i], type = "l", axes = F, xlab = "", ylab = "")
    points(ruchy$x[i], ruchy$y[i], cex = 3)
    cat(sprintf("\r%f", i/n))
  }  
  cat("\r")
})
print(x)

library(iplots)
cat("Adding and removing turtle at each step - iplots package:\n")
x <- system.time(expr={
  iplot(c(0,ruchy$x[1]), c(0,ruchy$y[1]),xlim = c(0,1), ylim = c(0,1))
  itext(ruchy$x[1], ruchy$y[1], "zolw")
  for(i in 2:(n-1)){
    iobj.rm()
    ilines(ruchy$x[i:(i+1)], ruchy$y[i:(i+1)])
    itext(ruchy$x[i], ruchy$y[i], "zolw")
    cat(sprintf("\r%f", i/n))
  }
  cat("\r")
})
print(x)


