inherited fm037_SelectLists: Tfm037_SelectLists
  inherited paRight: TPanel
    Left = 422
    Width = 368
    inherited paTopRight: TPanel
      Width = 368
      Height = 28
      Alignment = taRightJustify
      ParentColor = True
      inherited Label1: TLabel
        Top = 6
        Width = 45
        Height = 13
        AutoSize = True
        Caption = 'Выбрано'
        ParentFont = False
      end
    end
    inline fmGridRight: TfmGrid
      Top = 28
      Width = 368
      Height = 589
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 368
        Height = 564
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      end
      inherited paToolButton: TPanel
        Width = 368
        inherited tlbNav: TToolBar
          inherited tbSeparator01: TToolButton
            Visible = False
          end
        end
      end
    end
  end
  inherited paCenter: TPanel
    Left = 381
    Width = 41
    inherited paButtons: TPanel
      Left = 8
      Top = 249
      Height = 116
      inherited sbToRight: TSpeedButton
        Top = 0
        Hint = 'Переместить вправо'
      end
      inherited sbAllToRight: TSpeedButton
        Top = 28
        Hint = 'Переместить все вправо'
      end
      inherited sbAllToLeft: TSpeedButton
        Top = 66
        Hint = 'Переместить все влево'
      end
      inherited sbToLeft: TSpeedButton
        Top = 94
        Hint = 'Переместить влево'
      end
    end
  end
  inherited paLeft: TPanel
    Width = 381
    Hint = ''
    inherited paTopLeft: TPanel
      Width = 381
      Height = 28
      Alignment = taRightJustify
      inherited Label3: TLabel
        Top = 6
        Width = 49
        Height = 13
        AutoSize = True
        Caption = 'Доступно'
        ParentFont = False
      end
    end
    inline fmGridLeft: TfmGrid
      Top = 28
      Width = 381
      Height = 589
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 381
        Height = 564
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      end
      inherited paToolButton: TPanel
        Width = 381
        BevelInner = bvLowered
        inherited tlbNav: TToolBar
          Left = 1
          Top = 1
          Height = 23
          inherited tbSeparator01: TToolButton
            Visible = False
          end
        end
        inherited tlbList: TToolBar
          Left = 78
          Top = 1
          Height = 23
        end
        inherited tlbExcel: TToolBar
          Left = 320
          Top = 1
          Height = 23
        end
        inherited tlbSeach: TToolBar
          Left = 354
          Top = 1
          Height = 23
        end
        inherited tlbFilter: TToolBar
          Left = 421
          Top = 1
          Height = 23
        end
        inherited tlbSelect: TToolBar
          Left = 502
          Top = 1
          Height = 23
        end
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          '')
      end
    end
  end
end
