CREATE TABLE [dbo].[Members] (
    [Id]               BIGINT        IDENTITY (1, 1) NOT NULL,
    [Mobile]           NVARCHAR (50) NOT NULL,
    [Password]         NVARCHAR (50) NOT NULL,
    [IdType]           INT           CONSTRAINT [DF_Members_IdType] DEFAULT ((1)) NOT NULL,
    [IDCard]           NVARCHAR (50) CONSTRAINT [DF_Members_IDCard] DEFAULT ('') NOT NULL,
    [Name]             NVARCHAR (50) CONSTRAINT [DF_Members_Name] DEFAULT ('') NOT NULL,
    [Status]           INT           NOT NULL,
    [Createtime]       DATETIME      CONSTRAINT [DF_Members_Createtime] DEFAULT (getdate()) NOT NULL,
    [Updatetime]       DATETIME      CONSTRAINT [DF_Members_Updatetime] DEFAULT (getdate()) NOT NULL,
    [Sex]              INT           CONSTRAINT [DF_Members_Sex] DEFAULT ((0)) NOT NULL,
    [ExternalUnionid]  NVARCHAR (50) NULL,
    [ExternalNickName] NVARCHAR (50) NULL,
    [ExternalType]     INT           CONSTRAINT [DF_Members_ExternalType] DEFAULT ((0)) NOT NULL,
    [ProfileUrl]       TEXT          NULL,
    CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED ([Id] ASC)
);

