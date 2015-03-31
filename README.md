# histoPlot
A function to create vertical mirrored histograms in R. This is similar in style to `vioplot::vioplot()` but plotting data rather than a density kernel. The function is a wrapper for `hist()`, `plot()`, `lines()`, `polygon()`

## usage
`histoPlot(dd, magnif, type = "P", ylim, xlim, breaks, axes = T, border = NULL, col = NA)`

## arguments
`dd`        a list object containig one numeric vector for each data series

`magnif`    a numeric value determining the magnification (in the x axis) of the histograms

`type`      a character `"P"` or `"S"` denoting polygon or 'stairs' like ouput. if using `S`

`xlim`, `ylim`      the same as in `plot()`

`breaks`    passed to `hist()`

`axes`      passed to `plot()`

`border`    passed to `polygon()`

`col`       passed to `polygon()`

## example
```
# load in the source
library(devtools)
source_url("https://raw.githubusercontent.com/rmnppt/histoPlot/master/histoPlot.R")

# make up some data
dd <- list()
for(i in 1:5){
  dd[[i]] <- rnorm(i+100*i, i*10, (i+2))
}

# plot it
histoPlot(dd, 2, "P", border = NA, col = "red", axes = F)
````
