## This script is used to realize plot 1 of Exploratory Data Analysis Plotting Assignment 1.

source("load-data.R") ## load dataset

png("plot1.png", width = 480, height = 480)
hist(dataplot$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()