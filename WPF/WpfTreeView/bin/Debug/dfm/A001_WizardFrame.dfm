inherited A001_Wizard: TA001_Wizard
  Width = 916
  Height = 595
  inherited Bevel: TBevel
    Top = 556
    Width = 916
  end
  inherited Panel1: TPanel
    Top = 558
    Width = 916
    inherited Panel3: TPanel
      Left = 665
    end
  end
  inherited PageControl: TPageControl
    Width = 916
    Height = 556
    inherited TabSheet1: TTabSheet
      inline A001_Step011: TA001_Step01
        Width = 908
        Height = 525
        Align = alClient
        inherited Bevel: TBevel
          Width = 908
        end
        inherited PanelStepCaption: TPanel
          Width = 908
        end
        inherited PanelStepBody: TPanel
          Width = 908
          Height = 473
        end
        inherited actList: TActionList
          Left = 608
          Top = 56
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline A001_Step021: TA001_Step02
        Width = 908
        Height = 525
        Align = alClient
        inherited Bevel: TBevel
          Width = 908
        end
        inherited PanelStepCaption: TPanel
          Width = 908
        end
        inherited PanelStepBody: TPanel
          Width = 908
          Height = 473
          inherited A001_Preview1: TA001_Preview
            Width = 908
            Height = 473
            inherited xxxDBGrid: TxxxDBGrid
              Width = 908
              Height = 418
            end
            inherited paToolButton: TPanel
              Width = 908
            end
            inherited paFilter: TPanel
              Width = 908
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'иру3...'
      ImageIndex = 2
      inline A001_Step031: TA001_Step03
        Width = 908
        Height = 525
        Align = alClient
        inherited Bevel: TBevel
          Width = 908
        end
        inherited PanelStepCaption: TPanel
          Width = 908
        end
        inherited PanelStepBody: TPanel
          Width = 908
          Height = 473
          inherited A001_ExcelData1: TA001_ExcelData
            Width = 908
            Height = 473
            inherited xxxDBGrid: TxxxDBGrid
              Width = 908
              Height = 428
            end
            inherited paToolButton: TPanel
              Width = 908
            end
            inherited Panel1: TPanel
              Top = 453
              Width = 908
            end
          end
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 96
    Top = 176
  end
end
