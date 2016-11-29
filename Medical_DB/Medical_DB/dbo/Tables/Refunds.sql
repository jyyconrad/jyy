CREATE TABLE [dbo].[Refunds] (
    [Id]             BIGINT          IDENTITY (1, 1) NOT NULL,
    [OrderId]        BIGINT          NOT NULL,
    [PayRequestId]   BIGINT          NOT NULL,
    [RequestAmount]  DECIMAL (18, 2) NOT NULL,
    [ResponseAmount] DECIMAL (18, 2) CONSTRAINT [DF_Refunds_ResponseAmount] DEFAULT ((0)) NOT NULL,
    [Status]         INT             CONSTRAINT [DF_Refunds_Status] DEFAULT ((0)) NOT NULL,
    [Remark]         TEXT            CONSTRAINT [DF_Refunds_Remark] DEFAULT ('') NOT NULL,
    [Createtime]     DATETIME        CONSTRAINT [DF_Refunds_Createtime] DEFAULT (getdate()) NOT NULL,
    [Updatetime]     DATETIME        CONSTRAINT [DF_Refunds_Updatetime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Refunds] PRIMARY KEY CLUSTERED ([Id] ASC)
);

