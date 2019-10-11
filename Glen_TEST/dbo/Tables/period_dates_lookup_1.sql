CREATE TABLE [dbo].[period_dates_lookup] (
    [Invoice_Period]    INT           NOT NULL,
    [Period_Year]       INT           NOT NULL,
    [Invoice_Date]      DATETIME2 (7) NOT NULL,
    [VF_Invoice_Period] INT           NOT NULL,
    [VF_Fiscal_Year]    INT           NOT NULL
);

