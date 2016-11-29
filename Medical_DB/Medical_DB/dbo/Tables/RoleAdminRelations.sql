CREATE TABLE [dbo].[RoleAdminRelations] (
    [Id]      BIGINT IDENTITY (1, 1) NOT NULL,
    [RoleId]  BIGINT NOT NULL,
    [AdminId] BIGINT NOT NULL,
    CONSTRAINT [PK_RoleAdminRelations] PRIMARY KEY CLUSTERED ([Id] ASC)
);

