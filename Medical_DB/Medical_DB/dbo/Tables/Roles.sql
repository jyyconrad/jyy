CREATE TABLE [dbo].[Roles] (
    [Id]         BIGINT        IDENTITY (1, 1) NOT NULL,
    [RoleName]   NVARCHAR (50) NOT NULL,
    [RoleCode]   NVARCHAR (50) NULL,
    [AuthorName] NVARCHAR (20) NULL,
    CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED ([Id] ASC)
);



