CREATE TABLE [dbo].[cust_dist_chnl] (
    [Customer_Key]        NVARCHAR (50) NOT NULL,
    [Customer_Number]     NVARCHAR (50) NOT NULL,
    [Sequence]            CHAR (3)      NOT NULL,
    [Customer_Number_Seq] NVARCHAR (50) NOT NULL,
    [Customer_Name]       NVARCHAR (50) NOT NULL,
    [Dist_Channel]        INT           NOT NULL,
    [Dist_Channel_Descr]  NVARCHAR (50) NOT NULL
);

