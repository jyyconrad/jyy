CREATE TABLE [dbo].[HospitalCsvs] (
    [Id]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [AdminId]      BIGINT         NOT NULL,
    [Name]         NVARCHAR (50)  NOT NULL,
    [LevelCode]    NVARCHAR (50)  NOT NULL,
    [DepartmentId] NVARCHAR (500) NOT NULL,
    [ProvinceCode] NVARCHAR (50)  NOT NULL,
    [CityCode]     NVARCHAR (50)  NOT NULL,
    [AreaCode]     NVARCHAR (50)  NOT NULL,
    [Address]      NVARCHAR (50)  NOT NULL,
    [Telephone]    NVARCHAR (50)  NOT NULL,
    [Introduction] NVARCHAR (500) NOT NULL,
    [Icon1]        NVARCHAR (500) NOT NULL,
    [Icon2]        NVARCHAR (500) NOT NULL,
    [Icon3]        NVARCHAR (500) NOT NULL,
    [Createtime]   DATETIME       CONSTRAINT [DF_HospitalCsvs_Createtime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_HospitalCsvs] PRIMARY KEY CLUSTERED ([Id] ASC)
);

