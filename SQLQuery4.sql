USE [MyDB]
GO

SELECT NameMicroDistrict, NameTypeOfInsulation, COUNT(NameTypeOfInsulation) AS ctoi FROM [TypeOfInsulation] AS toi
	INNER JOIN [SectionNet] AS sn ON sn.IdTypeOfInsulation = toi.Id
	INNER JOIN [ObjectsSectionNet] AS osn ON osn.IdSectionNet = sn.Id
	INNER JOIN [Objects] AS o ON o.Id = osn.IdObject
	INNER JOIN [Buildings] AS b ON b.Id = o.IdBuilding
	INNER JOIN [Microdistrict] AS m ON m.Id = b.IdMicrodistrict 
GROUP BY ROLLUP(NameMicroDistrict, NameTypeOfInsulation)
HAVING NameTypeOfInsulation IS NOT NULL
ORDER BY NameMicroDistrict, ctoi DESC
GO