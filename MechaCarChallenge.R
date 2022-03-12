library(dplyr)

###### Deliverable 1 ######
#import csv file
MechaCar_mpg <- read.csv("resources/MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

#summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))

#Additional Step: eliminate the independent variables that have little impact on predicting mpg to see impact:
lm(mpg ~ vehicle_length + ground_clearance, data = MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data = MechaCar_mpg))


###### Deliverable 2 ######
#import csv file
Suspension_Coil <- read.csv("resources/Suspension_Coil.csv",check.names=F,stringsAsFactors = F)

#summarize() data
total_summary <- Suspension_Coil %>% summarize(
  mean_PSI= mean(PSI),
  median_PSI = median(PSI),
  variance_PSI = var(PSI),
  std_dev_PSI = sd(PSI),
  Num_coil = n(), .groups = "keep")

#summarize() data by lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(
  mean_PSI= mean(PSI),
  median_PSI = median(PSI),
  variance_PSI = var(PSI),
  std_dev_PSI = sd(PSI),
  Num_coil = n(), .groups = "keep")

#box plot for variance per lot
plt1 <- ggplot(Suspension_Coil,aes(x=Manufacturing_Lot,y=PSI))
plt1 + geom_boxplot()


###### Deliverable 3 ######
# t.test() to determine if the PSI across ALL lots is statistically different from the pop.
t.test(Suspension_Coil$PSI, mu=1500)

# t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)

#Data was not skewed so it did not need log10 or any normalization

#Syed Iffad Anwar









