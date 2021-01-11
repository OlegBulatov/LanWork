inherited A006_1_PTSettings: TA006_1_PTSettings
  Width = 1001
  Height = 785
  object Splitter1: TSplitter [0]
    Left = 250
    Top = 0
    Width = 5
    Height = 785
    Cursor = crHSplit
  end
  inherited paMain: TPanel
    Left = 255
    Width = 746
    Height = 785
    TabOrder = 2
    inherited xxxDBGrid: TxxxDBGrid
      Width = 746
      Height = 720
    end
    inherited fmSeach: TfmSeachFrame
      Width = 746
      inherited Panel1: TPanel
        Left = 719
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 746
      inherited Panel1: TPanel
        Left = 719
      end
    end
    inherited paTopToolBar: TPanel
      Width = 746
    end
  end
  object paSettings: TPanel [2]
    Left = 255
    Top = 0
    Width = 746
    Height = 785
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paSettings'
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 0
      Top = 277
      Width = 746
      Height = 5
      Cursor = crVSplit
      Align = alTop
    end
    object pcFilter: TPageControl
      Left = 0
      Top = 282
      Width = 746
      Height = 503
      ActivePage = tsFilter
      Align = alClient
      TabOrder = 0
      object tsFilter: TTabSheet
        Caption = 'Фильтр'
        inline A006_FilterList1: TA006_FilterList
          Width = 738
          Height = 475
          Align = alClient
          inherited paMain: TPanel
            Width = 738
            Height = 475
            inherited xxxDBGrid: TxxxDBGrid
              Width = 738
              Height = 410
            end
            inherited fmSeach: TfmSeachFrame
              Width = 738
              inherited Panel1: TPanel
                Left = 711
              end
            end
            inherited fm31_Filter: Tfm31_Filter
              Width = 738
              inherited Panel1: TPanel
                Left = 711
              end
            end
            inherited paTopToolBar: TPanel
              Width = 738
            end
          end
        end
      end
    end
    object pcSelectedFields: TPageControl
      Left = 0
      Top = 0
      Width = 746
      Height = 277
      ActivePage = tsSelected
      Align = alTop
      TabOrder = 1
      object tsSelected: TTabSheet
        Caption = 'Выбранные поля'
        inline A006_SelectedFields1: TA006_SelectedFields
          Width = 738
          Height = 249
          Align = alClient
          inherited paMain: TPanel
            Width = 738
            Height = 249
            inherited xxxDBGrid: TxxxDBGrid
              Width = 738
              Height = 184
            end
            inherited fmSeach: TfmSeachFrame
              Width = 738
              inherited Panel1: TPanel
                Left = 711
              end
            end
            inherited fm31_Filter: Tfm31_Filter
              Width = 738
              inherited Panel1: TPanel
                Left = 711
              end
            end
            inherited paTopToolBar: TPanel
              Width = 738
            end
          end
        end
      end
    end
  end
  object PageControl1: TPageControl [3]
    Left = 0
    Top = 0
    Width = 250
    Height = 785
    ActivePage = tsMenu
    Align = alLeft
    TabOrder = 1
    object tsMenu: TTabSheet
      Caption = 'Область данных'
      inline A006_FieldsList1: TA006_FieldsList
        Width = 242
        Height = 757
        Align = alClient
        inherited tvMenu: TTreeView
          Width = 242
          Height = 734
        end
        inherited ToolBar2: TToolBar
          Width = 242
        end
      end
    end
  end
end
