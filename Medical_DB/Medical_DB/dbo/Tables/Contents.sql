CREATE TABLE [dbo].[Contents] (
    [LocationKey] NVARCHAR (50)  NOT NULL,
    [Name]        NVARCHAR (50)  NOT NULL,
    [ImagePath]   NVARCHAR (500) NOT NULL,
    [Url]         NVARCHAR (500) NOT NULL,
    [Createtime]  DATETIME       CONSTRAINT [DF_Contents_Createtime] DEFAULT (getdate()) NOT NULL
);

