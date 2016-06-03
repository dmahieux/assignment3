best <- function(state, outcome) {
        column = paste("Hospital.30.Day.Death..Mortality..Rates.from.", outcome, sep = "")
        
        ## Read outcome data
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        ds   <- subset(data, data$State == "TX")
        ods  <- ds[order(ds[, column], decreasing = TRUE, na.last = FALSE),]

        print(ods[1,])
        data
}