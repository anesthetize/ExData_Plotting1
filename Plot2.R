### EDA Assignment 1 ####

#Ensure that the data import and manipulation code is run from Plot1.R

#### Plot 2 ####

png(filename="plot2.png", height=480, width=480)

par(mfrow=c(1,1), cex=0.8)
#Setting parameters to produce a single graph and reducing the size of text to 80%

plot(electric$DateTime, electric$Global_active_power, type="n", 
     ylab="Global Active Power (kilowatts)", xlab="", lwd=1)

with(electric, lines(DateTime, Global_active_power))

dev.off()

#Note - the graph will not be visible on the screen as it is being written directly into the png file