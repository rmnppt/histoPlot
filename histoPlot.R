# a function to create vertical histogram plots.

histoPlot <- function(dd, magnif, type = "P", ylim, xlim, breaks, axes = T, border = NULL, col = NA) {
  # default nagnification
  if(missing(magnif)) magnif <- 3
  # calculate yLimits
  if(missing(xlim)) xlim <- c(0.5, length(dd)+0.5)
  # calculate histograms
  if(missing(breaks)) breaks <- max(sapply(dd, length))/10
  hlist <- lapply(dd, hist, plot = F, breaks = breaks)
  # access the breaks and mids of the whole lot
  yVals <- sapply(hlist, function(x) x$breaks)
  if(missing(ylim)) ylim <- range(sapply(hlist, function(x) x$mids))
  # empty plot
  plot(1 ~ 1, type = "n", ylim = ylim, xlim = xlim, axes = axes)
  # add histograms
  for(i in 1:length(dd)){
    dens <- hlist[[i]]$density * magnif
    mids <- hlist[[i]]$mids
    y <- c(mids, rev(mids))
    x <- c(rep(i, length(dens))-dens, 
           rep(i, length(dens))+rev(dens) )
    if(type == "S"){ 
      lines((rep(i, length(dens))-dens), mids, type = "S")
      lines((rep(i, length(dens))+dens), mids, type = "S")}else
        if(type == "P"){
          polygon(x, y, border = border, col = col)
        }
  }
}
