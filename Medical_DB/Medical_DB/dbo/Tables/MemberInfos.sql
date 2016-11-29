CREATE TABLE [dbo].[MemberInfos] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [RealName]      NVARCHAR (50)  NOT NULL,
    [NickName]      NVARCHAR (50)  NULL,
    [InfoType]      INT            CONSTRAINT [DF_MemberInfos_InfoType] DEFAULT ((0)) NOT NULL,
    [IdType]        INT            NULL,
    [IdCard]        NVARCHAR (20)  NULL,
    [Status]        INT            NOT NULL,
    [Createtime]    DATETIME       NOT NULL,
    [Updatetime]    DATETIME       CONSTRAINT [DF_MemberInfos_Updatetime] DEFAULT (getdate()) NOT NULL,
    [Unionid]       NVARCHAR (50)  NOT NULL,
    [ProfileUrl]    NVARCHAR (200) NULL,
    [ExternalToken] NVARCHAR (300) NULL,
    [MemberId]      BIGINT         NOT NULL,
    [Sex]           INT            NULL,
    CONSTRAINT [PK_MemberInfos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MemberInfos_Members] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Members] ([Id]) ON DELETE CASCADE
);

