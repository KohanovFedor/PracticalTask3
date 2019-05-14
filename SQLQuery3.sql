USE [MyDB]
GO

SELECT TOP 1 NameClient as Client FROM [Clients] cl
INNER JOIN [ObjectsClients] oc ON oc.IdClients = cl.Id 
INNER JOIN [Objects] ob ON ob.Id = oc.IdObject
INNER JOIN [ObjectsSectionNet] osn ON osn.IdObject = ob.Id
INNER JOIN [SectionNet] sn ON sn.Id = osn.IdSectionNet
INNER JOIN [TypesSectionNet] tsn ON tsn.Id = sn.IdTypeSectionNet
WHERE tsn.Id = 1
GROUP BY NameClient
ORDER BY COUNT(NameClient) DESC

GO