## This script is used to realize plot 4 of Exploratory Data Analysis Plotting Assignment 1.

source("load-data.R") ## load dataset

Sys.setlocale(category = "LC_ALL", locale = "C") ## set langage to english

png("plot4.png", width = 480, height = 480)

## configure graphic device to make 4 plot in 1 figure
par(mfrow = c(2,2))

## upper left plot (plot2)
plot(dataplot$DateTime, dataplot$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

## upper right plot
plot(dataplot$DateTime, dataplot$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

## bottom left plot (plot3)
plot(dataplot$DateTime, dataplot$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l") ## plot sub_metering_1
lines(x=dataplot$DateTime, y=dataplot$Sub_metering_2,col="red") ## add line for sub_metering_2
lines(x=dataplot$DateTime, y=dataplot$Sub_metering_3,col="blue") ## add line for sub_metering_3
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red","blue")) ## add legend

## bottom right plot
plot(dataplot$DateTime, dataplot$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()