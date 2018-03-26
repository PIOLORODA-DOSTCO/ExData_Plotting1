#eda
getwd()
setwd("E:/Other Business/RamonPioRoda/eda/")
getwd()

## Download File
URL = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destfile = "household_power_consumption.zip"
download.file(URL, destfile)

dir()

######
unzip(destfile)
dir()

################ Plot 1
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

head(subSetData)
str(subSetData)
nrow(subSetData)


#str(subSetData)
gap <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

