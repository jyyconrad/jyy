CREATE TABLE [dbo].[Paytypes] (
    [Id]         BIGINT         IDENTITY (1, 1) NOT NULL,
    [TypeCode]   NVARCHAR (50)  NOT NULL,
    [Name]       NVARCHAR (50)  NOT NULL,
    [NotifyUrl]  NVARCHAR (500) NOT NULL,
    [ReturnUrl]  NVARCHAR (500) NOT NULL,
    [RefundUrl]  NVARCHAR (500) CONSTRAINT [DF_Paytypes_RefundUrl] DEFAULT ('') NOT NULL,
    [Updatetime] DATETIME       CONSTRAINT [DF_Paytypes_Updatetime] DEFAULT (getdate()) NOT NULL,
    [IsWebShow]  INT            CONSTRAINT [DF_Paytypes_IsWebShow] DEFAULT ((1)) NOT NULL
);

