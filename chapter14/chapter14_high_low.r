 
# set the working directory (where the files are, so no paths are needed when loading/saving data)
# change this to your directory
setwd('E:teaching/2015_acg5075_r/chapter14')

# read csv file with columns: month,orders,costs
mydata = read.csv("dataset.csv")  

# without setwd, the read would be:
# mydata = read.csv("E:teaching/2015_acg5075_r/chapter14/dataset.csv") 

#outputs dataset
mydata 

# data for third row (third month)
mydata [ 3, ]

# output orders for third month
mydata[ 3, 'orders']

# output all orders
mydata[  , 'orders']	

#same
mydata$orders

# lowest orders
min( mydata$orders ) 

# which element of the orders is the lowest?
lowestIndex <- which.min( mydata$orders ) 

# month with lowest orders
lowMonth <- mydata[ lowestIndex, ]

#month with highest orders
highMonth <- mydata[  which.max( mydata$orders) , ] 

#variable costs: slope through lowMonth, highMonth
#difference in orders: highMonth$orders - lowMonth$orders
highMonth$costs - lowMonth$costs

# difference in cost: highMonth$costs - lowMonth$costs
highMonth$orders - lowMonth$orders

# slope: (highMonth$costs - lowMonth$costs) / (highMonth$orders - lowMonth$orders)
varCost <- (highMonth$costs - lowMonth$costs) / (highMonth$orders - lowMonth$orders)


