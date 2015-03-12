# Data Ops
dataOps <- function(dataFile) {
  
  # Create a data frame from the file
  dataFrame <- read.csv(dataFile)
  
  # Get number of rows & columns
  nr <- nrow(dataFrame)
  nc <- ncol(dataFrame)
  
  # Get column names
  strColNames <- names(dataFrame)
  
#   ## Count number of NAs  
#   # Variable to store number of NAs
#   numOfNAs = 0
#   
#   for (iCol in 1:nc) {
#     for(iRow in 1:nr) {
#       if(is.na(dataFrame[iRow, iCol])) {
#         numOfNAs = numOfNAs + 1
#       }
#     }
#   }
# 
#   sprintf ("Number of NAs: %d", numOfNAs)

    ## Get mean of each column eliminating NA
   for (iCol in 1:nc) {
      colMean <- mean(dataFrame[, iCol], na.rm = TRUE)
      #sprintf("Mean for %f is %f", iCol, colMean)
      print (strColNames[iCol])
      print (colMean)
   }

}