CREATE TABLE [dbo].[Reviews] (
    [Id]           BIGINT   IDENTITY (1, 1) NOT NULL,
    [CreateId]     BIGINT   NOT NULL,
    [Createtime]   DATETIME CONSTRAINT [DF_Reviews_Createtime] DEFAULT (getdate()) NOT NULL,
    [SourceStatus] INT      NOT NULL,
    [SourceType]   INT      NOT NULL,
    [SourceId]     BIGINT   NOT NULL,
    [Status]       INT      CONSTRAINT [DF_Reviews_Status] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([Id] ASC)
);

