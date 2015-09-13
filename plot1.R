# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
# Save this file "plot1.png" -- hist by Global Active Power(X) and Frequency (y)
source("load_data.R")

# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
plot1 <- function(data=NULL) {
    if(is.null(data))
        data <- load_data()
    
    png("plot1.png", width = 480, height = 480, type = c("windows"))
    hist(data$Global_active_power,
         main="Global Active Power",
         xlab="Global Active Power (kilowatts)",
         ylab="Frequency",
         col="red")
    
    dev.off()
}