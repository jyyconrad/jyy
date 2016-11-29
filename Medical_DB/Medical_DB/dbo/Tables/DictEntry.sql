CREATE TABLE [dbo].[DictEntry] (
    [Id]            BIGINT        IDENTITY (1, 1) NOT NULL,
    [TableName]     NVARCHAR (50) NOT NULL,
    [FieldName]     NVARCHAR (50) NOT NULL,
    [DictEntryCode] VARCHAR (10)  NOT NULL,
    [Createtime]    DATETIME      NULL,
    [DictEntryName] NVARCHAR (20) NOT NULL,
    [State]         BIT           NULL,
    CONSTRAINT [PK_DictEntry] PRIMARY KEY CLUSTERED ([Id] ASC)
);

