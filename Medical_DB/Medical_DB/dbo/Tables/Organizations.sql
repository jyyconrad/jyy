CREATE TABLE [dbo].[Organizations] (
    [Id]                   INT           IDENTITY (1, 1) NOT NULL,
    [UnitCode]             NVARCHAR (20) NULL,
    [Name]                 NVARCHAR (50) NOT NULL,
    [LeaderId]             INT           NULL,
    [Level]                SMALLINT      CONSTRAINT [DF__Organizat__Level__131DCD43] DEFAULT ((0)) NOT NULL,
    [IsDeleted]            BIT           CONSTRAINT [DF__Organizat__IsDel__1411F17C] DEFAULT ((0)) NOT NULL,
    [DeleterUserId]        BIGINT        NULL,
    [DeletionTime]         DATETIME      NULL,
    [CreationTime]         DATETIME      CONSTRAINT [DF__Organizat__Creat__150615B5] DEFAULT (getdate()) NOT NULL,
    [CreatorUserId]        BIGINT        CONSTRAINT [DF__Organizat__Creat__15FA39EE] DEFAULT ((0)) NOT NULL,
    [LastModificationTime] DATETIME      CONSTRAINT [DF__Organizat__LastM__16EE5E27] DEFAULT (getdate()) NOT NULL,
    [LastModifierUserId]   BIGINT        CONSTRAINT [DF__Organizat__LastM__17E28260] DEFAULT ((0)) NOT NULL,
    [ParentId]             INT           NOT NULL,
    CONSTRAINT [PK__Organiza__3214EC07FA15047E] PRIMARY KEY CLUSTERED ([Id] ASC)
);

