CREATE TABLE [dbo].[Inventory_Summary_w] (
    [Invoice Number]  VARCHAR (7)  NOT NULL,
    [Order Type]      VARCHAR (30) NOT NULL,
    [Invoice Date]    DATETIME     NULL,
    [SKU Code]        VARCHAR (15) NOT NULL,
    [SKU Description] VARCHAR (36) NOT NULL
);

