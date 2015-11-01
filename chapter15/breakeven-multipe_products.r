#break-even multiple products

# computing a value-weighted average

# product A, CM of $10
# product B, CM of $6

# for each 1 unit of A, 2 units of B are sold
volumes <- c(1, 2)
# contribution margins
CMs <- c(10, 6)

#make the volumes relative
vol_weights <- volumes / sum(volumes)
vol_weights
#[1] 0.3333333 0.6666667

# weighted CM
CM_weighted <- weighted.mean(  CMs, vol_weights )
CM_weighted
#[1] 7.333333

#if fixed costs are $10,000 then break-even is
beUnits <- 10000/CM_weighted
beUnits
#1363.636

#volumes
beUnits * vol_weights
#[1] 454.5455 909.0909
#454.5 units of A, 909 units of B (adds up to beUnits)
