# Module-15-MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![Image](https://github.com/cstern28/Module-15-MechaCar_Statistical_Analysis/blob/main/deliv1_image.png)

- The following variables vehicle_length and ground_clearance provided a non-random amount of variance to the mpg values in the dataset because their Pr was greater than the p-value of 5.35e-11.
- The p-Value for the model is 5.35e-11, which is 5.35 x 10 ^-11 or equal to 0.0000000000535. Therefore, since the p-value is much smaller than the significance level of 0.05%, there is sufficient evidence to reject our mull hypothesis, and indicates the slope of the linear model is not 0.
- The linear model has a value of .6825 for the r-squared, which means about 68% of all mpg predictions can be determined by this model. Therfore, this multiple regression model does predict the mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
![Image](https://github.com/cstern28/Module-15-MechaCar_Statistical_Analysis/blob/main/deliv2_image1.png)
Based on the total statistics for suspension coils, the results show that MechaCar design specifications are being met because the variance is about 62, which is less than 100 pounds per square inch.

![Image](https://github.com/cstern28/Module-15-MechaCar_Statistical_Analysis/blob/main/deliv2_image2.png)
Based on the lot total statistics for suspension coils, the results show that MechaCar design specifications are being met for only lots 1 and 2, which variances of lot 1 are .98 and lot 2 are 7.5 are significantly under 100 pounds per square inch. Lot 3 is an outlier because the variance is 170 and the coils are not meeting design specifications.

## T-Tests on Suspension Coils
![Image](https://github.com/cstern28/Module-15-MechaCar_Statistical_Analysis/blob/main/deliv3_image1.png)
This shows that there is not enough evidence to support rejecting the null hypothesis because the p-Value of 0.06 is higher than the signficance level of 0.05. One can also see that the mean is about 1,499.

![Image](https://github.com/cstern28/Module-15-MechaCar_Statistical_Analysis/blob/main/deliv3_image2.png)
Based on the lot t.tests, one can see with lot 1 p-Value of 1 and lot 2 p-Value of 0.6, the null hypothesis cannot be rejected and there is no statistical difference between the sample mean and the population mean of 1500. Based on lot 3 p-Value of 0.04, one must reject the null hypothesis and the sample mean and population mean of 1500 are statistically different.

## Study Design: MechaCar vs. Competition

I would collect the data for comparable models across all major manufacturers for past 3 years with the following metrics:

Current Price (Selling): Dependent Variable

Safety Feature Rating: Independent Variable,
Drive Package : Independent Variable,
Highway Fuel Efficiency: Independent Variable,
Engine (Electric, Hybrid, Gasoline / Conventional): Independent Variable,
Resale Value: Independent Variable, and
Average Annual Cost of ownership (Maintenance): Independent Variable.

The Null Hypothesis: MechaCar is priced accurately based on its performance of key factors for its car.

Alternative Hypothesis: MechaCar is not priced accurately based on performance of key factors for its car.

For the Statistical Tests: A multiple linear regression would be used to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price.
