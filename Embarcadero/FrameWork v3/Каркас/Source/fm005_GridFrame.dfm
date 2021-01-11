inherited fmGrid: TfmGrid
  Width = 635
  Height = 403
  ExplicitWidth = 635
  ExplicitHeight = 403
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
    TitleFont.Name = 'Tahoma'
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
      #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1077#1085#1072' '#1087#1086#1083#1077#1081' '#1074' '#1092#1086#1088#1084#1072#1090#1077' KeyFieldName=ListFieldName')
    DragRows = False
    ShowVscroll = True
    FlatStyle = False
  end
  inherited paToolButton: TPanel
    Width = 635
    ExplicitWidth = 635
    inherited tlbList: TToolBar
      Visible = True
      inherited tbAdd: TToolButton
        ExplicitWidth = 78
      end
      inherited tbUpdate: TToolButton
        ExplicitWidth = 78
      end
      inherited tbDelete: TToolButton
        ExplicitWidth = 78
      end
    end
    inherited tlbExcel: TToolBar
      Width = 60
      ExplicitWidth = 60
      object ToolButtonNewExcel: TToolButton
        Left = 34
        Top = 0
        Hint = #1053#1086#1074#1099#1081' Excel'
        DropdownMenu = pmExcel
        ImageIndex = 46
      end
    end
    inherited tlbSeach: TToolBar
      Left = 382
      ExplicitLeft = 382
      inherited tbSearch: TToolButton
        ExplicitWidth = 57
      end
    end
    inherited tlbFilter: TToolBar
      Left = 451
      Width = 75
      ButtonHeight = 22
      ButtonWidth = 67
      Enabled = True
      Visible = True
      ExplicitLeft = 451
      ExplicitWidth = 75
      inherited tbFilter: TToolButton
        Action = actShowSimpleFilter
        Style = tbsCheck
        ExplicitWidth = 67
      end
    end
    inherited tlbSelect: TToolBar
      Left = 526
      ExplicitLeft = 526
      inherited tbSelect: TToolButton
        ImageIndex = 44
        ExplicitWidth = 23
      end
    end
  end
  inline fm031_Filter1: Tfm031_Filter [2]
    Left = 0
    Top = 25
    Width = 635
    Height = 21
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    TabOrder = 2
    ExplicitTop = 25
    ExplicitWidth = 635
    inherited Panel1: TPanel
      Left = 608
      ExplicitLeft = 608
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
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1087#1088#1086#1089#1090#1086#1075#1086' '#1092#1080#1083#1100#1090#1088#1072'...'
      OnExecute = actShowSimpleFilterExecute
    end
    inherited actRemoveAllSettings: TAction
      OnExecute = actRemoveAllSettingsExecute
    end
    object actExcelMode0: TAction
      Caption = 'actExcelMode0'
      OnExecute = actExcelMode0Execute
    end
    object actExcelMode1: TAction
      Caption = 'actExcelMode1'
      OnExecute = actExcelMode1Execute
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
  object pmExcel: TPopupMenu
    Left = 376
    Top = 67
    object miExcelMode0: TMenuItem
      Action = actExcelMode0
      Caption = #1057' '#1091#1085#1080#1082#1072#1083#1100#1085#1099#1084#1080' '#1089#1090#1086#1083#1073#1094#1072#1084#1080
    end
    object miExcelMode1: TMenuItem
      Action = actExcelMode1
      Caption = #1050#1072#1082' '#1074' '#1092#1086#1088#1084#1077
    end
  end
end
