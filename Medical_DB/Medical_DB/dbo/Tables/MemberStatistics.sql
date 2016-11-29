CREATE TABLE [dbo].[MemberStatistics]--用户操作操作行为统计
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Type] INT NOT NULL DEFAULT 0, 
    [RelationTable] NVARCHAR(50) NULL, 
    [RelationKey] BIGINT NULL, 
    [HandlerId] BIGINT NULL, 
    [DeviceId] BIGINT NULL, 
    [StatisQuantity] INT NULL, 
    [CreationTime] DATETIME NULL, 
    [LastModificationTime] DATETIME NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'操作类型',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MemberStatistics',
    @level2type = N'COLUMN',
    @level2name = N'Type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'关联的操作表',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MemberStatistics',
    @level2type = N'COLUMN',
    @level2name = N'RelationTable'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'关联操作表的主键',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MemberStatistics',
    @level2type = N'COLUMN',
    @level2name = N'RelationKey'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'操作人员ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MemberStatistics',
    @level2type = N'COLUMN',
    @level2name = 'HandlerId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'设备表ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MemberStatistics',
    @level2type = N'COLUMN',
    @level2name = N'DeviceId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'操作次数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MemberStatistics',
    @level2type = N'COLUMN',
    @level2name = N'StatisQuantity'