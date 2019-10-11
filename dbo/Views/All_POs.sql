CREATE VIEW dbo.All_POs
AS
SELECT        h.Allocation_credit_check AS Hdr_Allocation_credit_check, h.Company_Number AS Hdr_Company_Number, h.Supplier AS Hdr_Supplier, h.Order_Number AS Hdr_Order_Number, h.Ord_Date AS Hdr_Ord_Date, 
                         h.[Planner/P_Officer] AS [Hdr_Planner/P_Officer], h.Curr_Code AS Hdr_Curr_Code, h.Warehouse AS Hdr_Warehouse, h.Spare_Date_For_Future_Use AS Hdr_Spare_Date_For_Future_Use, l.Item_Number AS Lin_Item_Number, 
                         l.Warehouse AS Lin_Warehouse, l.Vend_Cat_No AS Lin_Vend_Cat_No, l.[Planner/P_Officer] AS [Lin_Planner/P_Officer], l.Item_Class AS Lin_Item_Class, l.Order_Qty AS Lin_Order_Qty, l.Price AS Lin_Price, 
                         l.Price_UOM AS Lin_Price_UOM, l.Due_Date AS Lin_Due_Date, l.Quantity_Outstanding AS Lin_Quantity_Outstanding, l.[Qty_Rec d] AS [Lin_Qty_Rec d], l.Qty_Invoiced AS Lin_Qty_Invoiced, 
                         l.Spare_Date_For_Future_Use AS Lin_Spare_Date_For_Future_Use, l.Recieving_Address_Code AS Lin_Recieving_Address_Code, l.Reserved_Quantity AS Lin_Reserved_Quantity, s.Order_Number AS SKU_Order_Number, 
                         s.Line_Number AS SKU_Line_Number, s.Item_Number AS SKU_Item_Number, s.Warehouse AS SKU_Warehouse, s.Vend_Cat_No AS SKU_Vend_Cat_No, s.Item_Class AS SKU_Item_Class, s.Order_Qty AS SKU_Order_Qty, 
                         s.Price AS SKU_Price, s.Price_UOM AS SKU_Price_UOM, s.Due_Date AS SKU_Due_Date, s.Quantity_Outstanding AS SKU_Quantity_Outstanding, s.[Qty_Rec d] AS [SKU_Qty_Rec d], s.Qty_Invoiced AS SKU_Qty_Invoiced, 
                         s.Spare_Date_For_Future_Use AS SKU_Spare_Date_For_Future_Use, s.Recieving_Address_Code AS SKU_Recieving_Address_Code, s.Reserved_Quantity AS SKU_Reserved_Quantity, h.Recieving_Address_Code, 
                         l.Line_Number AS Expr9, s.Allocation_credit_check AS Expr10, l.Allocation_credit_check AS Expr1, h.PO_Key AS Expr7, h.Supplier_Key AS Expr5, l.Supplier_Key AS Expr2, s.PO_Line_Key, s.PO_Item_Key, l.PO_Key AS Expr3, 
                         l.PO_Line_Key AS Expr4, IT.Product_Key AS Expr14, IT.Active_flag AS Expr15, IT.Company_Number AS Expr6, IT.Style, IT.Colour_Code, IT.Size_Code, IT.Item AS Expr16, IT.Item_Description AS Expr17, 
                         IT.[Effect Start_Date] AS Expr18, IT.Effectivity_end_date AS Expr19, IT.[Std_cst/Stock_unit] AS Expr20, IT.[Latest_cst/stock__unit] AS Expr21, IT.[Average_Cost/_stock_unit] AS Expr22, IT.Costing_Method AS Expr23, 
                         IT.Specification_1 AS Expr24, IT.Specification_2 AS Expr25, IT.Specification_3 AS Expr26, IT.Item_Type AS Expr27, IT.Item_Class AS Expr28, IT.Division AS Expr29, IT.[Sub-division] AS Expr30, IT.Item_Group_Major AS Expr31, 
                         IT.Item_Group_Minor AS Expr32, IT.[Purch/Packing_Unit] AS Expr33, IT.Purchase_Unit AS Expr34, IT.Stock_Unit AS Expr35, IT.Issue_Unit AS Expr36, IT.[Stck_purch_conv fact] AS Expr37, IT.[Issue->Stock__Conv factor] AS Expr38,
                          IT.[V A T _Code] AS Expr39, IT.Item_Discount_Group AS Expr40, IT.Superseded_by_item AS Expr41, IT.Superseded_on_date AS Expr42, IT.Stock_source AS Expr43, IT.Duty AS Expr44, IT.Price_List_Seq_Code AS Expr45, 
                         IT.Base_List_Price AS Expr46, IT.[Default_G/L_A/C] AS Expr47, IT.[Default_cost_of__Sales_GL_A/C] AS Expr48, IT.[Default_Sales__G/L_A/C] AS Expr49, IT.[Default_Price__Variance_A/C] AS Expr50, IT.Storage_Method AS Expr51, 
                         IT.Warranty_Type AS Expr52, IT.Shelf_Life_Unit AS Expr53, IT.Shelf_Life AS Expr54, IT.Customer_Shelf_Life AS Expr55, IT.EEC_Tariff_Code AS Expr56, IT.Tariff_Date AS Expr57, IT.Tariff_Reference AS Expr58, 
                         IT.[Kit_List_Present?__1/0] AS Expr59, IT.Bar_Code AS Expr60, IT.[Inspection_Required?__1/0] AS Expr61, IT.[Batch_Control?_Lot/Serial/No] AS Expr62, IT.Price_Regulator_Code AS Expr63, IT.Date_Last_Changed AS Expr64, 
                         IT.Status AS Expr65, IT.[Sub-Contract_Item] AS Expr66, IT.Weight_per_unit AS Expr67, IT.[Planner/P_Officer] AS Expr68, IT.Resource_Code AS Expr69, IT.Unitary_Item_Flag AS Expr70, IT.[S/A_Update_Flag] AS Expr71, 
                         IT.Feature_Type AS Expr72, IT.Default_search_family_code AS Expr73, IT.[Certificate_of_Conf _code] AS Expr74, IT.[Non-stocked_item_type] AS Expr75, IT.Default_supplier AS Expr76, 
                         IT.Certificate_of_Conformance_Flag AS Expr77, IT.[Lower_margin_tolerance_%] AS Expr78, IT.[Upper_margin_tolerance_%] AS Expr79, IT.Cubage_per_issue_unit AS Expr80, IT.Cubage_unit_of_measure AS Expr81, 
                         IT.Weight_unit_of_measure AS Expr82, IT.Exceptional_usage_quantity AS Expr83, IT.Placement_cost AS Expr84, IT.Retest_days AS Expr85, IT.Standard_potency AS Expr86, IT.Specific_gravity AS Expr87, 
                         IT.[Purchase_order_time_fence_(days)] AS Expr88, IT.[Item_restricted_use_(0=Not_resticted,_1=] AS Expr89, IT.Usage_calculation_code AS Expr90, IT.Feature_code AS Expr91, IT.Provincial_Sales_Tax_Rate_Code AS Expr92, 
                         IT.Last_Used_Variation_Number AS Expr93, IT.[Discontinued_product_flag_(1=To_be_deleted)] AS Expr94, IT.Product_transaction_control_type AS Expr95, IT.Discontinued_reason_code AS Expr96, 
                         IT.Catchweight_item AS Expr97, IT.Cost_by_weight AS Expr98, IT.Average_weight AS Expr99, IT.Weight_tolerance_percentage AS Expr100, IT.Style_product AS Expr101, IT.Calculated_annual_average_cost AS Expr102, 
                         IT.Manual_annual_average_cost AS Expr103, IT.Calculated_3mnth_average_cost AS Expr104, IT.Manual_3mnth_average_cost AS Expr105, IT.Temperature_identifier AS Expr106, IT.Weight_Tolerance_Value AS Expr107, 
                         IT.Default_Receipt_Stock_Status AS Expr108, SUPP.Record_Status_Code, SUPP.Supplier_Key, SUPP.Company_Number AS Expr8, SUPP.Supplier_Code, SUPP.Delivery_Address_Sequence_Number, SUPP.Supplier_Name, 
                         SUPP.Supplier_Address_Line_1, SUPP.Supplier_Address_Line_2, SUPP.Supplier_Address_Line_3, SUPP.Supplier_Address_Line_4, SUPP.Supplier_Address_Line_5, SUPP.Supplier_Address_Post_Code_1, 
                         SUPP.Supplier_Address_Post_Code_2, SUPP.Payment_Address_Code, SUPP.Supplier_Group_Code_1, SUPP.Supplier_Group_Code_2, SUPP.Supplier_Group_Code_3, SUPP.Supplier_Group_Code_4, SUPP.VAT_Code, 
                         SUPP.Supplier_Contact_Name, SUPP.Phone_Number, SUPP.Special_Instructions, SUPP.Currency_Code AS Expr11, SUPP.Discount_Rate, SUPP.Discount_Override, SUPP.Payment_Method, SUPP.Payment_Category, 
                         SUPP.Item_Payment_Status_Flag, SUPP.[Record-In-Use_Flag], SUPP.[Date_A/C_Opened], SUPP.Alpha_Sequence_Field_For_SomeReports, SUPP.Number_Of_Last_Record_Update, SUPP.GL_Bank_Account, 
                         SUPP.GL_Creditors_Control_Account, SUPP.GL_Creditors_Control_Extension, SUPP.GL_Company_Number, SUPP.Payment_Terms_Type, SUPP.[Payment_Terms_(Periodic_Range)], SUPP.[Payment_Terms_(Terms_Days)], 
                         SUPP.Printed_Flag, SUPP.GL_Default_Purchase_Account, SUPP.GL_Default_Purchases_Extension, SUPP.Fax_Number, SUPP.Currency_Supplier, SUPP.Contra_Account_Application, SUPP.Contra_Account_Company, 
                         SUPP.Contra_Account, SUPP.[Bank_Account_Number/Codes], SUPP.Bank_Account_Name, SUPP.Language_Code, SUPP.Commission_Rate, SUPP.Commission_Charge, SUPP.[VAT_Based_on_Cash_Date?____(0/1)], 
                         SUPP.BoE_Payment_Terms_Type, SUPP.BoE_Payment_Terms_Period_Range, SUPP.BoE_Payment_Terms_Terms_Days, SUPP.[Bank_Name_&_Address_Line_1], SUPP.[Bank_Name_&_Address_Line_2], SUPP.Country_Code, 
                         SUPP.[Tax_Registration_No ], SUPP.Value_Days, SUPP.Discount_Taken_Date, SUPP.Off_Supplier_Flag, SUPP.Creditors_Suspense_Account, SUPP.Creditors_Suspense_Account_Extension, SUPP.Settlement_Profile_Code, 
                         SUPP.Default_Secondary_Analysis_Code, SUPP.PST_Rate_Code, SUPP.Province_Code, SUPP.Company_Registration_code, SUPP.Telex_Number, SUPP.Contract_Currency_Rate, SUPP.TBS, SUPP.TBS1, SUPP.TBS3, 
                         SUPP.Company_of_Tax_Supplier, SUPP.Tax_Supplier_Code, SUPP.Tax_ID, SUPP.Classification_Code, SUPP.Tax_Type, SUPP.National_Code, SUPP.Fiscal_Code, SUPP.Birthplace, SUPP.Area, SUPP.Sex_Type, 
                         SUPP.Date_of_Birth, SUPP.Calculation_percentage, SUPP.Tax_percentage, SUPP.Address_Code, SUPP.Witholding_Tax, SUPP.VAT_Register, SUPP.Payment_Spread_Profile_Code, SUPP.VAT_Register_Required, 
                         SUPP.Master_control_account_type, SUPP.Tax_Registration_Country, SUPP.Bespoke_Development, SUPP.VAT_Rounding_Rule, SUPP.Calendar_Code, SUPP.Alternative_Name, SUPP.Quality_Code, SUPP.Default_Rate_Code, 
                         SUPP.Group_Supplier, SUPP.Credit_Limit, SUPP.Analysis_Reporting_Id, SUPP.Analysis_Group_Code, SUPP.Analysis_Reporting_Type, SUPP.Standard_Journal_Reference, SUPP.Alternative_Phone_Number, 
                         SUPP.Alternative_Contact_Name, SUPP.Alternative_Fax_Number, SUPP.Freight_on_Board_Point, SUPP.Shipment_Method, FRT.Route_Code AS Expr12, FRT.Freight_Terms_Code AS Expr13, LC.[Elemental_Cost_(Prime)], 
                         LC.[Elemental_Cost_(Base)], LC.[Elemental_Cost_(Prime)_of_Landed_Cost_Line], C.Class_Code, C.Class_Name, R.Item, R.Item_Description, R.Specification_1, R.Specification_2, R.Specification_3, R.Item_Type, R.Item_Class, 
                         R.Division, R.[Sub-division], R.Item_Group_Major, R.Item_Group_Minor, R.Status, pgmn.Parameter_Desc, pgmj.Parameter_Desc AS Expr109
FROM            [DickiesLife_Europe_BI].[dbo].[raw_PMP02] AS h INNER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_PMP03] l ON h.PO_Key = l.PO_Key INNER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_PMP53] s ON l.PO_Line_Key = s.PO_Line_Key INNER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_FLP081] ON h.Company_Number = [DickiesLife_Europe_BI].[dbo].[raw_FLP081].[Company_Number] INNER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_APP06] ON h.PO_Key = [DickiesLife_Europe_BI].[dbo].[raw_APP06.PO_Key] INNER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_DKPM200PF] ON s.PO_Item_Key = [DickiesLife_Europe_BI].[dbo].[raw_DKPM200PF].[PO_Item_Key] INNER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_DKPMHXP] ON h.PO_Key = [DickiesLife_Europe_BI].[dbo].[raw_DKPMHXP].[PO_Key] LEFT OUTER JOIN
                         [DickiesLife_Europe_BI].[dbo].[DickiesLife_Items] IT ON s.Item_Number = IT.Item LEFT OUTER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_PLP05] SUPP ON h.Company_Number + REPLACE(h.Supplier, ' ', '') + h.Sup_Adress_Seq = SUPP.Supplier_Key LEFT OUTER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_PMP04] LC ON h.Order_Number = LC.Order_Number AND s.Line_Number = LC.Line_Number LEFT OUTER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_PMP02E] FRT ON h.Order_Number = FRT.Order_Number LEFT OUTER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_INP35] R ON IT.Style = R.Item LEFT OUTER JOIN
                         [DickiesLife_Europe_BI].[dbo].[Item_Class] C ON R.Item_Class = C.Class_Code LEFT OUTER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_INP15] pgmn ON IT.Item_Group_Minor = pgmn.Parameter_Search_Key AND pgmn.Parameter_Type = 'PGMN' LEFT OUTER JOIN
                         [DickiesLife_Europe_BI].[dbo].[raw_INP15] pgmj ON IT.Item_Group_Major = pgmj.Parameter_Search_Key AND pgmj.Parameter_Type = 'PGMJ'
