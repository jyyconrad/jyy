CREATE TABLE [dbo].[Hospitals] (
    [Id]                   BIGINT           IDENTITY (1, 1) NOT NULL,
    [Name]                 NVARCHAR (50)    NOT NULL,
    [Icon1]                NVARCHAR (500)   NOT NULL,
    [Icon2]                NVARCHAR (500)   NOT NULL,
    [Icon3]                NVARCHAR (500)   NOT NULL,
    [LevelCode]            NVARCHAR (20)    NOT NULL,
    [ProvinceCode]         NVARCHAR (20)    NOT NULL,
    [CityCode]             NVARCHAR (20)    NOT NULL,
    [AreaCode]             NVARCHAR (20)    NOT NULL,
    [Address]              NVARCHAR (50)    NOT NULL,
    [Telephone]            NVARCHAR (50)    NOT NULL,
    [Introduction]         NVARCHAR (1000)  CONSTRAINT [DF_Hospitals_Introduction] DEFAULT ('') NOT NULL,
    [Createtime]           DATETIME         CONSTRAINT [DF_Hospitals_Createtime] DEFAULT (getdate()) NOT NULL,
    [Updatetime]           DATETIME         CONSTRAINT [DF_Hospitals_Updatetime] DEFAULT (getdate()) NOT NULL,
    [Longitude]            DECIMAL (18, 12) CONSTRAINT [DF_Hospitals_Longitude] DEFAULT ((0)) NOT NULL,
    [Latitude]             DECIMAL (18, 12) CONSTRAINT [DF_Hospitals_Latitude] DEFAULT ((0)) NOT NULL,
    [Closingtime]          NVARCHAR (50)    CONSTRAINT [DF_Hospitals_Closingtime] DEFAULT ('') NOT NULL,
    [TempStatus]           INT              CONSTRAINT [DF_Hospitals_TempStatus] DEFAULT ((0)) NOT NULL,
    [Status]               INT              CONSTRAINT [DF_Hospitals_CheckStatus] DEFAULT ((1)) NOT NULL,
    [DepartmentCategoryId] BIGINT           CONSTRAINT [DF_Hospitals_DepartmentCategoryId] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Hospitals] PRIMARY KEY CLUSTERED ([Id] ASC)
);

