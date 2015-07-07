title <- c("O. Sat", "Teaching", "A&F", 
           "AS", "O&M", "LR", 
           "PD")  
This <- c(65, 79, 64, 75, 83, 47, 73)
Last <- c(83, 79, 75, 75, 72, 64, 69)
Sector <- c(86, 87, 72, 81, 79, 86, 82)

da <- data.frame(This, Last, Sector)
row.names(da) <- title
col.names(da) <- c("2014", "2013", "Sector Av")
par(las = 2, ps = 12)
barplot(t(da)[,1:7], beside = TRUE, legend = c("2014", "2013", "Sector Av"), main = "NSS Survey", 
        args.legend = list(x = 6, y = 40))
