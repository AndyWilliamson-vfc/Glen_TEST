
-- =============================================
-- Author:		<Glen Miller>
-- Create date: <3 May 2019>
-- Description:	<Test stored procedure to append daily aggregate data to [dbo].[Glen] table>
-- =============================================
CREATE PROCEDURE [dbo].[Append_smry_inventory_w] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

INSERT
INTO [TEST_Dickies_BI_UK_Transform].[dbo].[smry_inventory_w]
SELECT 
CONVERT(VARCHAR,GETDATE(),112) As [T_Date] 
,[Item_Style]
,[Item_Colour]
,[Item_Style_Description]
,[Item_Colour_Description]
,[Item_Group_Major]
,[Item_Group_Major_Description]
,[Item_Group_Minor]
,[Item_Group_Minor_Description]
,[Stockroom_Code]
,SUM([Phys]) As Physical
,SUM([On_Ordr]) As On_Order
,SUM([Alloc]) As Allocated
,SUM([Back_Ordr]) As Back_Order
,SUM([Fwrd_Ordr]) As Forward_Order
,SUM([Avail]) As Available
,SUM([Frozen]) As Frzn
,SUM([In_Trans]) As InTrans
,SUM([Bonded]) As Bnded
,SUM([Reserved]) As Reservd
,SUM([Picked]) As Pickd
,SUM([Packed])As Packd
,SUM([Despatched])As Despatchd
,SUM([TBReturned])As TBReturnd 
,SUM([Phys*AvgCostStockUnit]) As PhysicalCost
,SUM([Avail*AvgCostStockUnit]) As AvailableCost
FROM
(
SELECT 
		  [Item_Style]
         ,[Item_Colour]  
		 ,[Item_Style_Description]
		 ,[Item_Colour_Description]
		 ,[Item_Group_Major]
		 ,[Item_Group_Major_Description]
		 ,[Item_Group_Minor]
		 ,[Item_Group_Minor_Description]
         ,[Stockroom_Code]
		 ,CAST(SUM([Stock_Iss_Units_Physical])As INT) As [Phys]
		 ,CAST(SUM([Stock_Iss_Units_On_Order])As INT) As [On_Ordr]
		 ,CAST(SUM([Stock_Iss_Units_Allocatd])As INT) As [Alloc]
		 ,CAST(SUM([Stock_Iss_Units_Back_Ord])As INT) As [Back_Ordr]
		 ,CAST(SUM([Stock_Iss_Units_Fwrd_Ord])As INT) As [Fwrd_Ordr]
		 ,CAST(SUM([Stock_IssUnits_Available])As INT) As [Avail]
		 ,CAST(SUM([Stock_Iss_Units_Frozen])As INT) As [Frozen]
		 ,CAST(SUM([Stock_Iss_Unts_In_Transit])As INT) As [In_Trans]
		 ,CAST(SUM([Stock_Iss_Units_Bonded])As INT) As [Bonded]
         ,CAST(SUM([Stock_Iss_Units_Reserved])As INT) As [Reserved]
         ,CAST(SUM([Stock_Issue_Units_Picked])As INT) As [Picked]
         ,CAST(SUM([Stock_Issue_Units_Packed])As INT) As [Packed]
         ,CAST(SUM([Stock_Issue_Units_Despatched])As INT) As [Despatched]
         ,CAST(SUM([Stock_Issue_Units_To_Be_Returned])As INT) As [TBReturned] 
		 ,CONVERT(DECIMAL(10,2),(AVG([Average_Cost/Stock_Unit])*SUM([Stock_Iss_Units_Physical]))) As [Phys*AvgCostStockUnit]
         ,CONVERT(DECIMAL(10,2),(AVG([Average_Cost/Stock_Unit])*SUM([Stock_IssUnits_Available]))) As [Avail*AvgCostStockUnit]
  FROM [Dickies_BI_UK_Transform].[dbo].[INV_New]
  WHERE 
          [Stock_Iss_Units_Physical]>0 AND 
          [Item_Group_Major] <> 'XXX'
  GROUP BY         
		  [Item_Style]
         ,[Item_Colour]
		 ,[Item_Style_Description]
		 ,[Item_Colour_Description]
		 ,[Item_Group_Major]
		 ,[Item_Group_Major_Description]
		 ,[Item_Group_Minor]
		 ,[Item_Group_Minor_Description]
         ,[Stockroom_Code],[Std_Cost/Stock_Unit]
         ,[Latest_Cost/Stock_Unit]
         ,[Average_Cost/Stock_Unit]
) A
GROUP BY 
[Item_Style]
,[Item_Colour]
,[Item_Style_Description]
,[Item_Colour_Description]
,[Item_Group_Major]
,[Item_Group_Major_Description]
,[Item_Group_Minor]
,[Item_Group_Minor_Description]
,[Stockroom_Code]


END
