## This script is used to realize plot 3 of Exploratory Data Analysis Plotting Assignment 1.

source("load-data.R") ## load dataset

Sys.setlocale(category = "LC_ALL", locale = "C") ## set langage to english

png("plot3.png", width = 480, height = 480)
plot(dataplot$DateTime, dataplot$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l") ## plot sub_metering_1
lines(x=dataplot$DateTime, y=dataplot$Sub_metering_2,col="red") ## add line for sub_metering_2
lines(x=dataplot$DateTime, y=dataplot$Sub_metering_3,col="blue") ## add line for sub_metering_3
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red","blue")) ## add legend
dev.off()