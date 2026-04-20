1	-----Querry 1 filter all transaction that occured in the year 2023
	SELECT
	  *
	FROM
	  `my-practice-project-493417.Retail_Sales.Retail`
	WHERE
	  EXTRACT(YEAR FROM Date) = 2023
	LIMIT 1000;
	
	
2	----Querry 2  Filtering + Conditions .
	SELECT
	  *
	FROM
	  `my-practice-project-493417.Retail_Sales.Retail`
	QUALIFY `Total Amount` > AVG(`Total Amount`) OVER();
	
	
3	Querry 3 :Calculate the total revenue (sum of Total Amount).
	
	SELECT
	    SUM(Retail.`Total Amount`) AS total_revenue
	  FROM
	    `my-practice-project-493417.Retail_Sales.Retail` AS Retail
	
	
4	 ----Query 4:  Display all distinct Product Categories in the dataset.
	
	  select
	  distinct `Product Category`
	  FROM
	  `my-practice-project-493417.Retail_Sales.Retail`
	
	
5	----Query 5-for each Product Category, calculate the total quantity sold.
	SELECT
	    Retail.`Product Category`,
	    SUM(Retail.Quantity) AS total_quantity
	FROM
	    `my-practice-project-493417.Retail_Sales.Retail` AS Retail
	GROUP BY
	    Retail.`Product Category`;
	
6	Query 6  Case statement,Create a column called Age_Group that classifies customers as: – 'Youth' (<30)
	SELECT *,
	  CASE
	    WHEN Age < 30 THEN 'Youth'
	    ELSE 'Adult'
	  END AS Age_Group
	  FROM `my-practice-project-493417.Retail_Sales.Retail`;
	
	
7	For each Gender, count how many high-value transactions occurred (where Total Amount > 500).
	"SELECT retail.Gender, COUNTIF(retail.`Total Amount` > 500) AS high_value_transaction_count
FROM `my-practice-project-493417.Retail_Sales.Retail` AS retail 
GROUP BY retail.Gender;"
	
	
8	HAVING Clause: For each Product Category, show only those categories where the total revenue exceeds 5,000
	
	SELECT
	    Retail.`Transaction ID`,
	    Retail.Date,
	    Retail.`Customer ID`,
	    Retail.Gender,
	    Retail.Age,
	    Retail.`Product Category`,
	    Retail.Quantity,
	    Retail.`Price per Unit`,
	    Retail.`Total Amount`,
	    CASE
	        WHEN Retail.`Price per Unit` < 50 THEN 'Cheap'
	        WHEN Retail.`Price per Unit` BETWEEN 50 AND 200 THEN 'Moderate'
	        WHEN Retail.`Price per Unit` > 200 THEN 'Expensive'
	    END AS Unit_Cost_Category
	FROM
	    `my-practice-project-493417.Retail_Sales.Retail` AS Retail
	LIMIT 10;
	
	
10	"Display all transactions from customers aged 40 or older and add a column Spending_Level showing: –
 'High' if Total Amount > 1000 –
 'Low' otherwise"
	SELECT
	    retail.`Transaction ID`,
	    retail.`Date`,
	    retail.`Customer ID`,
	    retail.`Gender`,
	    retail.`Age`,
	    retail.`Product Category`,
	    retail.`Quantity`,
	    retail.`Price per Unit`,
	    retail.`Total Amount`,
	    CASE
	        WHEN retail.`Total Amount` > 1000 THEN 'High'
	        ELSE 'Low'
	    END AS Spending_Level
	FROM
	    `my-practice-project-493417.Retail_Sales.Retail` AS retail
	WHERE
	    retail.Age >= 40;

