x <- 1:100
y <- 1:100
east <- sample(x, size = 10, replace = TRUE)
north <- sample(y, size = 10, replace = TRUE)
symbols(east, north, squares = rep(.75,10), inches = FALSE)
symbols(sample(x, 10, replace = TRUE), 
        sample(y, 10, replace = TRUE), 
        circles = rep(.75,10), 
        inches = FALSE,
        fg = "skyblue",
        add = TRUE)
symbols(sample(x, 10, replace = TRUE), 
        sample(y, 10, replace = TRUE), 
        circles = rep(1.5,10), 
        inches = FALSE,
        fg = "turquoise4",
        bg = "orange",
        add = TRUE)
dwellings <- cbind.data.frame(id = 1:10, east, north)
#lines(x = dwellings$east,
#      y = dwellings$north,
 #     lty = 2,
  #    lwd = .75,
#      col = "blue")
#locs <- sample(1:10, 3, replace = FALSE)
# text(x = dwellings$east,
#      y = dwellings$north + 3,
#      labels = dwellings$id)

#text(x = dwellings[locs, ]$east, 
#    y = dwellings[locs, ]$north + 3,
#     labels = dwellings[locs, ]$id)
xspline(x = dwellings[locs, 2],
        y = dwellings[locs, 3],
        shape = -1,
        lty = 2)
text(x = dwellings[locs, ]$east, 
     y = dwellings[locs, ]$north + 3,
     labels = dwellings[locs, ]$id)
