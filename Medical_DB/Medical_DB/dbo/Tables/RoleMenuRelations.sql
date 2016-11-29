CREATE TABLE [dbo].[RoleMenuRelations] (
    [Id]     BIGINT IDENTITY (1, 1) NOT NULL,
    [RoleId] BIGINT NOT NULL,
    [MenuId] BIGINT NOT NULL,
    CONSTRAINT [PK_RoleMenuRelations] PRIMARY KEY CLUSTERED ([Id] ASC)
);

