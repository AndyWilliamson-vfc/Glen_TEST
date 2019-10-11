CREATE VIEW dbo.All_Sales_Orders
AS
SELECT        h.Company_Number AS Hdr_Company_Number, h.Order_Number AS Hdr_Order_Number, h.Order_Line_Number AS Hdr_Order_Line_Number, h.Order_Type AS Hdr_Order_Type, h.Order_Source AS Hdr_Order_Source, 
                         h.Customer_Number AS Hdr_Customer_Number, h.Customer_Sequence AS Hdr_Customer_Sequence, h.Order_pricing_type AS Hdr_Order_pricing_type, h.Customer_Order_Reference AS Hdr_Customer_Order_Reference, 
                         h.System_Order_Date AS Hdr_System_Order_Date, h.Date_Of_Customers_Order AS Hdr_Date_Of_Customers_Order, FORMAT(DATEPART(Year, h.Date_Of_Customers_Order), '0000') + FORMAT(DATEPART(Month, 
                         h.Date_Of_Customers_Order), '00') AS Date_Of_Customers_Order_MnYr, h.Date_Delivery_Required AS Hdr_Date_Delivery_Required, s.Date_Delivery_Required AS SKU_Date_Delivery_Required, FORMAT(DATEPART(Year, 
                         s.Date_Delivery_Required), '0000') + FORMAT(DATEPART(Month, s.Date_Delivery_Required), '00') AS Date_Delivery_Required_MnYr, FORMAT(DATEPART(Year, s.Date_Delivery_Required), '0000') 
                         + '-' + FORMAT(DATEPART(Week, s.Date_Delivery_Required), '00') AS Date_Delivery_Required_Yr_Wk, FORMAT(DATEADD(Week, DATEDIFF(Week, 0, s.Date_Delivery_Required), 0), 'yyyy-MM-dd') AS WC_Delivery_Required, 
                         FORMAT(DATEADD(Week, DATEDIFF(Week, 0, s.Date_Delivery_Required), - 14), 'yyyy-MM-dd') AS WC_Mon_Delivery_Required_2Wks, FORMAT(DATEADD(Week, DATEDIFF(Week, 0, s.Date_Delivery_Required), - 21), 
                         'yyyy-MM-dd') AS WC_Mon_Delivery_Required_3Wks, h.Date_Order_Suspended AS Hdr_Date_Order_Suspended, h.Order_Suspend_Code AS Hdr_Order_Suspend_Code, h.Price_List_Code AS Hdr_Price_List_Code, 
                         h.Currency_Code AS Hdr_Currency_Code, h.Currency_Rate_Code AS Hdr_Currency_Rate_Code, h.Currency_Rate AS Hdr_Currency_Rate, h.Priority AS Hdr_Priority, 
                         h.[Warehouse/Depot_Location] AS [Hdr_Warehouse/Depot_Location], h.Order_Value AS Hdr_Order_Value, h.Cash_Discount_Code AS Hdr_Cash_Discount_Code, h.Quote_Reference_Number AS Hdr_Quote_Reference_Number, 
                         h.DSIL_order_source_flag AS Hdr_DSIL_order_source_flag, h.Forward_invoice_date AS Hdr_Forward_invoice_date, h.Last_Despatch_Number AS Hdr_Last_Despatch_Number, h.Season_code AS Hdr_Season_code, 
                         h.Status AS Hdr_Status, h.Active_flag AS Hdr_Active_flag, h.Salesman AS Hdr_Salesman, h.Currency_Fixed_Rate AS Hdr_Currency_Fixed_Rate, h.[Multiply/divide_flag] AS [Hdr_Multiply/divide_flag], h.Carrier AS Hdr_Carrier, 
                         h.Payment_Terms_Type AS Hdr_Payment_Terms_Type, h.Payment_Terms_Days AS Hdr_Payment_Terms_Days, h.Payment_Method AS Hdr_Payment_Method, 
                         h.Staged_Cash_Discount_Code AS Hdr_Staged_Cash_Discount_Code, h.Carrier_2 AS Hdr_Carrier_2, h.Carrier_3 AS Hdr_Carrier_3, h.Transport_Method AS Hdr_Transport_Method, 
                         h.Despatch_Time_Required AS Hdr_Despatch_Time_Required, l.Company_Number AS Lin_Company_Number, l.Order_Number AS Lin_Order_Number, l.Order_Line_Number AS Lin_Order_Line_Number, 
                         l.Order_Type AS Lin_Order_Type, l.Order_Source AS Lin_Order_Source, l.Customer_Number AS Lin_Customer_Number, l.Customer_Sequence AS Lin_Customer_Sequence, l.Order_pricing_type AS Lin_Order_pricing_type, 
                         l.Item_Code AS Lin_Item_Code, l.[Warehouse/Depot_Location] AS [Lin_Warehouse/Depot_Location], l.Item_Type AS Lin_Item_Type, l.Division AS Lin_Division, l.[Parent_Item_Flag_(1=yes)] AS [Lin_Parent_Item_Flag_(1=yes)], 
                         l.Quantity_Ordered AS Lin_Quantity_Ordered, l.Quantity_Outstanding AS Lin_Quantity_Outstanding, l.Quantity_Allocated AS Lin_Quantity_Allocated, l.Quantity_Despatched AS Lin_Quantity_Despatched, 
                         l.Date_Delivery_Required AS Lin_Date_Delivery_Required, l.Priority AS Lin_Priority, l.Cash_Discount_Code AS Lin_Cash_Discount_Code, l.Price_List_Code AS Lin_Price_List_Code, l.Fixed_Price AS Lin_Fixed_Price, 
                         l.Unit_Price AS Lin_Unit_Price, l.Order_Line_Value AS Lin_Order_Line_Value, l.Allocation_warehouse AS Lin_Allocation_warehouse, l.Quantity_Packed AS Lin_Quantity_Packed, l.Quantity_Picked AS Lin_Quantity_Picked, 
                         l.Order_Suspend_Code AS Lin_Order_Suspend_Code, l.Prod_Group_Major AS Lin_Prod_Group_Major, l.Prod_Group_Minor AS Lin_Prod_Group_Minor, l.Customer_Class AS Lin_Customer_Class, 
                         l.Back_Orders AS Lin_Back_Orders, l.Status AS Lin_Status, l.Active_flag AS Lin_Active_flag, l.Part_Delivery AS Lin_Part_Delivery, l.Order_Header_Extract_Deleted_Lines AS Lin_Order_Header_Extract_Deleted_Lines, 
                         l.Order_Header_History_Entered_Lines AS Lin_Order_Header_History_Entered_Lines, l.Order_Line_Type AS Lin_Order_Line_Type, l.Parent_Line_Number AS Lin_Parent_Line_Number, 
                         l.[Order_Line_Value_(Base)] AS [Lin_Order_Line_Value_(Base)], l.[Discount_Value_(Base)] AS [Lin_Discount_Value_(Base)], l.Number_Off AS Lin_Number_Off, l.Reserved_Quantity AS Lin_Reserved_Quantity, 
                         l.Entered_Uom AS Lin_Entered_Uom, l.Entered_Quantity AS Lin_Entered_Quantity, l.Purchase_Order_Required AS Lin_Purchase_Order_Required, l.Deliver_direct AS Lin_Deliver_direct, 
                         l.Direct_invoice_purchase_order AS Lin_Direct_invoice_purchase_order, l.Cancellation_reason_code AS Lin_Cancellation_reason_code, l.Salesman AS Lin_Salesman, s.Company_Number AS SKU_Company_Number, 
                         s.Order_Number AS SKU_Order_Number, s.Order_Line_Number AS SKU_Order_Line_Number, s.Sequence_Number AS SKU_Sequence_Number, s.Product_Style_Element AS SKU_Product_Style_Element, 
                         s.[2nd_element_of_product_code] AS SKU_2nd_element_of_product_code, s.Product_Size_Element AS SKU_Product_Size_Element, s.Quantity_Ordered AS SKU_Quantity_Ordered, 
                         s.Quantity_Outstanding AS SKU_Quantity_Outstanding, s.Quantity_Allocated AS SKU_Quantity_Allocated, s.Quantity_Despatched AS SKU_Quantity_Despatched, s.Quantity_Packed AS SKU_Quantity_Packed, 
                         s.Quantity_Picked AS SKU_Quantity_Picked, s.Reserved_Quantity AS SKU_Reserved_Quantity, s.[Warehouse/Depot_Location] AS [SKU_Warehouse/Depot_Location], s.Status AS SKU_Status, 
                         h.Customer_Key AS hdr_Customer_Key, addr.Customer_Name, REPLACE(s.Product_Key, ' ', '') AS SKU_Product_Key, REPLACE(item.Product_Key, ' ', '') AS itm_product_key, addr.Customer_Key AS adr_Customer_Key, 
                         item.Item_Description AS itm_item_description, LEFT(item.Item_Description, 18) AS itm_item_description_short, itc.Class_Name AS itc_class_name, item.Item AS itc_item, item.Specification_2 AS itm_spec2, 
                         item.Item_Type AS itc_itm_typ, item.Item_Class AS itm_item_class, item.Item_Group_Major AS itm_item_grp_maj, item.Item_Group_Minor AS itm_item_grp_min, item.Status AS itm_item_status, 
                         item.Product_transaction_control_type AS itm_current_season, item.Product_Key, item.Active_flag, item.Company_Number, item.[Effect Start_Date], item.Effectivity_end_date, item.[Std_cst/Stock_unit], 
                         item.[Latest_cst/stock__unit], item.[Average_Cost/_stock_unit], item.Costing_Method, item.Specification_3, item.Division, item.[Sub-division], item.[Purch/Packing_Unit], item.Purchase_Unit, item.Stock_Unit, item.Issue_Unit, 
                         item.[V A T _Code], item.Item_Discount_Group, item.Superseded_by_item, item.Superseded_on_date, item.Stock_source, item.Duty, item.Base_List_Price, item.Warranty_Type, item.Storage_Method, item.EEC_Tariff_Code, 
                         item.Tariff_Date, item.Tariff_Reference, item.Bar_Code, item.Date_Last_Changed, item.Weight_per_unit, item.[Planner/P_Officer], item.Default_search_family_code, pgmn.Parameter_Search_Key AS pgmn_parm_search_key, 
                         pgmn.Parameter_Desc AS pgmn_parm_desc, pgmn.Parameter_Type AS pgmn_parm_type, pgmj.Parameter_Type AS pgmj_parm_type, pgmj.Parameter_Search_Key AS pgmj_parm_search_key, 
                         pgmj.Parameter_Desc AS pgmj_parm_desc, ortp.Parameter_Type AS ortp_parm_type, ortp.Parameter_Search_Key AS ortp_parm_search_key, ortp.Parameter_Desc AS ortp_parm_desc, srce.Parameter_Type AS srce_parm_type,
                          srce.Parameter_Search_Key AS srce_parm_search_key, srce.Parameter_Desc AS srce_parm_desc, susp.Parameter_Type AS susp_parm_type, susp.Parameter_Search_Key AS susp_parm_search_key, 
                         susp.Parameter_Desc AS susp_parm_desc, addr.Country_Code, disc.Charge_Code AS d_Charge_Code, disc.Percent_Val_Ind AS d_Percent_Val_Ind, disc.Charge_Value AS d_Charge_Value, 
                         disc.Line_Vat_Value AS d_Line_Vat_Value, disc.Charge_Value_Base AS d_Charge_Value_Base, disc.Vat_Value_Base AS d_Vat_Value_Base, disc.Fixed_Charge_Ind AS d_Fixed_Charge_Ind, disc.Order_Desc AS d_Order_Desc, 
                         disc.Date_Last_Change AS d_Date_Last_Change, disc.Status AS d_Status, disc.Active_Flag AS d_Active_Flag, disc.Invoice_Number AS d_Invoice_Number, disc.Desp_Note_Seq AS d_Desp_Note_Seq, 
                         disc.Invoice_Type AS d_Invoice_Type, disc.VAT_Rate_1 AS d_VAT_Rate_1, disc.VAT_Rate_2 AS d_VAT_Rate_2, disc.VAT_Rate AS d_VAT_Rate, disc.Normal_VAT_Amount_Prime AS d_Normal_VAT_Amount_Prime, 
                         disc.Extra_VAT_Amount_Prime AS d_Extra_VAT_Amount_Prime, disc.Normal_VAT_Amount_Base AS d_Normal_VAT_Amount_Base, disc.Extra_VAT_Amount_Base AS d_Extra_VAT_Amount_Base, 
                         disc.Provincial_Sales_Tax_Value AS d_Provincial_Sales_Tax_Value, SLSREP.Sales_Rep_Name
