## This script is used to realize plot 1 of Exploratory Data Analysis Plotting Assignment 1.

source("load-data.R")

png("plot1.png", width = 504, height = 504)
hist(as.numeric(dataplot$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", 
     col="red")
dev.off()