-- Cleansed DIM_Customers Table Query
SELECT 
       [CustomerKey],                          -- Unique identifier for the customer
       [FirstName]                    AS [First Name],  -- Customer's first name
       [LastName]                     AS [Last Name],   -- Customer's last name
       [FirstName] + ' ' + [LastName] AS [Full Name],   -- Concatenated full name (First Name + Last Name)
       CASE Gender                                      
         WHEN 'M' THEN 'Male'                 -- Converts 'M' to 'Male'
         WHEN 'F' THEN 'Female'               -- Converts 'F' to 'Female'
       END                            AS [Gender],      -- Translated gender information
       [DateFirstPurchase],                    -- Date of the customer's first purchase
       g.City                         AS [Customer City] -- Customer's city from geography table
FROM   
       [AdventureWorksDW2022].[dbo].[DimCustomer] AS c  -- Customer dimension table
       LEFT JOIN dbo.DimGeography AS g                -- Geography dimension table
              ON g.GeographyKey = c.GeographyKey      -- Join condition between customer and geography
ORDER BY 
       [CustomerKey] ASC;                    -- Sort results by CustomerKey in ascending order
