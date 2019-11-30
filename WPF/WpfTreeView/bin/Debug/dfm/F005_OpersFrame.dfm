inherited F005_Opers: TF005_Opers
  Width = 634
  Height = 484
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 634
    Height = 484
    ActivePage = Page_11
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object Page_11: TTabSheet
      Caption = 'Раздел 1.1'
      inline Grid_11: TF005_Opers11
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 340
        end
        inherited paToolButton: TPanel
          Width = 626
          inherited tlbSelect: TToolBar
            Width = 210
          end
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
      end
    end
    object Page_12: TTabSheet
      Caption = 'Раздел 1.2'
      ImageIndex = 1
      inline Grid_12: TF005_Opers12
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 243
        end
        inherited paToolButton: TPanel
          Width = 626
          inherited tlbList: TToolBar
            Width = 245
          end
          inherited tlbExcel: TToolBar
            Left = 322
          end
          inherited tlbSeach: TToolBar
            Left = 356
            Width = 71
          end
          inherited tlbFilter: TToolBar
            Left = 427
          end
          inherited tlbSelect: TToolBar
            Left = 508
            Width = 184
          end
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
      end
    end
    object Page_121: TTabSheet
      Caption = 'Раздел 1.2.1'
      ImageIndex = 2
      inline Grid_121: TF005_Opers121
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 340
        end
        inherited paToolButton: TPanel
          Width = 626
          inherited tlbList: TToolBar
            Width = 245
          end
          inherited tlbExcel: TToolBar
            Left = 322
          end
          inherited tlbSeach: TToolBar
            Left = 356
            Width = 71
          end
          inherited tlbFilter: TToolBar
            Left = 427
          end
          inherited tlbSelect: TToolBar
            Left = 508
            Width = 184
          end
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
      end
    end
    object Page_13: TTabSheet
      Caption = 'Раздел 1.3'
      ImageIndex = 3
      inline Grid_13: TF005_Opers13
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 340
        end
        inherited paToolButton: TPanel
          Width = 626
          inherited tlbList: TToolBar
            Width = 245
          end
          inherited tlbExcel: TToolBar
            Left = 322
          end
          inherited tlbSeach: TToolBar
            Left = 356
            Width = 71
          end
          inherited tlbFilter: TToolBar
            Left = 427
          end
          inherited tlbSelect: TToolBar
            Left = 508
            Width = 184
          end
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
      end
    end
    object Page_14: TTabSheet
      Caption = 'Раздел 1.4'
      ImageIndex = 4
      inline Grid_14: TF005_Opers14
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 340
        end
        inherited paToolButton: TPanel
          Width = 626
          inherited tlbList: TToolBar
            Width = 245
          end
          inherited tlbExcel: TToolBar
            Left = 322
          end
          inherited tlbSeach: TToolBar
            Left = 356
            Width = 71
          end
          inherited tlbFilter: TToolBar
            Left = 427
          end
          inherited tlbSelect: TToolBar
            Left = 508
            Width = 184
          end
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
      end
    end
    object Page_21: TTabSheet
      Caption = 'Раздел 2.1'
      ImageIndex = 5
      inline Grid_21: TF005_Opers21
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 340
        end
        inherited paToolButton: TPanel
          Width = 626
          inherited tlbList: TToolBar
            Width = 245
          end
          inherited tlbExcel: TToolBar
            Left = 322
          end
          inherited tlbSeach: TToolBar
            Left = 356
            Width = 71
          end
          inherited tlbFilter: TToolBar
            Left = 427
          end
          inherited tlbSelect: TToolBar
            Left = 508
            Width = 35
          end
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
      end
    end
    object Page_22: TTabSheet
      Caption = 'Раздел 2.2'
      ImageIndex = 6
      inline Grid_22: TF005_Opers22
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 340
        end
        inherited paToolButton: TPanel
          Width = 626
          inherited tlbList: TToolBar
            Width = 245
          end
          inherited tlbExcel: TToolBar
            Left = 322
          end
          inherited tlbSeach: TToolBar
            Left = 356
            Width = 71
          end
          inherited tlbFilter: TToolBar
            Left = 427
          end
          inherited tlbSelect: TToolBar
            Left = 508
            Width = 35
          end
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
        inherited actList: TActionList
          Left = 44
          Top = 284
        end
        inherited dsList: TDataSource
          Left = 261
          Top = 223
        end
        inherited odsList: TOracleDataSet
          Left = 221
          Top = 221
        end
        inherited PopupMenu: TPopupMenu
          Left = 36
          Top = 215
        end
        inherited oqAdd: TOracleQuery
          Left = 307
          Top = 224
        end
        inherited oqUpdate: TOracleQuery
          Left = 307
          Top = 260
        end
        inherited oqDelete: TOracleQuery
          Left = 307
          Top = 300
        end
        inherited odsFetchRecord: TOracleDataSet
          Left = 221
          Top = 282
        end
      end
    end
    object Page_23: TTabSheet
      Caption = 'Раздел 2.3'
      ImageIndex = 7
      inline Grid_23: TF005_Opers23
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 340
        end
        inherited paToolButton: TPanel
          Width = 626
          inherited tlbList: TToolBar
            Width = 245
          end
          inherited tlbExcel: TToolBar
            Left = 322
          end
          inherited tlbSeach: TToolBar
            Left = 356
            Width = 71
          end
          inherited tlbFilter: TToolBar
            Left = 427
          end
          inherited tlbSelect: TToolBar
            Left = 508
            Width = 35
          end
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
      end
    end
    object Page_3: TTabSheet
      Caption = 'Раздел 3'
      ImageIndex = 8
      inline Grid_3: TF005_Opers3
        Width = 626
        Height = 456
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 626
          Height = 340
        end
        inherited paToolButton: TPanel
          Width = 626
        end
        inherited paFilters: TPanel
          Width = 626
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 626
          inherited Panel1: TPanel
            Left = 599
          end
        end
      end
    end
  end
end
