CREATE TABLE [dbo].[Doctors] (
    [Id]             BIGINT          IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (50)   NOT NULL,
    [Icon]           NVARCHAR (500)  NOT NULL,
    [HospitalId]     BIGINT          NOT NULL,
    [DepartmentId1]  BIGINT          NOT NULL,
    [DepartmentId]   BIGINT          NOT NULL,
    [TitleCode]      NVARCHAR (50)   NOT NULL,
    [Telephone]      NVARCHAR (50)   NOT NULL,
    [Skilled]        NVARCHAR (500)  NOT NULL,
    [Introduction]   NVARCHAR (1000) NOT NULL,
    [PraiseQuantity] INT             CONSTRAINT [DF_Doctor_PraiseQuantity] DEFAULT ((0)) NOT NULL,
    [Createtime]     DATETIME        CONSTRAINT [DF_Doctor_Createtime] DEFAULT (getdate()) NOT NULL,
    [Updatetime]     DATETIME        CONSTRAINT [DF_Doctors_Updatetime] DEFAULT (getdate()) NOT NULL,
    [Status]         AS              (case when [checkstatus]<(0) then [checkstatus] when [ParentStatus]<(0) then [ParentStatus] when [checkstatus]=(2) then [checkstatus] when [ParentStatus]=(2) then [ParentStatus] else (1) end),
    [TempStatus]     INT             CONSTRAINT [DF_Doctors_TempStatus] DEFAULT ((0)) NOT NULL,
    [CheckStatus]    INT             CONSTRAINT [DF_Doctors_CheckStatus] DEFAULT ((1)) NOT NULL,
    [ParentStatus]   INT             CONSTRAINT [DF_Doctors_ParentStatus] DEFAULT ((2)) NOT NULL,
    CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED ([Id] ASC)
);

