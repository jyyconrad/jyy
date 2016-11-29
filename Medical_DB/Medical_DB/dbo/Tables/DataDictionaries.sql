CREATE TABLE [dbo].[DataDictionaries] (
    [Id]            BIGINT        IDENTITY (1, 1) NOT NULL,
    [TableName]     NVARCHAR (50) NOT NULL,
    [FieldName]     NVARCHAR (50) NOT NULL,
    [Value]         NVARCHAR (50) NOT NULL,
    [Text]          NVARCHAR (50) NOT NULL,
    [Sort]          INT           CONSTRAINT [DF_DataDictionaries_Sort] DEFAULT ((0)) NOT NULL,
    [DictEntryCode] VARCHAR (10)  NULL,
    [DictDataCode]  VARCHAR (20)  NULL,
    [State]         BIT           NULL,
    CONSTRAINT [PK_DataDictionaries] PRIMARY KEY CLUSTERED ([Id] ASC)
);

