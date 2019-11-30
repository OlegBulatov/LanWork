inherited R01_Link: TR01_Link
  Width = 1060
  Height = 607
  object Splitter1: TSplitter [0]
    Left = 225
    Top = 0
    Width = 5
    Height = 607
    Cursor = crHSplit
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 225
    Height = 607
    ActivePage = tsDiv
    Align = alLeft
    TabOrder = 0
    object tsDiv: TTabSheet
      Caption = 'Объявления'
      inline R01_Dividens1: TR01_Dividens
        Width = 217
        Height = 579
        Align = alClient
        inherited paTreeParent: TPanel
          Width = 217
          Height = 454
          inherited tvList: TTreeView
            Width = 213
            Height = 433
          end
          inherited hcTreeColums: THeaderControl
            Width = 213
          end
        end
        inherited paToolButton: TPanel
          Width = 217
          inherited tlbList: TToolBar
            Width = 245
          end
          inherited tlbExcel: TToolBar
            Left = 425
          end
          inherited tlbSeach: TToolBar
            Left = 459
            Width = 71
          end
          inherited tlbFilter: TToolBar
            Left = 530
            Width = 94
          end
          inherited tlbSelect: TToolBar
            Left = 624
            Width = 35
          end
        end
        inherited paDivDetail: TPanel
          Top = 479
          Width = 217
          inherited edOneSum: TEdit
            Width = 117
          end
          inherited edPrc: TEdit
            Width = 117
          end
          inherited edTaxPr: TEdit
            Width = 117
          end
          inherited edTaxPf: TEdit
            Width = 117
          end
        end
      end
    end
  end
  object PageControl2: TPageControl [2]
    Left = 230
    Top = 0
    Width = 830
    Height = 607
    ActivePage = tsOpers
    Align = alClient
    TabOrder = 1
    object tsOpers: TTabSheet
      Caption = 'Выплаты'
      inline R01_Opers1: TR01_Opers
        Width = 822
        Height = 579
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 822
          Height = 422
        end
        inherited paToolButton: TPanel
          Width = 822
        end
        inherited paLink: TPanel
          Top = 479
          Width = 822
          inherited fmCheckBox1: TfmCheckBox
            Left = 686
          end
        end
        inherited paFilter: TPanel
          Width = 822
        end
      end
    end
  end
end
