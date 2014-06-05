### EDA Assignment 1 ####

# Ensure that the data import and manipulation code is run from Plot1.R

#### Plot 3 ####

png(filename="plot3.png", height=480, width=480)

par(mfrow=c(1,1), cex=0.8)
#Setting parameters to produce a single graph and reducing the size of text to 80%

plot(electric$DateTime, electric$Sub_metering_1, type="n", 
     ylab="Energy sub metering", xlab="", lwd=1)

with(electric, lines(DateTime, Sub_metering_1))
with(electric, lines(DateTime, Sub_metering_2, col="red"))
with(electric, lines(DateTime, Sub_metering_3, col="blue"))


legend("topright", lty=1,col=c("black","red","blue"), box.lty=1, 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()

#Note - the graph will not be visible on the screen as it is being written directly into the png file