-- Cleansed DIM_Products Table Query
SELECT 
      [ProductKey],                                    -- Unique identifier for the product
      [ProductAlternateKey] AS [ProductItemCode],      -- Product item code (alternate key)
      [EnglishProductName] AS [Product Name],          -- Name of the product in English
      ps.EnglishProductSubcategoryName AS [Sub Category], -- Product subcategory name in English
      pc.EnglishProductCategoryName AS [Product Category], -- Product category name in English
      [Color] AS [Product Color],                     -- Color of the product
      [Size] AS [Product Size],                       -- Size of the product
      [ProductLine] AS [Product Line],                -- Product line information
      [EnglishDescription],                           -- Product description in English
      ISNULL(Status, 'Outdated') AS [Product Status]  -- Product status, defaults to 'Outdated' if NULL
FROM 
      [AdventureWorksDW2022].[dbo].[DimProduct] AS p    -- Product dimension table
      LEFT JOIN dbo.DimProductSubcategory AS ps         -- Subcategory dimension table
             ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey  -- Join condition with subcategory
      LEFT JOIN dbo.DimProductCategory AS pc           -- Category dimension table
             ON ps.ProductCategoryKey = pc.ProductCategoryKey       -- Join condition with category
ORDER BY 
      p.ProductKey ASC;                                -- Sort results by ProductKey in ascending order
