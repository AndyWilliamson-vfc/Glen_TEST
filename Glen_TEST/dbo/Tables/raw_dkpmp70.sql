CREATE TABLE [dbo].[raw_dkpmp70] (
    [PO_Item_Key]       CHAR (24)  NOT NULL,
    [Company_Number]    CHAR (2)   NOT NULL,
    [Order_Number]      CHAR (7)   NOT NULL,
    [Item]              CHAR (15)  NOT NULL,
    [Ship_Date]         DATE       NOT NULL,
    [Factory_Name]      CHAR (35)  NOT NULL,
    [Cut_Date]          DATE       NOT NULL,
    [Factory_Date]      DATE       NOT NULL,
    [Buyer_Comments]    CHAR (650) NOT NULL,
    [Supplier_Comments] CHAR (650) NOT NULL
);

