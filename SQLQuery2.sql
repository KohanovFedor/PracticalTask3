SELECT [IdObject]
FROM [ObjectsSectionNet]
GROUP BY [IdObject]
ORDER BY COUNT([IdObject]) DESC
GO