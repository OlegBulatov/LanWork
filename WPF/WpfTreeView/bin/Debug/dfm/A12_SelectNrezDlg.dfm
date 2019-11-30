inherited A12_SelectNrez: TA12_SelectNrez
  Left = 50
  Top = 166
  Caption = 'Выбор нерезидента'
  ClientHeight = 603
  ClientWidth = 765
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 570
    Width = 765
    inherited Panel3: TPanel
      Left = 600
    end
  end
  inline Grid: TA12_SelectNrezList [1]
    Width = 765
    Height = 570
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 765
      Height = 456
    end
    inherited paToolButton: TPanel
      Width = 765
    end
    inherited Filters: TA12_SelectNrezFilters
      Width = 765
      inherited GroupBox1: TGroupBox
        Width = 765
        inherited Panel1: TPanel
          Width = 270
          inherited Button1: TButton
            Action = Grid.actRefresh
          end
        end
      end
    end
  end
end
