# set the working directory (where the files are, so no paths are needed when loading/saving data)
# change this to your directory
# if you've already set it, no need to set it again
setwd('E:teaching/2015_acg5075_r/introR')

# read csv file with columns: month,orders,costs
# if already loaded, no need to load it again
myData = read.csv("chapter14/dataset.csv") 

# regression
# dependent variable costs, independent variable orders
fit <- lm(costs ~ orders, data=myData)
summary(fit)

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

#diagnostics
layout(matrix(c(1,2,3,4),2,2))
plot(fit)