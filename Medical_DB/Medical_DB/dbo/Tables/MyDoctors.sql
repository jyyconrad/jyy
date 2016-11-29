CREATE TABLE [dbo].[MyDoctors] (
    [Id]         BIGINT   IDENTITY (1, 1) NOT NULL,
    [MemberId]   BIGINT   NOT NULL,
    [DoctorId]   BIGINT   NOT NULL,
    [Createtime] DATETIME CONSTRAINT [DF_MyDoctors_Createtime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MyDoctors] PRIMARY KEY CLUSTERED ([Id] ASC)
);

