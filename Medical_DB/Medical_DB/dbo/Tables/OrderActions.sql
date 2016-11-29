CREATE TABLE [dbo].[OrderActions] (
    [Id]         BIGINT        IDENTITY (1, 1) NOT NULL,
    [Mobile]     NVARCHAR (50) NOT NULL,
    [OrderId]    BIGINT        NOT NULL,
    [Action]     TEXT          NOT NULL,
    [ActionType] INT           NOT NULL,
    [Createtime] DATETIME      CONSTRAINT [DF_OrderActions_Createtime] DEFAULT (getdate()) NOT NULL,
    [IsSms]      INT           CONSTRAINT [DF_OrderActions_IsSms] DEFAULT ((3)) NOT NULL,
    CONSTRAINT [PK_OrderActions] PRIMARY KEY CLUSTERED ([Id] ASC)
);

