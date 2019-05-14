USE [MyDB]
GO

ALTER TABLE [Microdistrict]
ADD CONSTRAINT [PK_MicrodistrictId] PRIMARY KEY ([Id])
GO

ALTER TABLE [Buildings]
ADD CONSTRAINT [PK_Buildings] PRIMARY KEY ([Id])
GO

ALTER TABLE [Objects]
ADD CONSTRAINT [PK_Objects] PRIMARY KEY ([Id])
GO

ALTER TABLE [TypesSectionNet]
ADD CONSTRAINT [PK_TypesSectionNet] PRIMARY KEY ([Id])
GO

ALTER TABLE [TypeOfInsulation]
ADD CONSTRAINT [PK_TypeOfInsulation] PRIMARY KEY ([Id])
GO

ALTER TABLE [SectionNet]
ADD CONSTRAINT [PK_SectionNet] PRIMARY KEY ([Id])
GO

ALTER TABLE [Clients]
ADD CONSTRAINT [PK_Clients] PRIMARY KEY ([Id])
GO