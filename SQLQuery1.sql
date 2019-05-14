USE [MyDB]
GO

SELECT NameMicroDistrict FROM [Microdistrict] m
INNER JOIN [Buildings] b ON b.IdMicrodistrict = m.Id
INNER JOIN [Objects] ob ON ob.IdBuilding = b.Id
GROUP BY NameMicroDistrict
ORDER BY NameMicroDistrict DESC
GO