--- Cleansed DIM_Customer Table---
SELECT 
  c.customerkey AS CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname AS FirstName, 
  --,[MiddleName]
  c.lastname AS LastName, 
  c.firstname + ' ' + lastname AS [FullName], 
  --,[NameStyle]
  --   ,[BirthDate]
  --   ,[MaritalStatus]
  --   ,[Suffix]
  CASE c.gender WHEN 'M' then 'Male' WHEN 'F' then 'FEMALE' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --,[CommuteDistance]
  g.city AS [Customer City] 
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC --FROM [AdventureWorksDW2019].[dbo].[DimCustomer]
