-- Cleansed dim_DataTable Query
SELECT  
      [DateKey],                                 -- Unique key representing the date
      [FullDateAlternateKey] AS [Date],         -- Full date in alternate key format
      [EnglishDayNameOfWeek] AS [Day],          -- Day name in English
      [WeekNumberOfYear] AS [Weeknr],           -- Week number of the year
      [EnglishMonthName] AS [Month],            -- Full month name in English
      LEFT([EnglishMonthName], 3) AS [MonthShort], -- Abbreviated month name (first 3 characters)
      [MonthNumberOfYear] AS [MonthNo],         -- Numeric representation of the month
      [CalendarQuarter] AS [Quarter],           -- Calendar quarter of the date
      [CalendarYear] AS [Year]                  -- Calendar year of the date
FROM 
      [AdventureWorksDW2022].[dbo].[DimDate]    -- Date dimension table
WHERE 
      [CalendarYear] >= 2012                    -- Filter for dates from the year 2012 onwards
