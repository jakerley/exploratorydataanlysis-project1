source("loadData.R")
plotFile = "plot3.png"
png( plotFile)
datetime = as.POSIXct(paste(data$Date, data$Time), format="%m/%d/%Y %H:%M:%S")
plot( datetime, data$Sub_metering_1, ylab = "Energy Sub metering", yaxt="n",ylim=c(0,30),xlab="")
lines(datetime, data$Sub_metering_3,col="blue")
lines(datetime, data$Sub_metering_2,col="red")
axis(2, at = c(0, 10, 20, 30),  xpd = TRUE )
legend("topright", 
      legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
      lty=c(1,1),
      lwd=c(2.5, 2.5,2.5),col=c("black", "red", "blue")) # gives the legend lines the correct color and width
dev.off()