## Load source file in R

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip" ## copy url of zipfile
download.file(url, destfile = "dataset.zip", method = "curl") ## download zipfile from url
unzip("dataset.zip") ## unziiiiiiip it!

dataset <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na = "?") ## read txt file into datatable
dataset$Date <- as.Date(x = dataset$Date, "%d/%m/%Y") ## convert factor to Date
dataset$Time <- format(strptime(dataset$Time, format = "%H:%M:%S"), "%H:%M:%S") ## convert factor to character
dataset$DateTime <- as.POSIXct(paste(dataset$Date, dataset$Time), format="%Y-%m-%d %H:%M:%S") ## create new variables DateTime
dataset$Date <- NULL ## delete Date variable
dataset$Time <- NULL ## delete Time variable

## create a function to subset datable based on dates

myfunc <- function(x,y){
  dataset[dataset$Date >= x & dataset$Date <= y,]
} 

DATE1 <- as.Date("2007-02-01")
DATE2 <- as.Date("2007-02-02")

## create a subset of dataset

dataplot <- myfunc(DATE1,DATE2) 