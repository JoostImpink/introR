# read dat
# the dataset is not on github (it is proprietary data)
myData = read.csv("E:teaching/2015_acg5075_r/wrds_data/1db085f4e5130fbb.csv") 

#number of obs
nrow(myData)
#[1] 6392

#show first records
head(myData)

#Tobin's q
myData$q <- (myData$at - myData$ceq + myData$prcc_f * myData$csho) / myData$at

# keep if assets are positive (would get infinite q values otherwise)
myData <- myData [ myData$at > 0,]

#number of obs is now lower
nrow(myData)
#[1] 6354

# drop rows where q is not numeric
# use of complete.cases: http://stat.ethz.ch/R-manual/R-patched/library/stats/html/complete.cases.html
myData <- myData[complete.cases(myData),]

#create variable that holds yearly median q, fun is function to apply (median)
myAvg <- aggregate(myData$q, by=list(myData$fyear), FUN=median)

# as matrix (easier to deal with)
asM <- as.matrix(myAvg)
asM
#       Group.1         x
#  [1,]    1999 1.3138537
#  [2,]    2000 1.4681244
#  [3,]    2001 1.3413399
#  [4,]    2002 1.3786471
#  [5,]    2003 1.6268107
#  [6,]    2004 1.8003359
#  [7,]    2005 2.0561987
#  [8,]    2006 1.7072194
#  [9,]    2007 1.5274536
# [10,]    2008 0.9915084
# [11,]    2009 1.3756427
# [12,]    2010 1.6999887
# [13,]    2011 1.3850571
# [14,]    2012 1.2670636
# [15,]    2013 1.2941523

#plot: first argument specifies column with numbers, second argument specifies column with names
barplot(asM[ ,2], names.arg = asM[ ,1])

#more here, http://www.harding.edu/fmccown/r/
