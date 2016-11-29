CREATE TABLE [dbo].[Releases] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [Code]               NVARCHAR (50)  NOT NULL,
    [ReleaseType]        INT            NOT NULL,
    [DownloadUrl]        NVARCHAR (500) NOT NULL,
    [Remark]             NVARCHAR (500) NOT NULL,
    [Createtime]         DATETIME       CONSTRAINT [DF_Releases_Createtime] DEFAULT (getdate()) NOT NULL,
    [Status]             INT            CONSTRAINT [DF_Releases_Status] DEFAULT ((1)) NOT NULL,
    [ReleaseContentType] INT            CONSTRAINT [DF_Releases_ReleaseContentType] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Releases] PRIMARY KEY CLUSTERED ([Id] ASC)
);

