CREATE VIEW dbo.VECTA
AS
SELECT        INV.Company, INV.[Invoice Number], INV.[Invoice Period], INV.[Period Year], INV.[Period Month], INV.[Period Date], INV.[VF Invoice Period], INV.[VF Period Year], INV.[VF Period Month], INV.[VF Period Date], INV.[Invoice Type], 
                         INV.[Order Type], INV.[Invoice Date], INV.[Year of Invoice Date], INV.[Month of Invoice Date], INV.[Day of Invoice Date], INV.[Line Quantity], INV.[Line Cost Base], INV.[Line Value Base], INV.[Line Value Prime], INV.Profit, 
                         INV.[Line Vat Base], INV.[Line Vat Prime], INV.[Line Vat Code], INV.[Currency Code], INV.[Customer Key], INV.[SKU Key], CUST.[Customer Key] AS Expr1, CUST.Customer, CUST.[Delivery Sequence], CUST.[Customer Name], 
                         CUST.[Salesman Code], CUST.[Salesman Description], CUST.Channel, CUST.Corporation, CUST.[Corporation Name], CUST.[Customer Division], CUST.[Customer Sub Division], CUST.[Customer Region], 
                         CUST.[Customer Territory], CUST.[Post Code], CUST.Outcode, CUST.[Country Code], CUST.[Vat Country], CUST.[Vat Registration], ITEMS.[SKU Key] AS Expr2, ITEMS.[SKU Code], ITEMS.[SKU Description], ITEMS.Style, 
                         ITEMS.[Style Description], ITEMS.Colour, ITEMS.[Colour Description], ITEMS.Size, ITEMS.[Size Description], ITEMS.[Product Type], ITEMS.[Product Class], ITEMS.[Product Major], ITEMS.[Product Minor], ITEMS.[Product Country], 
                         ITEMS.Division, REPLACE(ITEMS.Style, ' ', '') + REPLACE(ITEMS.Colour, ' ', '') AS StyCol
FROM            [Dickies_BI_Vecta].[dbo].[Invoices] INV INNER JOIN
                         [Dickies_BI_Vecta].[dbo].[Customers] CUST ON INV.[Customer Key] = CUST.[Customer Key] INNER JOIN
                         [Dickies_BI_Vecta].[dbo].[Items] ITEMS ON INV.[SKU Key] = ITEMS.[SKU Key]

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[64] 4[3] 2[24] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "INV"
            Begin Extent = 
               Top = 11
               Left = 289
               Bottom = 549
               Right = 496
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CUST"
            Begin Extent = 
               Top = 11
               Left = 49
               Bottom = 394
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ITEMS"
            Begin Extent = 
               Top = 12
               Left = 525
               Bottom = 344
               Right = 713
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'VECTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'VECTA';

