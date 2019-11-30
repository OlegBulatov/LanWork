inherited A12_SelectRez: TA12_SelectRez
  Left = 107
  Top = 246
  Caption = 'Выбор резидента'
  ClientHeight = 603
  ClientWidth = 796
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 570
    Width = 796
    inherited Panel3: TPanel
      Left = 631
    end
  end
  inline Grid: TA12_SelectRezList [1]
    Width = 796
    Height = 570
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 796
      Height = 379
    end
    inherited paToolButton: TPanel
      Width = 796
      inherited tlbList: TToolBar
        Width = 242
      end
      inherited tlbExcel: TToolBar
        Left = 319
      end
      inherited tlbSeach: TToolBar
        Left = 353
        Width = 67
      end
      inherited tlbFilter: TToolBar
        Left = 420
        Width = 81
      end
      inherited tlbSelect: TToolBar
        Left = 501
        Width = 31
      end
    end
    inherited Filters: TA12_SelectRezFilters
      Width = 796
      inherited GroupBox1: TGroupBox
        Width = 796
        inherited Panel1: TPanel
          Width = 269
          inherited Button1: TButton
            Action = Grid.actRefresh
          end
        end
      end
    end
  end
end
