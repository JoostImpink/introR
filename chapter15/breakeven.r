setwd('E:teaching/2015_acg5075_r/introR')

# read csv file with columns: month,orders,costs
myCosts = read.csv("chapter15/costdata.csv")  
myCosts
#       description fixed variable
# 1 Plant materials     0      0.5
# 2             Pot     0      0.3
# 3           Labor  8000      0.7
# 4       Utilities  9000      0.0
# 5            Rent  7500      0.0
# 6     Other costs  2500      0.0

# in chapter 14 example we transformed it into a matrix with as.matrix
# we don't need to do that here (matrix requires all columns to be of 
# same type, which is not the case as description is text and costs are numbers)

# without setwd, the read would be:
# myData = read.csv("E:teaching/2015_acg5075_r/introR/chapter15/costdata.csv") 

#break-even point: sales = expenses, or fixed coss = contribution margin
sales <- 15 # sales price $15 per plant

#we can get to a column name with $
myCosts$variable
#[1] 0.5 0.3 0.7 0.0 0.0 0.0
myCosts$fixed
#[1]    0    0 8000 9000 7500 2500

#Contribution margin: sales - total variable costs per unit
CM <- sales - sum(myCosts$variable)
CM
#[1] 13.5

#total fixed costs
fixed <- sum(myCosts$fixed)
fixed
#[1] 27000

#break-even #units
beUnits <- fixed/CM
beUnits
#[1] 2000

#break even sales ($) is breakEven units x $15 per unit
cat("Break even sales in $ ", beUnits * sales)
#Break even sales in $  30000

#profit target, $10,000 after tax, is $10,000 / 0.65 if tax reate is 35%
unitsForTarget <- (fixed / 0.65) / CM
unitsForTarget
#[1] 3076.923