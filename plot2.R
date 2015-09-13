# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
# Save this file "plot2.png" -- plot by time/day (x) and Global Active Power(y) and set the type = l for lines
source("load_data.R")

plot2 <- function(data=NULL) {
    if(is.null(data))
        data <- load_data()
    
    png("plot2.png", width=480, height=480)
    
    plot(data$Time, data$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power (kilowatts)")
    
    dev.off()
}