CREATE TABLE [dbo].[Informations] (
    [Id]                   INT            IDENTITY (1, 1) NOT NULL,
    [Title]                NVARCHAR (50)  NOT NULL,
    [Profile]              NVARCHAR (100) NOT NULL,
    [DetailContent]        TEXT           NOT NULL,
    [Icons]                NVARCHAR (50)  NULL,
    [ImageUrl]             NVARCHAR (50)  NULL,
    [Status]               INT            NULL,
    [IsDeleted]            BIT            DEFAULT ((0)) NULL,
    [DeleterUserId]        BIGINT         NULL,
    [DeletionTime]         DATETIME       NULL,
    [LastModificationTime] DATETIME       NULL,
    [LastModifierUserId]   BIGINT         NULL,
    [CreationTime]         DATETIME       NULL,
    [CreatorUserId]        BIGINT         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'标题', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Informations', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'简介', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Informations', @level2type = N'COLUMN', @level2name = N'Profile';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'正文内容', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Informations', @level2type = N'COLUMN', @level2name = N'DetailContent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'缩略图', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Informations', @level2type = N'COLUMN', @level2name = N'Icons';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'图片地址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Informations', @level2type = N'COLUMN', @level2name = N'ImageUrl';

