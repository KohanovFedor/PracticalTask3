USE [MyDB]
GO


CREATE UNIQUE INDEX [IndexObjectsObjectsClients]
ON [ObjectsClients]
	(
		[IdObject] ASC,
		[IdClients] ASC
	)
GO

CREATE UNIQUE INDEX [IndexObjectsSectionNet]
ON [ObjectsSectionNet]
	(
		[IdObject] ASC,
		[IdSectionNet] ASC
	)
GO