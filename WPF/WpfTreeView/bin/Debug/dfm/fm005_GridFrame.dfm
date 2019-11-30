inherited fmGrid: TfmGrid
  Width = 635
  Height = 403
  object xxxDBGrid: TxxxDBGrid [0]
    Left = 0
    Top = 46
    Width = 635
    Height = 357
    Align = alClient
    DataSource = dsList
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    PopupMenu = PopupMenu
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = xxxDBGridCellClick
    OnDrawColumnCell = xxxDBGridDrawColumnCell
    OnKeyDown = xxxDBGridKeyDown
    OnMouseUp = xxxDBGridMouseUp
    AdvSettings.Guid = '{A3F1DFF7-0ED4-4300-A546-740807109C0C}'
    AdvSettings.AutoFilter = False
    AdvSettings.Enabled = True
    AdvSettings.DesignMode = False
    AdvSettings.Indexes = <>
    AdvSettings.HeadersLines = <>
    AdvSettings.ColumnsAutoSize = False
    AdvSettings.LookUpField.Strings = (
      'Введите имена полей в формате KeyFieldName=ListFieldName')
    DragRows = False
    ShowVscroll = True
    FlatStyle = False
  end
  inherited paToolButton: TPanel
    Width = 635
    inherited tlbList: TToolBar
      Visible = True
    end
    inherited tlbFilter: TToolBar
      Width = 81
      Enabled = True
      Visible = True
      inherited tbFilter: TToolButton
        Action = actShowSimpleFilter
        Style = tbsCheck
      end
    end
    inherited tlbSelect: TToolBar
      Left = 508
      inherited tbSelect: TToolButton
        ImageIndex = 44
      end
    end
  end
  inline fm031_Filter1: Tfm031_Filter [2]
    Top = 25
    Width = 635
    Align = alTop
    TabOrder = 2
    inherited Panel1: TPanel
      Left = 608
    end
  end
  inherited actList: TActionList [3]
    Left = 64
    Top = 188
    inherited actFirst: TAction
      Enabled = True
      Visible = True
    end
    inherited actLast: TAction
      Enabled = True
      Visible = True
    end
    inherited actFilterBySelect: TAction
      OnExecute = actFilterBySelectExecute
    end
    inherited actShowSimpleFilter: TAction
      Hint = 'Показать/скрыть окно простого фильтра...'
      OnExecute = actShowSimpleFilterExecute
    end
    inherited actRemoveAllSettings: TAction
      OnExecute = actRemoveAllSettingsExecute
    end
  end
  inherited dsList: TDataSource [4]
    Left = 233
    Top = 127
  end
  inherited odsList: TOracleDataSet [5]
    Left = 193
    Top = 125
  end
  inherited PopupMenu: TPopupMenu [6]
    Left = 192
    Top = 239
  end
  inherited oqAdd: TOracleQuery [7]
    Left = 279
    Top = 128
  end
  inherited oqUpdate: TOracleQuery [8]
    Left = 279
    Top = 164
  end
  inherited oqDelete: TOracleQuery [9]
    Left = 279
    Top = 204
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 193
  end
  object pmFilter: TPopupMenu
    Left = 336
    Top = 96
    object N010: TMenuItem
      Action = actShowSimpleFilter
      Default = True
    end
    object N011: TMenuItem
      Action = actFilterBySelect
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Action = actRemoveAllSettings
    end
  end
end
