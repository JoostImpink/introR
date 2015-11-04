#function that finds variable costs
# M: matrix that holds an activityVar and a costVar
# activityVar: column name of activity variable (e.g. "orders")
# costVar: column name of cost variable (e.g. "costs")
myHighLow <- function (matrix, activityVar, costVar){ 	
	# get orders/activity
	orders <- myMatrix[ , activityVar]
	# compute difference in costs, and difference in activity
	diffCosts <- matrix[which.max(orders), costVar] - matrix[which.min(orders), costVar] 
	diffActivity <- matrix[which.max(orders), activityVar] - matrix[which.min(orders), activityVar]
	# slope 
	return (diffCosts / diffActivity ) 
}