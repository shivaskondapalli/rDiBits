# Data Ops
dataOps <- function(dataFile) {
  
  # Create a data frame from the file
  dataFrame <- read.csv(dataFile)
  
  # Get number of rows & columns
  nr <- nrow(dataFrame)
  nc <- ncol(dataFrame)
  
  # Get column names
  strColNames <- names(dataFrame)
  
  ## Count number of NAs  
  # Variable to store number of NAs
  numOfNAs = 0
  
  for (iCol in 1:nc) {
    for(iRow in 1:nr) {
      if(is.na(dataFrame[iRow, iCol])) {
        numOfNAs = numOfNAs + 1
      }
    }
  }
  
 print (numOfNAs)
  
}