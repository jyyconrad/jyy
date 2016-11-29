CREATE TABLE [dbo].[OrganizationUser] (
    [Id]             INT      IDENTITY (1, 1) NOT NULL,
    [AdminId]        BIGINT   NOT NULL,
    [OrganizationId] BIGINT   NOT NULL,
    [CreationTime]   DATETIME CONSTRAINT [DF__Organizat__Creat__10416098] DEFAULT (getdate()) NOT NULL,
    [CreatorUserId]  BIGINT   NOT NULL,
    CONSTRAINT [PK__Organiza__3214EC072D18502A] PRIMARY KEY CLUSTERED ([Id] ASC)
);

