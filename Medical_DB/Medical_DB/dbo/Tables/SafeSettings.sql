CREATE TABLE [dbo].[SafeSettings] (
    [Id]         BIGINT   IDENTITY (1, 1) NOT NULL,
    [SafeType]   INT      NOT NULL,
    [IsNoLimit]  INT      NOT NULL,
    [Content]    INT      NOT NULL,
    [Updatetime] DATETIME CONSTRAINT [DF_SaveSettings_Updatetime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SafeSettings] PRIMARY KEY CLUSTERED ([Id] ASC)
);

