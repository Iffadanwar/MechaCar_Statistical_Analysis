# MechaCar Statistical Analysis Challenge

## Assignment Summary
Background
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
Run t-tests to determine if the manufacturing lots are statistically different from the mean population
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
What You're Creating
This new assignment consists of three technical analysis deliverables and a proposal for further statistical study. You’ll submit the following:

Deliverable 1: Linear Regression to Predict MPG
Deliverable 2: Summary Statistics on Suspension Coils
Deliverable 3: T-Test on Suspension Coils
Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Linear Regression to Predict MPG
### Deliverable 1 Goal:
The `MechaCar_mpg.csv` dataset contains mpg test results for 50 prototype MechaCars. This data set holds values from 6 key variables "mpg" (miles per gallon), "vehicle_length", "vehicle_weight", "spoiler_angle", "ground_clearance", "AWD". Our goal is to perform a multipoint linear regression and determine which variable statistically is linked to mpg value.

### Deliverable 1 results:
![diliv 1.1](https://github.com/Iffadanwar/MechaCar_Statistical_Analysis/blob/main/images/diliv1.1.png)

**mgp = (6.267)vehicle_weight + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD - 104.0**

![diliv 1.2](https://github.com/Iffadanwar/MechaCar_Statistical_Analysis/blob/main/images/diliv1.2.png)

- As seen in the above results, **vehicle length**, and **vehicle ground clearance** have a statistically significant impact on **mpg**. **vehicle weight**, **spoiler angle**, and **All Wheel Drive** (AWD) shows p-values that show random variance with the data set.

- The p-value of the model, **p-Value: 5.35e-11**, is less than 0.05% significant level. The p-value allows us to **reject our null hypothesis**. this alow shows that the slope of the linear model is not 0.

- The **r-squared: 0.7149** meaning that 71% of all mpg predictions will be determined by this model. Relatively speaking, this model **does predict mpg of MechaCar prototypes effectively**.

- If we remove vehicle weight, spoiler angle, and All-Wheel Drive (AWD) from the model as they are not statistically significant. the r-squared values slightly drop from 0.7149 to 0.674.

![diliv 1.3](https://github.com/Iffadanwar/MechaCar_Statistical_Analysis/blob/main/images/diliv1.3.png)

## Summary Statistics on Suspension Coils
### Deliverable 2 Goal:
Suspension_Coil.csv contains results from multiple lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across lots. 

### Deliverable 2 results:

Our total summary data frame

![diliv 2.1](https://github.com/Iffadanwar/MechaCar_Statistical_Analysis/blob/main/images/diliv2.1.png)

Our lot summary data frame.

![diliv 2.2](https://github.com/Iffadanwar/MechaCar_Statistical_Analysis/blob/main/images/diliv2.2.png)

- When we take a look and the total summary, the PSI variance is 62.29psi which is well within the 100psi variance requirement.

- when we break the data down by lots, lot1 and lot2 are well within the requirements with a 0.98psi and 7.47psi variance respectively.

- lot3 however has a much higher variance with 170.29psi well above the 100psi variance. Lot 3 disproportionally affects the mean-variance in the total data to skew higher.

-This box plot shows the distribution of variance per lot.

![diliv 2.3](https://github.com/Iffadanwar/MechaCar_Statistical_Analysis/blob/main/images/diliv2.3.png)

## t-Tests on Suspension Coils
### Deliverable 3 Goal:
Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### Deliverable 3 results:
This is the initial t-test result to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

![diliv 3.1](https://github.com/Iffadanwar/MechaCar_Statistical_Analysis/blob/main/images/diliv3.1.png)

- As seen above, the **mean of the sample is 1498.78.** The **p-value: 0.06** is above the significance level 0.05 so we fail to reject the null hypothesis. The mean of these 3 lots is statistically similar to the 1500 population.

Let's look at each lot individually.

![diliv 3.2](https://github.com/Iffadanwar/MechaCar_Statistical_Analysis/blob/main/images/diliv3.2.png)

- lot1 has the **true mean of the sample is 1500.** The **p-value: 1** is above the significance level 0.05 so we fail to reject the null hypothesis. There is no difference between the population and observed sample.
- lot2 has the **mean of the sample 1500.02.** The **p-value: 0.61** is above the significance level 0.05 so we fail to reject the null hypothesis. There is no statistical difference between the population and observed sample.
- lot3 has the **mean of the sample 1469.14.** The **p-value: 0.04168** is below the significance level 0.05 so we reject the null hypothesis. There IS a difference between the population and observed sample.

there may be issues stemming from the lot3 manufacturing cycle and they need to be addressed. 

## Study Design: MechaCar vs Competition
### Deliverable 4 Design Topic:
This study would involve collecting data on MechaCar and its comparable models across several different manufacturers over the last 3 years.

- What are the competitions' comparable models, 
- Which cars will MechaCar be competing with head-to-head? which cars will be included in the study?
- Which factors will look at the study to determine the relevant to selling price?

### Deliverable 4 Design:
Collecting data for comparable models across all major manufacturing companies for the past 3 years for the following metrics:

-  Safety Feature Ratings: **Independent Variable**
-  Current Selling Price: **Dependent Variable**
-  Drive Package: **Independent Variable**
-  Engine Category (Electric, Hybrid, Conventional): **Independent Variable**
-  Resale Value: **Independent Variable**
-  Average Annual Cost of Maintenance: **Independent Variable**
-  MPG (Gasoline Efficiency): **Independent Variable**


#### Hypothesis: Null and Alternative
After determining which factors are key for the MechaCar's genre:

- Null Hypothesis: Is MechaCar pricing its vehicles similar to its competitors based on its performance on key variables.
- Null Hypothesis: Is MechaCar **NOT** pricing its vehicles similar to its competitors based on its performance on key variables.

#### Statistical Tests
- Multiple linear regression needs to be used to determine the factors that have the highest predictability with the list selling price (dependent variable). 
- Which of these have the highest impact in combination?
- do all of them affect it?

##### MechaCar Analysis - by Iffad Anwar
