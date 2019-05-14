USE [MyDB]
GO

CREATE TABLE [Microdistrict] (
	[Id] int IDENTITY(1,1) NOT NULL,
	[NameMicroDistrict] varchar(255) NOT NULL,
	)
GO

CREATE TABLE [Buildings](
	[Id] int IDENTITY(1,1) NOT NULL,
	[NameBuildings] varchar(255) NOT NULL,
	[IdMicrodistrict] int NOT NULL,
	)
GO

CREATE TABLE [Objects](
	[Id] int IDENTITY(1,1) NOT NULL,
	[NameObject] nvarchar(255) NOT NULL,
	[IdBuilding] int NOT NULL,)
GO

CREATE TABLE [TypesSectionNet](
	[Id] int IDENTITY(1,1) NOT NULL,
	[NameType] varchar(255) NOT NULL
	)
GO

CREATE TABLE [TypeOfInsulation](
	[Id] int IDENTITY(1,1) NOT NULL,
	[NameTypeOfInsulation] varchar(255) NOT NULL
	)
GO

CREATE TABLE [SectionNet](
	[Id] int IDENTITY(1,1) NOT NULL,
	[NameSectionNet] varchar(255) NOT NULL,
	[IdTypeSectionNet] int NOT NULL,
	[IdTypeOfInsulation] int NOT NULL
	)
GO

CREATE TABLE [ObjectsSectionNet](
	[IdObject] int NOT NULL,
	[IdSectionNet] int NOT NULL
	)
GO

CREATE TABLE [Clients](
	[Id] int IDENTITY(1,1) NOT NULL,
	[NameClient] varchar(255) NOT NULL
	)
GO

CREATE TABLE [ObjectsClients](
	[IdObject] int NOT NULL,
	[IdClients] int NOT NULL
)
GO
