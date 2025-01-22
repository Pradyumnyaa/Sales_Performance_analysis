Create database sales_performance_analysis
Go
Use sales_performance_analysis
Go 
Create table sales (Transaction_ID int,	Dates date,	Product varchar ,Category varchar,	Region varchar,	Sales int, Quantity int,Discount int);
Create table customer_feedback (Customer_ID int,Region varchar,Satisfaction_Rating int, Feedback_Comment varchar);

Select * from sales_data;
Select * From customer_feedback;


--1)Total sales, average sales, and total quantity sold by category and region.

Select * From Sales_Data;

Select category, Region, SUM(Sales) AS Total_Sales, AVG(Sales) AS Avg_Sales, SUM(Quantity) AS Total_Quantity 
from sales_data
Group by category, Region;

--2)Identify the top 5 products contributing the most to revenue.

Select * From Sales_Data;

 Select Top 5 Product, SUM(Sales) AS Total_Sales 
From sales_data
Group by Product 
Order by  Total_Sales DESC;

--3)Analyze whether discounts correlate with increased sales volumes.

--4)Calculate the average satisfaction rating per region.

Select * From customer_feedback;

Select Region, AVG(Satisfaction_Rating) AS Avg_Rating 
From customer_feedback
Group By Region;

--5)Identify regions with the lowest ratings for further investigation.

Select * From customer_feedback;

Select Region, satisfaction_rating
From customer_feedback
Where 
satisfaction_rating= (Select Min(satisfaction_rating) From customer_feedback)
Order By satisfaction_rating;

