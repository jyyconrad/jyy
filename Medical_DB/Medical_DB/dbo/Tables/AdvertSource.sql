CREATE TABLE [dbo].[CapaignSource]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [RelationId] INT NULL, 
    [SourceId] INT NULL, 
    [LinkTable] NVARCHAR(50) NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'关联表名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'CapaignSource',
    @level2type = N'COLUMN',
    @level2name = N'LinkTable'