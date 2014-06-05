### EDA Assignment 1 ####

#Ensure that the data import and manipulation code is run from Plot1.R

#### Plot 4 ####

png(filename="plot4.png", height=480, width=480)

par(mfrow=c(2,2), cex=.6)
#Setting parameters to produce 4 graphs in a single plot and reducing the size of text to 60%



# The first graph:
plot(electric$DateTime, electric$Global_active_power, type="n", 
     ylab="Global Active Power (kilowatts)", xlab="", lwd=1)
with(electric, lines(DateTime, Global_active_power))

# The second graph:
with(electric, plot(DateTime, Voltage, type="l", xlab="datetime"))


# The third graph:
plot(electric$DateTime, electric$Sub_metering_1, type="n", 
     ylab="Energy sub metering", xlab="", lwd=1)

with(electric, lines(DateTime, Sub_metering_1))
with(electric, lines(DateTime, Sub_metering_2, col="red"))
with(electric, lines(DateTime, Sub_metering_3, col="blue"))

legend("topright", lty=1,col=c("black","red","blue"), box.lty=0,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
# This time the legend does not have a box surrounding it


# The fourth graph:
with(electric, plot(DateTime, Global_reactive_power, type="l", xlab="datetime"))

dev.off()

#Note - the graph will not be visible on the screen as it is being written directly into the png file