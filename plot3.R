# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
# Save this file "plot3.png" -- plot by time/day (x) and Energy sub metering (y) and 
# set all metering lines 1, 2, and 3 by "black", "red", and "blue" with legend options

source("load_data.R")

plot3 <- function(data=NULL) {
    if(is.null(data))
        data <- load_data()
    
    png("plot3.png", width=480, height=480)
    
    plot(data$Time, data$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")
    lines(data$Time, data$Sub_metering_2, col="red")
    lines(data$Time, data$Sub_metering_3, col="blue")
    legend("topright",
           col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)
    
    dev.off()
}