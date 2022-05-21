# Shopify Data Science Challenge

![Shopify](shopify-logo.jpg)

# Challenge Description

On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 

1. Think about what could be going wrong with our calculation. Think about a better way to evaluate this data. 
2. What metric would you report for this dataset?
3. What is its value?

# Summary Analysis


## Question 1 - Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.

In the dataset provided, there are 17 extreme outlier observations with a value of 2000. A better way to evaluate this data is to remove the extreme outliers as demonstrated in the boxplots below. However, please note only 12 extreme outliers are observed in the boxplots because there are 5 duplicate orders throughout the 30-day period where there are also oberservations of 2000. Please refer to the `Total Outliers Table` screenshot below. Duplicate orders are highlighted in red.

## Total Items Outliers Analysis

![total_items](Images/total_items.png)


## Total Amount Outliers Analysis
![order_amount](Images/order_amount.png)


## Total Outliers Table
![outliers_table](Images/outliers_table.png)

## Question 2 - What metric would you report for this dataset?

I would report an outlier-adjusted AOV metric by removing the extreme outliers from the AOV calculation.

## Question 3 - What is its value?

The outlier-adjusted AOV metric is $754.09 compared to the naive AOV of $3145.13.