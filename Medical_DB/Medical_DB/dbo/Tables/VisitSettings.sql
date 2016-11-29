CREATE TABLE [dbo].[VisitSettings] (
    [Id]                 INT             IDENTITY (1, 1) NOT NULL,
    [OrderTimeout]       INT             NOT NULL,
    [ServiceFee]         DECIMAL (18, 2) NOT NULL,
    [WithFee]            DECIMAL (18, 2) NOT NULL,
    [VisitTimePeriod]    INT             NOT NULL,
    [AdvanceBookingTime] INT             NOT NULL,
    [HopitalClosingTime] NVARCHAR (50)   NOT NULL,
    [ExpressFee]         DECIMAL (18, 2) CONSTRAINT [DF_VisitSettings_ExpressFee] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_VisitSettings] PRIMARY KEY CLUSTERED ([Id] ASC)
);

