USE [MyDB]
GO

ALTER TABLE [Buildings] ADD CONSTRAINT [FK_Buildings_IdMicrodistrict] 
FOREIGN KEY([IdMicrodistrict])  REFERENCES [Microdistrict] ([Id]);
GO

ALTER TABLE [Objects] ADD CONSTRAINT [FK_Objects_IdBuilding] 
FOREIGN KEY([IdBuilding])  REFERENCES [Buildings] ([Id]);
GO

ALTER TABLE [ObjectsClients] ADD CONSTRAINT [FK_ObjectsClients_IdObject] 
FOREIGN KEY([IdObject])  REFERENCES [Objects] ([Id]);
GO

ALTER TABLE [ObjectsClients] ADD CONSTRAINT [FK_ObjectsClients_IdClients] 
FOREIGN KEY([IdClients])  REFERENCES [Clients] ([Id]);
GO

ALTER TABLE [SectionNet] ADD CONSTRAINT [FK_SectionNet_IdTypeSectionNet] 
FOREIGN KEY([IdTypeSectionNet])  REFERENCES [TypesSectionNet] ([Id]);
GO

ALTER TABLE [SectionNet] ADD CONSTRAINT [FK_SectionNet_IdTypeOfInsulation] 
FOREIGN KEY([IdTypeOfInsulation])  REFERENCES [TypeOfInsulation] ([Id]);
GO

ALTER TABLE [ObjectsSectionNet] ADD CONSTRAINT [FK_ObjectsSectionNet_IdObject] 
FOREIGN KEY([IdObject])  REFERENCES [Objects] ([Id]);
GO

ALTER TABLE [ObjectsSectionNet] ADD CONSTRAINT [FK_ObjectsSectionNet_IdSectionNet] 
FOREIGN KEY([IdSectionNet])  REFERENCES [SectionNet] ([Id]);
GO