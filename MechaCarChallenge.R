library(dplyr)
mechacar <- read.csv(MechaCar_mpg.csv)
lm(qsec ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechacar) #generate multiple linear regression model
summary(lm(qsec ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechacar) #generate multiple linear regression model)