library(soilDB)
library(sharpshootR)
library(Hmisc)

data("loafercreek")

testIt <- function(x, pr=c(0, 0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95, 1)) {
  
  # compute quantile function over 8 methods
  x.q <- sapply(1:8, function(i) {
    res <- quantile(x, probs = pr, na.rm = TRUE, type = i)
    return(res)
  })
  
  # assign method number
  dimnames(x.q)[[2]] <- 1:8
  
  # HD Q estimator
  hd.q <- round(hdquantile(x, probs = pr, na.rm = TRUE), 1)
  
  # combine
  qq <- cbind(x.q, hd.q)
  qq <- cbind(q=pr, qq)
  
  return(qq)
}

simulate.Q <- function(x, n=10, ...) {
  x <- sample(x, size = n)
  res <- testIt(x, ...)
  return(res)
}


# just A horizon clay
x <- loafercreek$clay[which(loafercreek$genhz == 'A')]

hist(x)
sort(table(x), decreasing = TRUE)
length(na.omit(x))

png(file='figures/loafercreek-A-hz-example.png', width=800, height=400, type='cairo', antialias = 'subpixel')
par(mar=c(3,1,3,1))
percentileDemo(x, labels.signif = 2, hist.breaks = 10, xlab='', ylab='Field Decribed Clay (%)', main='Loafercreek A Horizons')
dev.off()

# all samples: methods converge
qq <- testIt(x)
matplot(qq[, 1], qq[, -1], type='b')
t(qq[, -1])


# use a small fraction of obs: less stable
qq <- simulate.Q(x, n=10)
matplot(qq[, 1], qq[, -1], type='b')
qq[, -1]


## TODO: re-run as function of sample size
# replicate
r <- replicate(1000, simulate.Q(x, n=10))

# 0.05 -- 0.95 interval across replications
r.high <- apply(r, c(1,2), function(i) quantile(i, probs = c(0.95)))
r.low <- apply(r, c(1,2), function(i) quantile(i, probs = c(0.05)))

# size of interval is an index of stability
r.diff <- r.high[, -1] - r.low[, -1]
matplot(r.low[, 1], r.diff, type='b')


dotplot(sort(apply(r.diff, 2, sum)))
dotplot(sort(apply(r.diff, 2, mean)))
dotplot(sort(apply(r.diff, 2, mean) / mean(x, na.rm = TRUE) ))





