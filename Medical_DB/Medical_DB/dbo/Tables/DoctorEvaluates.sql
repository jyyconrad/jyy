CREATE TABLE [dbo].[DoctorEvaluates] (
    [Id]         BIGINT   IDENTITY (1, 1) NOT NULL,
    [MemberId]   BIGINT   NOT NULL,
    [DoctorId]   BIGINT   NOT NULL,
    [Evaluate]   INT      NOT NULL,
    [Updatetime] DATETIME NOT NULL,
    CONSTRAINT [PK_DoctorEvaluates] PRIMARY KEY CLUSTERED ([Id] ASC)
);

