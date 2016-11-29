CREATE TABLE [dbo].[DepartmentCategories] (
    [Id]         BIGINT        IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (50) NOT NULL,
    [Createtime] DATETIME      CONSTRAINT [DF_DepartmentCategories_Createtime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DepartmentCategories] PRIMARY KEY CLUSTERED ([Id] ASC)
);

