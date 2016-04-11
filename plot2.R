# Set working directory

setwd("/Users/stevenjia93/Desktop/Coursera/Exploratory Dat Analysis")

# Read dataset


#read in file name
filename <- "household_power_consumption.txt"
data <- read.table(filename, header=TRUE, sep=";", 
                   colClasses=c("character", "character" ,rep("numeric", 7)), na="?")

#Valid data-Dates must be  between 1/2/2007 and 2/2/2007
checkData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


# Convert the Date and Time variables to Date/Time classes
datetime <- strptime(paste(checkData$Date, checkData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# Must be numeric
globalActivePower <- as.numeric(checkData$Global_active_power)

# Specify plot
png("plot2.png", width=480, height=480)  
#label axes and plot
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (in kilowatts)")
dev.off()
