CREATE TABLE [dbo].[HospitalDepartmentRelations] (
    [Id]           BIGINT IDENTITY (1, 1) NOT NULL,
    [HospitalId]   BIGINT NOT NULL,
    [DepartmentId] BIGINT NOT NULL,
    CONSTRAINT [PK_HospitalDepartmentRelations] PRIMARY KEY CLUSTERED ([Id] ASC)
);

