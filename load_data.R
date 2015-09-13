#
# This gives you the number of megabytes of the data frame (roughly speaking, it could be less). 
# If this number is more than half the amount of memory on your computer, then you might run into trouble.
# # rows * # columns * 8 bytes / 2^20 
# Load dataset into R

date_time <- function(date, time) {
    return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
}
# Load dataset into R by using read.table function utilize memory effectively and faster.
load_data <- function() {
    file_name <- "household_power_consumption.txt"
    data_frame <- read.table(file_name,
                     header=TRUE,
                     sep=";",
                     colClasses=c("character", "character", rep("numeric",7)),
                     na="?")
    # convert date and time variables to Date/Time class
    data_frame$Time <- strptime(paste(data_frame$Date, data_frame$Time), "%d/%m/%Y %H:%M:%S")
    data_frame$Date <- as.Date(data_frame$Date, "%d/%m/%Y")
    # only use data from the dates 2007-02-01 and 2007-02-02
    dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
    data_frame <- subset(data_frame, Date %in% dates)
    
    return(data_frame)
    
}