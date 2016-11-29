CREATE TABLE [dbo].[HospitalStopDates] (
    [Id]         BIGINT IDENTITY (1, 1) NOT NULL,
    [HospitalId] BIGINT NOT NULL,
    [StartDate]  DATE   NOT NULL,
    [EndDate]    DATE   NOT NULL,
    [Status]     INT    CONSTRAINT [DF_HospitalStopDates_Status] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_HospitalStopDates] PRIMARY KEY CLUSTERED ([Id] ASC)
);

