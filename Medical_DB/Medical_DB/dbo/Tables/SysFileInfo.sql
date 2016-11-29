CREATE TABLE [dbo].[SysFileInfo] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [FileRealName]  NVARCHAR (200)   NOT NULL,
    [FileSaveName]  NVARCHAR (200)   NOT NULL,
    [FilePath]      NVARCHAR (400)   NOT NULL,
    [ThumbFilePath] NVARCHAR (400)   NULL,
    [FileMd5]       NVARCHAR (MAX)   NULL,
    [CreateTime]    DATETIME         NULL,
    CONSTRAINT [PK_SysFileInfo] PRIMARY KEY CLUSTERED ([Id] ASC)
);

