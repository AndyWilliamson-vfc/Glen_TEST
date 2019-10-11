CREATE TABLE [dbo].[calendar] (
    [Raw_Dt]    DATETIME2 (7) NOT NULL,
    [Wc_Dt_Mon] DATETIME2 (7) NOT NULL,
    [Wk_Yr_Mon] NVARCHAR (50) NOT NULL,
    [Yr]        INT           NOT NULL,
    [Mn]        INT           NOT NULL,
    [Dy]        INT           NOT NULL,
    [WkDay]     INT           NOT NULL,
    [DyNm]      NVARCHAR (50) NOT NULL,
    [MnNm]      NVARCHAR (50) NOT NULL,
    [MmmyyyyNm] DATETIME2 (7) NOT NULL,
    [QTR]       NVARCHAR (50) NOT NULL,
    [VFWk]      INT           NOT NULL,
    [VFWkYrSun] NVARCHAR (50) NOT NULL,
    [VFQtr]     NVARCHAR (50) NOT NULL,
    [VFPeriod]  INT           NOT NULL
);

