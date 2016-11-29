CREATE TABLE [dbo].[PayRequests] (
    [Id]             BIGINT          IDENTITY (1, 1) NOT NULL,
    [OrderId]        BIGINT          NOT NULL,
    [PaytypeId]      BIGINT          CONSTRAINT [DF_PayRequests_PayTypeId] DEFAULT ((0)) NOT NULL,
    [RequestAmount]  DECIMAL (18, 2) NOT NULL,
    [ResponseAmount] DECIMAL (18, 2) CONSTRAINT [DF_PayRequests_ResponseAmount] DEFAULT ((0)) NOT NULL,
    [Status]         INT             CONSTRAINT [DF_PayRequests_Status] DEFAULT ((0)) NOT NULL,
    [Remark]         TEXT            CONSTRAINT [DF_PayRequest_Remark] DEFAULT ('') NOT NULL,
    [Createtime]     DATETIME        CONSTRAINT [DF_PayRequest_Createtime] DEFAULT (getdate()) NOT NULL,
    [Updatetime]     DATETIME        CONSTRAINT [DF_PayRequest_Updatetime] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_PayRequests] PRIMARY KEY CLUSTERED ([Id] ASC)
);

