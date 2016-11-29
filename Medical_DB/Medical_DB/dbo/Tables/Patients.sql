CREATE TABLE [dbo].[Patients] (
    [Id]               BIGINT        IDENTITY (1, 1) NOT NULL,
    [MemberId]         BIGINT        NOT NULL,
    [Mobile]           NVARCHAR (50) NOT NULL,
    [Name]             NVARCHAR (50) NOT NULL,
    [IdType]           INT           NOT NULL,
    [IdNumber]         NVARCHAR (50) NOT NULL,
    [HealthNumber]     NVARCHAR (50) NOT NULL,
    [RegistrationType] INT           CONSTRAINT [DF_Patients_RegistrationType] DEFAULT ((0)) NOT NULL,
    [ClinicCardNumber] NVARCHAR (50) CONSTRAINT [DF_Patients_ClinicCardNumber] DEFAULT ('') NOT NULL,
    [Createtime]       DATETIME      CONSTRAINT [DF_Patients_Createtime] DEFAULT (getdate()) NOT NULL,
    [Updatetime]       DATETIME      CONSTRAINT [DF_Patients_Updatetime] DEFAULT (getdate()) NOT NULL,
    [Status]           INT           CONSTRAINT [DF_Patients_Status] DEFAULT ((1)) NOT NULL,
    [IsSelf]           INT           DEFAULT ((0)) NOT NULL,
    [Sex] INT NULL DEFAULT 0, 
    [Age] INT NULL DEFAULT 0, 
    CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'0 未知 1 男 2 女 3 不男不女',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Patients',
    @level2type = N'COLUMN',
    @level2name = N'Sex'