FROM            DickiesLife_Europe_BI.dbo.raw_OEP40 AS h INNER JOIN
                         DickiesLife_Europe_BI.dbo.raw_OEP55 AS l ON h.Order_Key = l.Order_Key INNER JOIN
                         DickiesLife_Europe_BI.dbo.raw_APP52 AS s ON l.Order_Line_Key = s.Order_Line_Key INNER JOIN
                         DickiesLife_Europe_BI.dbo.raw_SLP05 AS addr ON h.Customer_Key = addr.Customer_Key LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.raw_INP35 AS item ON s.Product_Key = item.Product_Key LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.Item_Class AS itc ON item.Item_Class = itc.Class_Code LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.raw_INP15 AS pgmn ON item.Item_Group_Minor = pgmn.Parameter_Search_Key AND pgmn.Parameter_Type = 'PGMN' LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.raw_INP15 AS pgmj ON item.Item_Group_Major = pgmj.Parameter_Search_Key AND pgmj.Parameter_Type = 'PGMJ' LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.raw_INP15 AS ortp ON h.Order_Type = ortp.Parameter_Search_Key AND ortp.Parameter_Type = 'ORTP' LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.raw_INP15 AS srce ON h.Order_Source = srce.Parameter_Search_Key AND srce.Parameter_Type = 'SRCE' LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.raw_INP15 AS susp ON h.Order_Suspend_Code = susp.Parameter_Search_Key AND susp.Parameter_Type = 'SUSP' LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.raw_OEP50 AS disc ON h.Order_Key = disc.Charges_Key LEFT OUTER JOIN
                         DickiesLife_Europe_BI.dbo.Sales_Reps AS SLSREP ON h.Salesman = SLSREP.Sales_Rep_Code
