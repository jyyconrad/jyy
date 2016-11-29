CREATE TABLE [dbo].[Settings] (
    [Id]         BIGINT        IDENTITY (1, 1) NOT NULL,
    [GuideTel]   NVARCHAR (50) CONSTRAINT [DF_Settings_GuideTel] DEFAULT ('') NOT NULL,
    [ServiceTel] NVARCHAR (50) CONSTRAINT [DF_Settings_ServiceTel] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED ([Id] ASC)
);

