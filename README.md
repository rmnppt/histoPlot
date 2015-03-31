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
