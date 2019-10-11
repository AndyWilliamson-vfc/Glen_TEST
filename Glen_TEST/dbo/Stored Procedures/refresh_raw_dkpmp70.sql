-- =============================================
-- Author:		<Glen Miller>
-- Create date: <10/07/2019>
-- Description:	<Refresh raw_dkpmp70>
-- =============================================
CREATE PROCEDURE [dbo].[refresh_raw_dkpmp70] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    truncate table raw_dkpmp70;
	
-- populate raw_dkpmp70 Shipping Schedule Maintenance
insert into [Glen_Test].[pmo].[raw_dkpmp70] (
 	 [PO_Item_Key]
	,[Company_Number]
	,[Order_Number]
	,[Item]
	,[Ship_Date]
	,[Factory_Name]
	,[Cut_Date]
	,[Factory_Date]
	,[Buyer_Comments]
	,[Supplier_Comments]
) 
select 
	 concat(cono70,ordn70,pnum70)
	,cono70
	,ordn70
	,pnum70
	,ship70    
	,fact70    
	,ctdt70    
	,fcdt70    
	,buyc70    
	,supc70    

 from openquery(DKS_FT,
 'select
	 cono70
	,ordn70
	,pnum70
	,(case ship70 when 1000000 then dksbsp3.jba2iso(0) else dksbsp3.jba2iso(ship70) end) as ship70
	,fact70
	,(case ctdt70 when 1000000 then dksbsp3.jba2iso(0) else dksbsp3.jba2iso(ctdt70) end) as ctdt70
	,(case fcdt70 when 1000000 then dksbsp3.jba2iso(0) else dksbsp3.jba2iso(fcdt70) end) as fcdt70
	,buyc70    
	,supc70
from dksbsf3.dkpmp70 where cono70 = ''DC'' 
   							and exists (select * from dksbsf3.VIEW_PO_LINES_LAST_3FY
						               where cono03 = cono70 and ordn03 = ordn70)')
;

END