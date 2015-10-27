# set the working directory (where the files are, so no paths are needed when loading/saving data)
# change this to your directory
setwd('E:teaching/2015_acg5075_r/introR')

# read csv file with columns: month,orders,costs
myData = read.csv("chapter14/dataset.csv")  
myMatrix = as.matrix(myData)
# functions
# see http://www.statmethods.net/management/userfunctions.html

# example, function that multiplies
myMultiply <- function(arg1, arg2 ){ return(arg1 * arg2) }

myMultiply(5,2)
#[1] 10

# read the function stored in the file myHighLow.r
source("functions/myHighLow.r");

# call it
varCost <- myHighLow( mymatrix, "orders", "costs")