url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip" ## copy url of zipfile
download.file(url, destfile = "dataset.zip", method = "curl") ## download zipfile from url
unzip("dataset.zip") ## unziiiiiiip it!

dataset <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na = "?") ## read txt file into datatable
dataset$Date <- as.Date(x = dataset$Date, "%d/%m/%Y") ## convert factor to Date
dataset$Time <- format(strptime(dataset$Time, format = "%H:%M:%S"), "%H:%M:%S") ## convert factor to character

myfunc <- function(x,y){
  dataset[dataset$Date >= x & dataset$Date <= y,]
} ## create a function to subset datable based on dates

DATE1 <- as.Date("2007-02-01")
DATE2 <- as.Date("2007-02-02")

dataplot <- myfunc(DATE1,DATE2) ## create a subset of dataset