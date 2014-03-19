require("grid")
require("iplots")
require("lattice")
require("latticeExtra")

library(microbenchmark)
n <- 100
microbenchmark(porLATTICE(n), porGRID(n))
microbenchmark(porGRID(n), porPLOT(n))
# 
# # 10 moves
# Unit: milliseconds
# expr       min        lq    median        uq       max neval
# porLATTICE() 1128.7028 1186.2235 1211.9614 1248.7344 1389.3830   100
# porGRID()  113.6866  119.9364  124.8375  127.8056  223.7176   100
# 
# # 50 moves
# Unit: seconds
# expr       min        lq    median        uq      max neval
# porLATTICE(n) 10.306349 10.512086 10.692160 10.792653 11.47457   100
# porGRID(n)  1.004037  1.051912  1.075863  1.105172  1.18754   100
# 
# Unit: milliseconds
# expr       min       lq    median        uq       max neval
# porGRID(n) 1002.8580 1019.609 1030.0367 1047.7865 1163.4997   100
# porPLOT(n)  474.3783  479.852  483.8603  491.2461  582.4445   100
# 
# #100 moves
# 
# Unit: milliseconds
# expr       min        lq    median       uq      max neval
# porGRID(n) 3128.0571 3240.6033 3298.6609 3361.054 3522.019   100
# porPLOT(n)  956.5016  974.8218  991.9062 1006.059 1102.630   100


# turtle_init <- function(){
#   coor <- c(0,0)
#   Graph <- xyplot(c(0)~c(0), xlab="", ylab="", type="l", 
#                   scales=list(draw=FALSE),subscripts = TRUE) 
#   n_coor <- data.frame(matrix(ncol=2))
#   n_coor[1,] <- c(0,0)
#   Graph + layer({panel.text(coor[1], coor[2], "-O-") })  
# }
# 
# turtle_init()
# move_forward<-function(){
#   coor <- c(0,0)
#   Graph <- xyplot(c(0)~c(0), xlab="", ylab="", type="l", 
#                   scales=list(draw=FALSE),subscripts = TRUE) 
#   n_coor <- data.frame(x=rep(0, 100), y=seq(0, 1, length.out=100))
#   Graph + layer({panel.text(coor[1], coor[2], "-O-") })  
#   for (i in 2:100){
#     n_coor[m+1,] <- c(n_coor[m,1], n_coor[m,2]+len)
#     Graph <- Graph + layer(panel.lines(x = c(n_coor[m,1], n_coor[m+1,1]), y = c(n_coor[m,2], n_coor[m+1,2]))) 
#     print(Graph + layer(panel.text(x=n_coor[m+1,1], y=n_coor[m+1,2], "-O-"))) 
#     
#   }
# }

#   Graph <- Graph + layer(panel.lines(x = c(n_coor[1,1], n_coor[2,1]), y = c(n_coor[1,2], n_coor[2,2]))) 
#   print(Graph + layer(panel.text(x=n_coor[2,1], y=n_coor[2,2], "-O-")))     
#   
#   Graph <- Graph + layer(panel.lines(x = c(n_coor[2,1], n_coor[3,1]), y = c(n_coor[2,2], n_coor[3,2]))) 
#   print(Graph + layer(panel.text(x=n_coor[3,1], y=n_coor[3,2], "-O-")))     
#   
#   Graph <- Graph + layer(panel.lines(x = c(n_coor[3,1], n_coor[4,1]), y = c(n_coor[3,2], n_coor[4,2]))) 
#   print(Graph + layer(panel.text(x=n_coor[4,1], y=n_coor[4,2], "-O-")))     

