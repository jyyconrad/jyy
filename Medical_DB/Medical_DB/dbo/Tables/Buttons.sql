CREATE TABLE [dbo].[Buttons] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (50)  NOT NULL,
    [Icon]       NVARCHAR (50)  NULL,
    [Type]       INT            CONSTRAINT [DF_Buttons_Type] DEFAULT ((0)) NOT NULL,
    [CtrlId]     NVARCHAR (50)  NOT NULL,
    [CtrlText]   NVARCHAR (50)  NOT NULL,
    [IsActive]   BIT            NOT NULL,
    [CtrlClass]  NVARCHAR (50)  NULL,
    [Status]     INT            NOT NULL,
    [AuthorName] NVARCHAR (20)  NULL,
    [HybridUrl]  NVARCHAR (500) NULL,
    CONSTRAINT [PK_Buttons] PRIMARY KEY CLUSTERED ([Id] ASC)
);



