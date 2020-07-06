## This first line will likely take a few seconds. Be patient!

if(!exists("NEI")){

  NEI <- readRDS("./data/summarySCC_PM25.rds")

}

if(!exists("SCC")){

  SCC <- readRDS("./data/Source_Classification_Code.rds")

}



library(ggplot2)



# Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 

# which of these four sources have seen decreases in emissions from 1999 2008 for Baltimore City? 

# Which have seen increases in emissions from 1999 2008? 

# Use the ggplot2 plotting system to make a plot answer this question.



# 24510 is Baltimore, see plot2.R

subsetNEI  <- NEI[NEI$fips=="24510", ]



aggregatedTotalByYearAndType <- aggregate(Emissions ~ year + type, subsetNEI, sum)



