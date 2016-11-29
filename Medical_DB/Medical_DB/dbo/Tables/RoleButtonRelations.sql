CREATE TABLE [dbo].[RoleButtonRelations] (
    [Id]       INT IDENTITY (1, 1) NOT NULL,
    [RoleId]   INT NOT NULL,
    [ButtonId] INT NOT NULL,
    [MenuId]   INT NOT NULL,
    CONSTRAINT [PK_RoleButtonRelations] PRIMARY KEY CLUSTERED ([Id] ASC)
);

