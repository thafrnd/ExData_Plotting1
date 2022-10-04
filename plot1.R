dataSource <- "./household_power_consumption.txt"
data <- read.table(dataSource, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSet)
globalActivePower <- as.numeric(subSet$Global_active_power)
png("plot1.png", width=520, height=520)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

