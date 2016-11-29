CREATE TABLE [dbo].[Campaigns] (
    [Id]                   INT            IDENTITY (1, 1) NOT NULL,
    [Title]                NVARCHAR (20)  NOT NULL,
    [Profile]              NVARCHAR (200) NULL,
    [ImageUrl]             NVARCHAR (50)  NULL,
    [HybridUrl]            NVARCHAR (300) NULL,
    [StartDate]            DATETIME       NULL,
    [EndDate]              DATETIME       NULL,
    [FromType] INT NOT NULL DEFAULT 1, 
    [Status]               INT            NULL,
    [IsDeleted]            BIT            DEFAULT ((0)) NULL,
    [DeleterUserId]        BIGINT         NULL,
    [DeletionTime]         DATETIME       NULL,
    [LastModificationTime] DATETIME       NULL,
    [LastModifierUserId]   BIGINT         NULL,
    [CreationTime]         DATETIME       NULL,
    [CreatorUserId]        BIGINT         NULL,
    [PushStatus] BIT NULL, 
    [LinkType] INT NULL, 
    [Type] INT NULL, 
    [Sort] INT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'标题', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaigns', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'简介', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaigns', @level2type = N'COLUMN', @level2name = N'Profile';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'图片连接地址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaigns', @level2type = N'COLUMN', @level2name = N'ImageUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'正文连接地址 or 内部传参参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaigns', @level2type = N'COLUMN', @level2name = 'HybridUrl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'生效时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaigns', @level2type = N'COLUMN', @level2name = N'StartDate';





GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'数据状态', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaigns', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'1 官方 2 第三方',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Campaigns',
    @level2type = N'COLUMN',
    @level2name = N'FromType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'是否全部渠道',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Campaigns',
    @level2type = N'COLUMN',
    @level2name = N'PushStatus'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'1链接2内部跳转3视频4图片',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Campaigns',
    @level2type = N'COLUMN',
    @level2name = N'LinkType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'1 Branner 2 闪频 3 弹窗',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Campaigns',
    @level2type = N'COLUMN',
    @level2name = N'Type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'排序',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Campaigns',
    @level2type = N'COLUMN',
    @level2name = N'Sort'