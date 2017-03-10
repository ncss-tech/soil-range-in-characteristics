library(tolerance)
library(plyr)
library(latticeExtra)

# generate population, possible field-described clay content
x <- rnorm(10000, mean=15, sd=2)

# test with log-normal data
x <- rlnorm(10000)


test.quantiles <- function(x, p) {
  # sequential sampling 
  s <- 5:200
  x.s <- sapply(s, function(i) sample(x, size=i))
  
  # compute quantiles from sequentially larger sample sizes
  x.y <- lapply(x.s, function(i) quantile(i, probs=p))
  d <- ldply(x.y)
  d$n <- sapply(x.s, length)
  d$width <- abs(d[, 2] - d[, 1])
  
  return(d)
}

test.tolerance <- function(x, P) {
  # sequential sampling 
  s <- 5:200
  x.s <- sapply(s, function(i) sample(x, size=i))
  
  # generate tolerance intervals from sequentially larger sample sizes
  x.y <- lapply(x.s, function(i) nptol.int(i, alpha = 0.1, P = P, side = 2))
  
  d <- ldply(x.y)
  d$n <- sapply(x.s, length)
  d$width <- abs(d[, 4] - d[, 3])
  
  return(d)
}


# try a couple of quantiles
d.1 <- test.quantiles(x, p=c(0.025, 0.975))
d.2 <- test.quantiles(x, p=c(0.05, 0.95))
d.3 <- test.quantiles(x, p=c(0.1, 0.9))

# combine
g <- make.groups(q025=d.1[, c('n', 'width')], q05=d.2[, c('n', 'width')], q10=d.3[, c('n', 'width')])

tps <- trellis.par.set(list(superpose.line=list(col=c('red', 'blue', 'green'), lty=c(1))))
p.1 <- xyplot(width ~ n, data=g, groups=which, type=c('l', 'g'), auto.key=list(columns=3, lines=TRUE, points=FALSE), par.settings=tps)
p.2 <- histogram(x, col='white', ylab='') + latticeExtra::layer(panel.abline(v=d.1[nrow(d.1), 1:2], col='red')) + latticeExtra::layer(panel.abline(v=d.2[nrow(d.2), 1:2], col='blue')) + latticeExtra::layer(panel.abline(v=d.3[nrow(d.3), 1:2], col='green'))

print(p.1, more=TRUE, position=c(0,0,0.65,1))
print(p.2, more=FALSE, position=c(0.62,0,1,1))






# combine
d <- make.groups(tolerance=d.tol[, c('n', 'width')], quantile=d.q[, c('n', 'width')])


