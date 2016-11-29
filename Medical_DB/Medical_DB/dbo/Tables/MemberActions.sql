CREATE TABLE [dbo].[MemberActions] (
    [Id]         BIGINT        IDENTITY (1, 1) NOT NULL,
    [MemberId]   BIGINT        NOT NULL,
    [ActionType] INT           NOT NULL,
    [Remark]     NVARCHAR (50) NOT NULL,
    [Createtime] DATETIME      CONSTRAINT [DF_MemberActions_Createtime] DEFAULT (getdate()) NOT NULL,
    [Ip]         NVARCHAR (50) CONSTRAINT [DF_MemberActions_Ip] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_MemberActions] PRIMARY KEY CLUSTERED ([Id] ASC)
);

