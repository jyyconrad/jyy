CREATE TABLE [dbo].[Sms] (
    [Id]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [Mobile]       NVARCHAR (50)  NOT NULL,
    [Message]      NVARCHAR (500) NOT NULL,
    [Type]         INT            NOT NULL,
    [Createtime]   DATETIME       CONSTRAINT [DF_Sms_Createtime] DEFAULT (getdate()) NOT NULL,
    [Createdate]   AS             (CONVERT([varchar](10),[createtime],(120))),
    [Error]        NVARCHAR (500) CONSTRAINT [DF_Sms_Error] DEFAULT ('') NOT NULL,
    [ErrorMessage] NVARCHAR (500) CONSTRAINT [DF_Sms_ErrorMessage] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_Sms] PRIMARY KEY CLUSTERED ([Id] ASC)
);

