CREATE TABLE [dbo].[RuleSettings] (
    [Id]      INT            IDENTITY (1, 1) NOT NULL,
    [Status]  INT            DEFAULT ((0)) NOT NULL,
    [Content] NVARCHAR (200) NULL,
    [Sort]    INT            DEFAULT ((1)) NOT NULL,
    [Type]    INT            DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'状态', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RuleSettings', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'内容', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RuleSettings', @level2type = N'COLUMN', @level2name = N'Content';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'排序字段', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RuleSettings', @level2type = N'COLUMN', @level2name = N'Sort';

