source("loadData.R")
plotFile = "plot2.png"
png( plotFile)
datetime = as.POSIXct(paste(data$Date, data$Time), format="%m/%d/%Y %H:%M:%S")
plot( datetime, data$Global_active_power, type="l", yaxt = "n", ylab = "Global Active Power (kilowatts)", xlab="")   
axis(2, at = c(0,2,4,6),  xpd = TRUE )
dev.off()