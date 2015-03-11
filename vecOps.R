vecSubset <- function(vec, n, gt = TRUE, eq = NULL) {
  
  # Create a local vector
  vecSub <- numeric()
  
  # Create a bool variable
  if(gt) {
    scan <- (vec > n)
  }
  else {
      scan <- (vec < n)
    }
  
  if(eq) {
    scan <- (vec == n)
    }
  
  vec[scan]  
}