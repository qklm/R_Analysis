library(dplyr)
mechacar <- read.csv(file='MechaCar_mpg.csv')
# Linear model to test for nonrandom factors
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar))
# Loading in suspension coil
suscoil <- read.csv(file='Suspension_Coil.csv')
# Summary of PSI in dataset
total_summary <- suscoil  %>% summarise(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), StD = sqrt(var(PSI)))
# Dividing summary data into lots
lot_summary  <- suscoil  %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), StD = sqrt(var(PSI)))
