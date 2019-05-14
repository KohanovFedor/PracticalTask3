USE [MyDB]
GO

SELECT TOP 3 NameBuildings, NameType, COUNT(NameType) AS cnt FROM [Buildings] AS b
	INNER JOIN [Objects] AS o ON o.IdBuilding = b.Id
	INNER JOIN [ObjectsSectionNet] AS osn ON osn.IdObject = o.Id
	INNER JOIN [SectionNet] AS sn ON sn.IdTypeOfInsulation = osn.IdSectionNet
	INNER JOIN [TypesSectionNet] AS tsn ON tsn.Id = sn.IdTypeSectionNet
WHERE tsn.Id = 2
GROUP BY NameType, NameBuildings
ORDER BY cnt DESC
GO