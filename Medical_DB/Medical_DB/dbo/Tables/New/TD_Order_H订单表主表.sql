CREATE TABLE [dbo].[TD_Order_H]--订单表主表
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CreatorUserId] BIGINT NOT NULL, 
    [DeleterUserId] BIGINT NOT NULL, 
    [LastModifierUserId] BIGINT NOT NULL, 
    [CreationTime] DATETIME NOT NULL DEFAULT getdate(), 
    [LastModificationTime] DATETIME NOT NULL DEFAULT getdate(), 
    [DeletionTime] DATETIME NULL , 
    [MemberId] BIGINT NOT NULL, 
    [VisitId] BIGINT NOT NULL, 
    [PatientId] BIGINT NOT NULL, 
    [Status] INT NOT NULL, 
    [IsDeleted] BIT NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'关联用户表ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'MemberId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'关联排班表ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'VisitId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'关联患者表ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'PatientId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'数据状态',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'Status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否删除状态',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'IsDeleted'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'CreatorUserId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'删除者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'DeleterUserId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最终修改者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'LastModifierUserId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'创建时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'CreationTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最终修改时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'LastModificationTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'删除时间',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TD_Order_H',
    @level2type = N'COLUMN',
    @level2name = N'DeletionTime'