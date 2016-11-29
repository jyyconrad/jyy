CREATE TABLE [dbo].[DeviceInfos]--设备信息
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NULL, 
    [Type] INT NULL, 
    [IMEI] NVARCHAR(100) NULL, 
    [DeviceCode] NVARCHAR(100) NULL, 
    [RegistrationId] NVARCHAR(100) NULL, 
    [CreationTime] DATETIME NULL, 
    [Status] INT NOT NULL DEFAULT 0, 
    [SourceCode] INT NULL 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'设备名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DeviceInfos',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'设备类型 1安卓 2 苹果 3wp 0未知',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DeviceInfos',
    @level2type = N'COLUMN',
    @level2name = N'Type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'设备IMEI',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DeviceInfos',
    @level2type = N'COLUMN',
    @level2name = N'IMEI'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'设备ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DeviceInfos',
    @level2type = N'COLUMN',
    @level2name = 'DeviceCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'在第三方注册ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DeviceInfos',
    @level2type = N'COLUMN',
    @level2name = N'RegistrationId'


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'渠道号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DeviceInfos',
    @level2type = N'COLUMN',
    @level2name = N'SourceCode'