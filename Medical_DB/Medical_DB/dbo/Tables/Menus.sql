CREATE TABLE [dbo].[Menus] (
    [Id]         BIGINT        IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (50) NOT NULL,
    [ParentId]   BIGINT        NOT NULL,
    [Icon]       NVARCHAR (50) CONSTRAINT [DF_Menus_Icon] DEFAULT ('') NOT NULL,
    [Sort]       INT           NOT NULL,
    [Url]        NVARCHAR (50) CONSTRAINT [DF_Menus_Url] DEFAULT ('') NULL,
    [Area]       NVARCHAR (50) NULL,
    [Controller] NVARCHAR (50) NULL,
    [Action]     NVARCHAR (50) NULL,
    CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED ([Id] ASC)
);

