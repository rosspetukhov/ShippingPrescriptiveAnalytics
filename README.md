# Shipping Prescriptive Analytics (in development)

In logistics, a route between point A (factory, distribution centre, etc) and point B (customer) can be called a shipping lane. 
For large buiness, there can be many shipment origins and destinations that may result 100,000+ potential routes. 

As it is challenging to remember the importance of each lane for the business, I was asked to create a model to categorize a shipping lane into several buckets. 
For example, shipping lane can be categorized as "High importance", "Medium Importance", "Low Importance" or "Special". 
I was provided with a sample of previously categorized lanes (labelled data points) and potential factors that affected the decisions (features). 

The workflow was following:
1. Step 1. Gather data for all routes using SQL (see Step1_SQL_input.sql file).
1. Step 2. Develop a Machine Learning model based on labelled data using Python (see Step2_3_Python_analysis.ipynb file).
1. Step 3. Categorize all routes using the developed model and provide results to the operational team as a csv file (see Step2_3_Python_analysis.ipynb file).

*Note: the data used in the repository is made-up to avoid sharing corporate data. It is based on a real-life business case, so the approach can be applied to any business that is facing the same challenge.*

![ShippingPrescriptiveAnalytics](https://github.com/rosspetukhov/ShippingPrescriptiveAnalytics/blob/main/ShippingPrescriptiveAnalytics.jpg)
