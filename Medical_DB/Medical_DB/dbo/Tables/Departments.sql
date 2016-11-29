CREATE TABLE [dbo].[Departments] (
    [Id]                   BIGINT        IDENTITY (1, 1) NOT NULL,
    [Name]                 NVARCHAR (50) NOT NULL,
    [ParentId]             BIGINT        NOT NULL,
    [Status]               INT           CONSTRAINT [DF_Departments_Status] DEFAULT ((1)) NOT NULL,
    [Sort]                 INT           NOT NULL,
    [Createtime]           DATETIME      CONSTRAINT [DF_Departments_Createtime] DEFAULT (getdate()) NOT NULL,
    [DepartmentCategoryId] BIGINT        CONSTRAINT [DF_Departments_DepartmentCategoryId] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED ([Id] ASC)
);

