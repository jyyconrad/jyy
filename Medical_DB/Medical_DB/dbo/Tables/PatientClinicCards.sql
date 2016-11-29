CREATE TABLE [dbo].[PatientClinicCards] (
    [Id]               BIGINT        IDENTITY (1, 1) NOT NULL,
    [PatientId]        BIGINT        NOT NULL,
    [HospitalId]       BIGINT        NOT NULL,
    [RegistrationType] INT           CONSTRAINT [DF_PatientClinicCards_RegistrationType] DEFAULT ((0)) NOT NULL,
    [ClinicCardNumber] NVARCHAR (50) CONSTRAINT [DF_PatientClinicCards_ClinicCardNumber] DEFAULT ('') NOT NULL,
    CONSTRAINT [PK_PatientClinicCards] PRIMARY KEY CLUSTERED ([Id] ASC)
);

