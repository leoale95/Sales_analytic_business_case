-- Cleaned Internet Sales Query
SELECT 
      [ProductKey],              -- Unique identifier for the product
      [OrderDateKey],            -- Key representing the order date
      [DueDateKey],              -- Key representing the due date for the order
      [ShipDateKey],             -- Key representing the shipping date
      [CustomerKey],             -- Unique identifier for the customer
      [SalesOrderNumber],        -- Sales order identification number
      [SalesAmount]              -- Total sales amount for the order
FROM 
      [AdventureWorksDW2022].[dbo].[FactInternetSales] -- Source table containing Internet Sales facts
WHERE 
      -- Filter sales from the last 12 years (uncomment the line below if filtering is required)
      -- LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) - 12
ORDER BY 
      OrderDateKey ASC;          -- Sort results by the order date in ascending order
