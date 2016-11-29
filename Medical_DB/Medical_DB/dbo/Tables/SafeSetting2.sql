CREATE TABLE [dbo].[SafeSetting2] (
    [Id]                     BIGINT        IDENTITY (1, 1) NOT NULL,
    [ReleaseTime]            NVARCHAR (50) NOT NULL,
    [ReleaseStrategyContent] INT           NOT NULL,
    [ReleaseStrategyType]    INT           NOT NULL,
    [ReleaseStrategyDelay]   INT           NOT NULL,
    [ReleaseStrategyRandom]  INT           NOT NULL,
    [ReleaseStrategyType2]   INT           NOT NULL,
    [UpdateTime]             DATETIME      CONSTRAINT [DF_SafeSetting2_UpdateTime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SafeSetting2] PRIMARY KEY CLUSTERED ([Id] ASC)
);

