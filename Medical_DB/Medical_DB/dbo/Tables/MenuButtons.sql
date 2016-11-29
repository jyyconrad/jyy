CREATE TABLE [dbo].[MenuButtons] (
    [Id]       INT IDENTITY (1, 1) NOT NULL,
    [MenuId]   INT NOT NULL,
    [ButtonId] INT NULL,
    CONSTRAINT [PK_MenuButtons] PRIMARY KEY CLUSTERED ([Id] ASC)
);

