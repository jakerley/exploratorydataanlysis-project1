source("loadData.R")
plotFile = "plot1.png"
# Plot1: Histogram Frequency vs Global Active Power
# Bar color red
png( plotFile)
hist(data$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", ylim = c(0,1200), xaxt="n")
axis(1, at = c(0,2,4,6),  xpd = TRUE )
dev.off()