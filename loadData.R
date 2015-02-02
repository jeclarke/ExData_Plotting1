sav <<- NULL
loadData <- function(){
    if (!is.null(sav)) {
        print("using cache")
        return (sav)
    }
    d <- read.csv("../household_power_consumption.txt", 
                  sep = ";",na.strings=c("","?","NA"), stringsAsFactors=FALSE,
                  colClasses=c(rep("character",2),rep("numeric",7)))        
    d$Date <- as.Date(d$Date, "%d/%m/%Y")    
    d <- d[d$Date>=as.Date("2007-02-01") & d$Date<=as.Date("2007-02-02"),]
    sav <<- d
}