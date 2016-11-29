CREATE TABLE [dbo].[MessageTemplates] (
    [Id]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [TemplateType] INT            NOT NULL,
    [Template]     NVARCHAR (500) NOT NULL,
    [Status]       INT            NOT NULL,
    [Updatetime]   DATETIME       CONSTRAINT [DF_MessageTemplates_Updatetime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MessageTemplates] PRIMARY KEY CLUSTERED ([Id] ASC)
);

