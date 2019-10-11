
-- =============================================
-- Author:		<Glen Miller>
-- Create date: <3 May 2019>
-- Description:	<Test stored procedure to append daily aggregate data to [dbo].[Glen] table>
-- =============================================
CREATE PROCEDURE [dbo].[Append_Glen] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

DELETE [dbo].[Glen]
INSERT INTO [dbo].[Glen]
SELECT * FROM 
[Glen_TEST].[dbo].[VECTA]
WHERE [SKU Code] like 'WD884    GY 32R'
AND [Invoice Date]>=(CONVERT(VARCHAR(10),GETDATE()-1,121))
AND [Invoice Type]='IN'

END
