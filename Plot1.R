# EDA - Course Project 1 #

#### Step 1 - Getting and Cleaning the Data ####

system.time(read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE))
# Checks computing time required for reading dataset - Recommended


data1 <- read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE)
# Read Dataset 1


data1$Global_active_power <- as.numeric(data1$Global_active_power)
data1$Global_reactive_power <- as.numeric(data1$Global_reactive_power)
data1$Global_intensity <- as.numeric(data1$Global_intensity)
data1$Voltage <- as.numeric(data1$Voltage)


data1$Date <- as.Date(as.character(data1$Date), "%d/%m/%Y")
# Changing format of column "Date" from character to date format

electric <- subset(data1, (as.Date(Date) == "2007-02-01") | (as.Date(Date) == "2007-02-02")) 
# Subsetting dataset for the required dates

electric$DateTime <- as.POSIXct(paste(electric$Date, electric$Time), format="%Y-%m-%d %H:%M:%S")
# Using the Date AND Time columns to create a POSIXct variable called DateTime


str(electric)
head(electric)
#Checking out the Data

#### Step 2 - The Graph - Plot1 ####

png(filename="plot1.png", height=480, width=480)

par(mfrow=c(1,1), cex=0.8)
#Setting parameters for 1 graph and reducing the size of text to 80%

# The Graph
hist(electric$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency", breaks = 12)

dev.off()

#Note - the graph will not be visible on the screen as it is being written directly into the png file