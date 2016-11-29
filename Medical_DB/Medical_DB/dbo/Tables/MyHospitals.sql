CREATE TABLE [dbo].[MyHospitals] (
    [Id]         BIGINT   IDENTITY (1, 1) NOT NULL,
    [MemberId]   BIGINT   NOT NULL,
    [HospitalId] BIGINT   NOT NULL,
    [Createtime] DATETIME CONSTRAINT [DF_MyHospitals_Createtime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MyHospitals] PRIMARY KEY CLUSTERED ([Id] ASC)
);

