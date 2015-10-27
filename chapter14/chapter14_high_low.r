# set the working directory (where the files are, so no paths are needed when loading/saving data)
# change this to your directory
setwd('E:teaching/2015_acg5075_r/introR')

# read csv file with columns: month,orders,costs
myData = read.csv("chapter14/dataset.csv")  

# without setwd, the read would be:
# myData = read.csv("E:teaching/2015_acg5075_r/introR/chapter14/dataset.csv") 

#outputs dataset
myData  #display contents
#   month orders costs
# 1     1   3000 32000
# 2     2   1500 22400
# 3     3   4000 52000
# 4     4   2800 31200
# 5     5   2300 25600
# 6     6   1000 16000
# 7     7   2000 24000

#push it into a matrix (another data type that allows more functions on it)
myMatrix = as.matrix(myData)
myMatrix #display contents
#      month orders costs
# [1,]     1   3000 32000
# [2,]     2   1500 22400
# [3,]     3   4000 52000
# [4,]     4   2800 31200
# [5,]     5   2300 25600
# [6,]     6   1000 16000
# [7,]     7   2000 24000

# extract some values 
myMatrix[1,1]
# month 
#     1 

myMatrix[1,3]
# costs 
# 32000 

# third row
myMatrix[3,]
# month orders  costs 
#     3   4000  52000 

# get second column (as a vector)
myMatrix[, 2]
#[1] 3000 1500 4000 2800 2300 1000 2000

# can also use column name
myMatrix[ , 'orders']
#[1] 3000 1500 4000 2800 2300 1000 2000

# assign order vector to a variable
orders <- myMatrix[ , 'orders']

# function to get the minimum number
min (5, 2, 0, -20)
#[1] -20

#what is the lowest order number?
min(orders)
#[1] 1000

#what position has some entry in a vector? (1, 2, 3, ...)
which.min(orders)
#[1] 6  
# means that the 6th month is the month with the lowest orders

# get the 6th row vs get the row that has the lowest orders
myMatrix[6, ]
# month orders  costs 
#     6   1000  16000 
myMatrix[which.min(orders), ]
# month orders  costs 
#     6   1000  16000 

#get the costs for the month with the lowest orders
myMatrix[which.min(orders), "costs"]
# costs 
# 16000 

#variable costs: difference in costs vs difference in activity
diffCosts <- myMatrix[which.max(orders), "costs"] - myMatrix[which.min(orders), "costs"] 
diffCosts
# costs 
# 36000 

diffActivity <- myMatrix[which.max(orders), "orders"] - myMatrix[which.min(orders), "orders"]
diffActivity
# orders 
#   3000

variableCosts <- diffCosts / diffActivity
variableCosts
# costs 
#    12 
