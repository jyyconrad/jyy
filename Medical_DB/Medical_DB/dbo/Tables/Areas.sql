CREATE TABLE [dbo].[Areas] (
    [AreaCode] NVARCHAR (50) NOT NULL,
    [AreaName] NVARCHAR (50) NOT NULL,
    [PreCode]  NVARCHAR (50) NOT NULL,
    [AreaType] INT           NOT NULL,
    [Sort]     INT           NOT NULL,
    [IsCity]   INT           CONSTRAINT [DF_Areas_IsMunicipality] DEFAULT ((0)) NOT NULL
);