porLATTICE <- function(n){
  coor <- c(0,0)
  Graph <- xyplot(c(0)~c(0), xlab="", ylab="", type="l", 
                  scales=list(draw=FALSE),subscripts = TRUE) 
  n_coor <- data.frame(x=rep(0, n), y=seq(0, 1, length.out=n))
  Graph + layer({panel.text(coor[1], coor[2], "-O-") })  
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 1 ,1], n_coor[ 2 ,1]), y = c(n_coor[ 1 ,2], n_coor[ 2 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 2 ,1], y=n_coor[ 2 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 2 ,1], n_coor[ 3 ,1]), y = c(n_coor[ 2 ,2], n_coor[ 3 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 3 ,1], y=n_coor[ 3 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 3 ,1], n_coor[ 4 ,1]), y = c(n_coor[ 3 ,2], n_coor[ 4 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 4 ,1], y=n_coor[ 4 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 4 ,1], n_coor[ 5 ,1]), y = c(n_coor[ 4 ,2], n_coor[ 5 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 5 ,1], y=n_coor[ 5 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 5 ,1], n_coor[ 6 ,1]), y = c(n_coor[ 5 ,2], n_coor[ 6 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 6 ,1], y=n_coor[ 6 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 6 ,1], n_coor[ 7 ,1]), y = c(n_coor[ 6 ,2], n_coor[ 7 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 7 ,1], y=n_coor[ 7 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 7 ,1], n_coor[ 8 ,1]), y = c(n_coor[ 7 ,2], n_coor[ 8 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 8 ,1], y=n_coor[ 8 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 8 ,1], n_coor[ 9 ,1]), y = c(n_coor[ 8 ,2], n_coor[ 9 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 9 ,1], y=n_coor[ 9 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 9 ,1], n_coor[ 10 ,1]), y = c(n_coor[ 9 ,2], n_coor[ 10 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 10 ,1], y=n_coor[ 10 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 10 ,1], n_coor[ 11 ,1]), y = c(n_coor[ 10 ,2], n_coor[ 11 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 11 ,1], y=n_coor[ 11 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 11 ,1], n_coor[ 12 ,1]), y = c(n_coor[ 11 ,2], n_coor[ 12 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 12 ,1], y=n_coor[ 12 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 12 ,1], n_coor[ 13 ,1]), y = c(n_coor[ 12 ,2], n_coor[ 13 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 13 ,1], y=n_coor[ 13 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 13 ,1], n_coor[ 14 ,1]), y = c(n_coor[ 13 ,2], n_coor[ 14 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 14 ,1], y=n_coor[ 14 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 14 ,1], n_coor[ 15 ,1]), y = c(n_coor[ 14 ,2], n_coor[ 15 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 15 ,1], y=n_coor[ 15 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 15 ,1], n_coor[ 16 ,1]), y = c(n_coor[ 15 ,2], n_coor[ 16 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 16 ,1], y=n_coor[ 16 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 16 ,1], n_coor[ 17 ,1]), y = c(n_coor[ 16 ,2], n_coor[ 17 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 17 ,1], y=n_coor[ 17 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 17 ,1], n_coor[ 18 ,1]), y = c(n_coor[ 17 ,2], n_coor[ 18 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 18 ,1], y=n_coor[ 18 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 18 ,1], n_coor[ 19 ,1]), y = c(n_coor[ 18 ,2], n_coor[ 19 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 19 ,1], y=n_coor[ 19 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 19 ,1], n_coor[ 20 ,1]), y = c(n_coor[ 19 ,2], n_coor[ 20 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 20 ,1], y=n_coor[ 20 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 20 ,1], n_coor[ 21 ,1]), y = c(n_coor[ 20 ,2], n_coor[ 21 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 21 ,1], y=n_coor[ 21 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 21 ,1], n_coor[ 22 ,1]), y = c(n_coor[ 21 ,2], n_coor[ 22 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 22 ,1], y=n_coor[ 22 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 22 ,1], n_coor[ 23 ,1]), y = c(n_coor[ 22 ,2], n_coor[ 23 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 23 ,1], y=n_coor[ 23 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 23 ,1], n_coor[ 24 ,1]), y = c(n_coor[ 23 ,2], n_coor[ 24 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 24 ,1], y=n_coor[ 24 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 24 ,1], n_coor[ 25 ,1]), y = c(n_coor[ 24 ,2], n_coor[ 25 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 25 ,1], y=n_coor[ 25 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 25 ,1], n_coor[ 26 ,1]), y = c(n_coor[ 25 ,2], n_coor[ 26 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 26 ,1], y=n_coor[ 26 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 26 ,1], n_coor[ 27 ,1]), y = c(n_coor[ 26 ,2], n_coor[ 27 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 27 ,1], y=n_coor[ 27 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 27 ,1], n_coor[ 28 ,1]), y = c(n_coor[ 27 ,2], n_coor[ 28 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 28 ,1], y=n_coor[ 28 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 28 ,1], n_coor[ 29 ,1]), y = c(n_coor[ 28 ,2], n_coor[ 29 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 29 ,1], y=n_coor[ 29 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 29 ,1], n_coor[ 30 ,1]), y = c(n_coor[ 29 ,2], n_coor[ 30 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 30 ,1], y=n_coor[ 30 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 30 ,1], n_coor[ 31 ,1]), y = c(n_coor[ 30 ,2], n_coor[ 31 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 31 ,1], y=n_coor[ 31 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 31 ,1], n_coor[ 32 ,1]), y = c(n_coor[ 31 ,2], n_coor[ 32 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 32 ,1], y=n_coor[ 32 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 32 ,1], n_coor[ 33 ,1]), y = c(n_coor[ 32 ,2], n_coor[ 33 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 33 ,1], y=n_coor[ 33 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 33 ,1], n_coor[ 34 ,1]), y = c(n_coor[ 33 ,2], n_coor[ 34 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 34 ,1], y=n_coor[ 34 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 34 ,1], n_coor[ 35 ,1]), y = c(n_coor[ 34 ,2], n_coor[ 35 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 35 ,1], y=n_coor[ 35 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 35 ,1], n_coor[ 36 ,1]), y = c(n_coor[ 35 ,2], n_coor[ 36 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 36 ,1], y=n_coor[ 36 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 36 ,1], n_coor[ 37 ,1]), y = c(n_coor[ 36 ,2], n_coor[ 37 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 37 ,1], y=n_coor[ 37 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 37 ,1], n_coor[ 38 ,1]), y = c(n_coor[ 37 ,2], n_coor[ 38 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 38 ,1], y=n_coor[ 38 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 38 ,1], n_coor[ 39 ,1]), y = c(n_coor[ 38 ,2], n_coor[ 39 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 39 ,1], y=n_coor[ 39 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 39 ,1], n_coor[ 40 ,1]), y = c(n_coor[ 39 ,2], n_coor[ 40 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 40 ,1], y=n_coor[ 40 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 40 ,1], n_coor[ 41 ,1]), y = c(n_coor[ 40 ,2], n_coor[ 41 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 41 ,1], y=n_coor[ 41 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 41 ,1], n_coor[ 42 ,1]), y = c(n_coor[ 41 ,2], n_coor[ 42 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 42 ,1], y=n_coor[ 42 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 42 ,1], n_coor[ 43 ,1]), y = c(n_coor[ 42 ,2], n_coor[ 43 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 43 ,1], y=n_coor[ 43 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 43 ,1], n_coor[ 44 ,1]), y = c(n_coor[ 43 ,2], n_coor[ 44 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 44 ,1], y=n_coor[ 44 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 44 ,1], n_coor[ 45 ,1]), y = c(n_coor[ 44 ,2], n_coor[ 45 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 45 ,1], y=n_coor[ 45 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 45 ,1], n_coor[ 46 ,1]), y = c(n_coor[ 45 ,2], n_coor[ 46 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 46 ,1], y=n_coor[ 46 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 46 ,1], n_coor[ 47 ,1]), y = c(n_coor[ 46 ,2], n_coor[ 47 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 47 ,1], y=n_coor[ 47 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 47 ,1], n_coor[ 48 ,1]), y = c(n_coor[ 47 ,2], n_coor[ 48 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 48 ,1], y=n_coor[ 48 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 48 ,1], n_coor[ 49 ,1]), y = c(n_coor[ 48 ,2], n_coor[ 49 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 49 ,1], y=n_coor[ 49 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 49 ,1], n_coor[ 50 ,1]), y = c(n_coor[ 49 ,2], n_coor[ 50 ,2]))) 
  print(Graph) 
  print(Graph + layer(panel.text(x=n_coor[ 50 ,1], y=n_coor[ 50 ,2], "-O-"))) 
  Graph <- Graph + layer(panel.lines( x = c(n_coor[ 50 ,1], n_coor[ 51 ,1]), y = c(n_coor[ 50 ,2], n_coor[ 51 ,2]))) 
  print(Graph) 
}

porGRID <- function(n){
  ruchy <- data.frame(x=rep(0.5, n), y=seq(0, 1, length.out=n))
  grid.newpage()
  grid.circle(ruchy$x[1], ruchy$y[1], r = .01, name = "ciri")
  for (i in 1:(n-1)){
    grid.remove("ciri")
    grid.polygon(ruchy$x[i:(i+1)], ruchy$y[i:(i+1)], name = "linie")
    grid.circle(ruchy$x[i+1], ruchy$y[i+1], r = .01, name = "ciri")
  }
}

porPLOT <- function(n){
  ruchy <- data.frame(x=rep(0.5, n), y=seq(0, 1, length.out=n))
  for(i in 1:n){
    plot(ruchy$x[1:i], ruchy$y[1:i], type = "l", axes = F, xlab = "", ylab = "")
    points(ruchy$x[i], ruchy$y[i], cex = 2)
  }  
}



