CREATE TABLE [dbo].[Judgments]--评价表
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Content] NVARCHAR(500) NOT NULL, 
    [Star] DECIMAL(2, 1) NOT NULL, 
    [JudgReciver] NVARCHAR(50) NOT NULL, 
    [Type] INT NOT NULL DEFAULT 1, 
    [CreationTime] DATETIME NOT NULL DEFAULT getdate(), 
    [CreationMemberId] BIGINT NOT NULL, 
    [Status] INT NOT NULL DEFAULT 0, 
    [LastModificationTime] DATETIME NULL, 
    [LastModifierUserId] BIGINT NULL, 
    [JudgReciveId] BIGINT NULL, 
    [CreationMemberName] NVARCHAR(50) NULL, 
    [CreatorUserId] BIGINT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'星级，暂时不做半颗星',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'Star'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'评价对应的成员名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'JudgReciver'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'评价类型 1 医生 2 陪诊',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'Type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'评价时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'CreationTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'评价人',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'CreationMemberId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'数据状态 0 默认 -1 删除  9管理员禁言',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'Status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'修改该评价人员ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = 'LastModifierUserId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'评价对应的成员id 如doctorId，陪诊ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'JudgReciveId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'评价人姓名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'CreationMemberName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建人ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Judgments',
    @level2type = N'COLUMN',
    @level2name = N'CreatorUserId'