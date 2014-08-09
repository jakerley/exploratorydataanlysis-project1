source("loadData.R")
plotFile = "plot4.png"
png( plotFile)
par(mfrow=c(2,2))
datetime = as.POSIXct(paste(data$Date, data$Time), format="%m/%d/%Y %H:%M:%S")
plot( datetime, data$Global_active_power, type="l", yaxt = "n", ylab = "Global Active Power (kilowatts)")   
axis(2, at = c(0,2,4,6),  xpd = TRUE )

plot( datetime, data$Voltage, type = "l", ylab = "Voltage", yaxt="n")
axis(2, at = c(234, 238, 242, 246),  xpd = TRUE )
#, yaxt="n",ylim=c(0,30),xlab="")

plot( datetime, data$Sub_metering_1, ylab = "Energy Sub metering", yaxt="n",ylim=c(0,30),xlab="")
lines(datetime, data$Sub_metering_3,col="blue")
lines(datetime, data$Sub_metering_2,col="red")
axis(2, at = c(0, 10, 20, 30),  xpd = TRUE )
legend("topright", 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1), bty = "n",
       lwd=c(2.5, 2.5,2.5),col=c("black", "red", "blue")) # gives the legend lines the correct color and width

plot( datetime, data$Global_reactive_power, type = "l", ylab = "Global_reactive_power")
dev.off()