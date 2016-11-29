CREATE TABLE [dbo].[OperationLogs] (
    [Id]         BIGINT         IDENTITY (1, 1) NOT NULL,
    [AdminId]    BIGINT         NOT NULL,
    [Username]   NVARCHAR (50)  NOT NULL,
    [Page]       NVARCHAR (500) NOT NULL,
    [Parameters] TEXT           NOT NULL,
    [Createtime] DATETIME       CONSTRAINT [DF_OperationLogs_Createtime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_OperationLogs] PRIMARY KEY CLUSTERED ([Id] ASC)
);

