CREATE TABLE [dbo].[PushMessage]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NULL, 
    [AlertContent] NVARCHAR(100) NULL, 
    [IsActive] BIT NULL, 
    [CreationTime] DATETIME NULL, 
    [LastModificationTime] DATETIME NULL, 
    [Type] INT NULL, 
    [RelationId] INT NULL, 
    [DeviceId] INT NOT NULL DEFAULT 0, 
    [MessageId] NVARCHAR(50) NULL, 
    [SendIdentity] NVARCHAR(50) NULL, 
    [IsRead] BIT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'消息标题',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = N'Title'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'消息内容',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = N'AlertContent'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否发送成功',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = N'IsActive'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'消息类型1系统消息 2预约3快递4系统默认通知 ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = N'Type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'关联表的主键 type 为2，3，4 时需要',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = N'RelationId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'设备表ID type为2 ，3 时需要',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = 'DeviceId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'第三方的消息ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = N'MessageId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'第三方消息的主键',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = N'SendIdentity'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否点击阅读',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PushMessage',
    @level2type = N'COLUMN',
    @level2name = N'IsRead'