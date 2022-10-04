
ig <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")

ig_sample <- ig[sample(nrow(ig), size = 5000, replace = F), ]


ig_play <- subset(ig, fips == '24510')


png(filename = './plot2.png')
barplot(tapply(X = ig_play$Emissions, INDEX = ig_play$year, FUN = sum), main = 'Total Emission in Baltimore City, ig_play', xlab = 'Year', ylab = expression('PM'[2.5]))
dev.off()