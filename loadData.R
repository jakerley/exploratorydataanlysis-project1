# requires sqldf
# This will download and extract file to the working directory
downloadFile <- "exdata_data_household_power_consumption.zip"
dataFile <- "household_power_consumption.txt"
if(!file.exists(downloadFile)){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", downloadFile)
  unzip( downloadFile)
}
# File format
# Date: Date in format dd/mm/yyyy 
# Time: time in format hh:mm:ss 
# Global_active_power: household global minute-averaged active power (in kilowatt) 
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt) 
# Voltage: minute-averaged voltage (in volt) 
# Global_intensity: household global minute-averaged current intensity (in ampere) 
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). 
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. 
# Sub_metering_3:
# NOte, NA's are marked by ?, but there are no NAs in the specified period
# Read data from 2007-02-01 and 2007-02-02
data <- read.csv.sql( dataFile, header=TRUE, sep=";",sql = 'select * from file where Date = "2/1/2007" OR Date = "2/2/2007"')
data[ data == "?" ] = NA