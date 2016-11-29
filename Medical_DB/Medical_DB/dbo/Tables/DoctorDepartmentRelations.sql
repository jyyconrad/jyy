CREATE TABLE [dbo].[DoctorDepartmentRelations] (
    [Id]           INT      IDENTITY (1, 1) NOT NULL,
    [DoctorId]     INT      NOT NULL,
    [DepartmentId] INT      NOT NULL,
    [CreateTime]   DATETIME CONSTRAINT [DF_DoctorDepartmentRelations_CreateTime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DoctorDepartmentRelations] PRIMARY KEY CLUSTERED ([Id] ASC)
);

