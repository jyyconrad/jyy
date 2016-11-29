CREATE TABLE [dbo].[Administrators] (
    [Id]           BIGINT        IDENTITY (1, 1) NOT NULL,
    [Email]        NVARCHAR (50) CONSTRAINT [DF_Administrators_Email] DEFAULT ('') NOT NULL,
    [Username]     NVARCHAR (50) NOT NULL,
    [Password]     NVARCHAR (50) NOT NULL,
    [Createtime]   DATETIME      CONSTRAINT [DF_Administrators_Createtime] DEFAULT (getdate()) NOT NULL,
    [Status]       INT           CONSTRAINT [DF_Administrators_Status] DEFAULT ((1)) NOT NULL,
    [RoleId]       INT           CONSTRAINT [DF_Administrators_RoleId] DEFAULT ((0)) NOT NULL,
    [IsSuperAdmin] INT           CONSTRAINT [DF_Administrators_IsSuperAdmin] DEFAULT ((0)) NOT NULL,
    [Mobile]       NVARCHAR (50) CONSTRAINT [DF_Administrators_Mobile] DEFAULT ('') NOT NULL,
    [DisplayName]  NVARCHAR (50) NULL,
    CONSTRAINT [PK_Administrators] PRIMARY KEY CLUSTERED ([Id] ASC)
);

