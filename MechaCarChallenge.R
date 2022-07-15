#Deliverable 1
#load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv
car_data <- read.csv('MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
head(car_data)

#create multiple linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data)

#generate summary stats
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data))

#Deliverable 2
#Import and read in the Suspension_Coil.csv
sc_data <- read.csv('Suspension_Coil.csv',check.names = F, stringsAsFactors = F)
head(sc_data)

#Use summarize function to to create summary dataframe
summarize_sc <- sc_data %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),var_PSI=var(PSI),std_dev_PSI=sd(PSI),Num_coil=n(), .groups = 'keep')

#Create lot summary using group_by and summarize function
total_summary <- sc_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),var_PSI=var(PSI),std_dev_PSI=sd(PSI),Num_coil=n(), .groups = 'keep')

#Deliverable 3
#use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(sc_data$PSI,mu=1500)

#Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(sc_data, Manufacturing_Lot=="Lot1")
lot2 <- subset(sc_data, Manufacturing_Lot=="Lot2")
lot3 <- subset(sc_data, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)



