## This script is used to realize plot 2 of Exploratory Data Analysis Plotting Assignment 1.

source("load-data.R") ## load dataset

Sys.setlocale(category = "LC_ALL", locale = "C") ## set langage to english

png("plot2.png", width = 480, height = 480)
plot(dataplot$DateTime, dataplot$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()