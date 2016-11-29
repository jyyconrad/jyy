CREATE TABLE [dbo].[Sources]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Type] INT NULL, 
    [PackageName] NVARCHAR(200) NULL, 
    [Code] NVARCHAR(200) NULL, 
    [Name] NVARCHAR(50) NULL, 
    [Status] INT NOT NULL DEFAULT 1, 
    [IsActive] BIT NULL, 
    [CreationTime] DATETIME NULL, 
    [CreatorUserId] BIGINT NULL, 
    [LastModificationTime] DATETIME NULL, 
    [LastModifierUserId] BIGINT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'类型1安卓2苹果3wp4 PC端（官网） 5公众号 6通知',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Sources',
    @level2type = N'COLUMN',
    @level2name = N'Type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'包名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Sources',
    @level2type = N'COLUMN',
    @level2name = N'PackageName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'渠道号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Sources',
    @level2type = N'COLUMN',
    @level2name = N'Code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'渠道名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Sources',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'数据状态',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Sources',
    @level2type = N'COLUMN',
    @level2name = N'Status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否启用',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Sources',
    @level2type = N'COLUMN',
    @level2name = N'IsActive'