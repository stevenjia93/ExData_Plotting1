# Set working directory

setwd("/Users/stevenjia93/Desktop/Coursera/Exploratory Dat Analysis")

# Read dataset


#read in file name
filename <- "household_power_consumption.txt"
data <- read.table(filename, header=TRUE, sep=";", 
                   colClasses=c("character", "character" ,rep("numeric", 7)), na="?")

#Valid data-Dates must be  between 1/2/2007 and 2/2/2007
checkData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#check that data is numeric
globalActivePower <- as.numeric(checkData$Global_active_power)

# specifiy plot 
png("plot1.png", width=480, height=480)
#creat graph
hist(globalActivePower,main="Global Active Power", xlab="Global Active Power (in kilowatts)",ylab="Frequency",col="red")
dev.off()