WHERE        (s.Status <> 'X')

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[4] 2[44] 3) )"
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
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "h"
            Begin Extent = 
               Top = 5
               Left = 10
               Bottom = 776
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 24
         End
         Begin Table = "l"
            Begin Extent = 
               Top = 9
               Left = 374
               Bottom = 147
               Right = 648
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 26
               Left = 677
               Bottom = 438
               Right = 928
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "addr"
            Begin Extent = 
               Top = 157
               Left = 373
               Bottom = 783
               Right = 647
            End
            DisplayFlags = 280
            TopColumn = 71
         End
         Begin Table = "item"
            Begin Extent = 
               Top = 43
               Left = 966
               Bottom = 807
               Right = 1169
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "itc"
            Begin Extent = 
               Top = 4
               Left = 1199
               Bottom = 134
               Right = 1389
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pgmn"
            Begin Extent = 
               Top = 465
               Left = 1415
               Bottom = 809
               Right = 1751
            End
            DisplayFlags = 280
            TopColumn =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'All_Sales_Orders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N' 6
         End
         Begin Table = "pgmj"
            Begin Extent = 
               Top = 486
               Left = 1789
               Bottom = 616
               Right = 2138
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ortp"
            Begin Extent = 
               Top = 618
               Left = 1789
               Bottom = 748
               Right = 2138
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "srce"
            Begin Extent = 
               Top = 750
               Left = 1789
               Bottom = 880
               Right = 2138
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "susp"
            Begin Extent = 
               Top = 810
               Left = 1017
               Bottom = 940
               Right = 1366
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "disc"
            Begin Extent = 
               Top = 138
               Left = 1207
               Bottom = 452
               Right = 1448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SLSREP"
            Begin Extent = 
               Top = 438
               Left = 685
               Bottom = 551
               Right = 875
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
         Column = 2760
         Alias = 3585
         Table = 1485
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1140
         Or = 1545
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'All_Sales_Orders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'All_Sales_Orders';