WHERE        (h.Company_Number = 'DC') AND (h.Allocation_credit_check <> 'C') AND (h.Warehouse <> '(NE,ME)')

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[71] 4[3] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1[56] 3) )"
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
         Configuration = "(H (1[75] 4) )"
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
      ActivePaneConfig = 12
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "h"
            Begin Extent = 
               Top = 25
               Left = 5
               Bottom = 629
               Right = 304
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "l"
            Begin Extent = 
               Top = 24
               Left = 310
               Bottom = 354
               Right = 675
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 25
               Left = 678
               Bottom = 351
               Right = 1043
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "IT"
            Begin Extent = 
               Top = 22
               Left = 1534
               Bottom = 861
               Right = 1865
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SUPP"
            Begin Extent = 
               Top = 24
               Left = 1049
               Bottom = 205
               Right = 1352
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LC"
            Begin Extent = 
               Top = 357
               Left = 311
               Bottom = 527
               Right = 647
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "FRT"
            Begin Extent = 
               Top = 530
               Left = 315
               Bottom = 730
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 0
    ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'All_POs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'     End
         Begin Table = "R"
            Begin Extent = 
               Top = 362
               Left = 911
               Bottom = 864
               Right = 1147
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 530
               Left = 555
               Bottom = 729
               Right = 735
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pgmn"
            Begin Extent = 
               Top = 402
               Left = 1155
               Bottom = 584
               Right = 1504
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pgmj"
            Begin Extent = 
               Top = 215
               Left = 1155
               Bottom = 396
               Right = 1504
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "raw_FLP081 (DickiesLife_Europe_BI.dbo)"
            Begin Extent = 
               Top = 630
               Left = 6
               Bottom = 867
               Right = 312
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "raw_APP06 (DickiesLife_Europe_BI.dbo)"
            Begin Extent = 
               Top = 735
               Left = 317
               Bottom = 865
               Right = 656
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "raw_DKPM200PF (DickiesLife_Europe_BI.dbo)"
            Begin Extent = 
               Top = 588
               Left = 1154
               Bottom = 757
               Right = 1505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "raw_DKPMHXP (DickiesLife_Europe_BI.dbo)"
            Begin Extent = 
               Top = 762
               Left = 1152
               Bottom = 892
               Right = 1505
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 2415
         Alias = 2775
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'All_POs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'All_POs';

