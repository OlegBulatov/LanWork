object frm04_ListFrm: Tfrm04_ListFrm
  Left = 0
  Top = 0
  Width = 918
  Height = 353
  TabOrder = 0
  object paMain: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 353
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paMain'
    TabOrder = 0
    object xxxDBGrid: TxxxDBGrid
      Left = 0
      Top = 65
      Width = 918
      Height = 288
      Align = alClient
      DataSource = dsList
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      PopupMenu = PopupMenu
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = xxxDBGridDrawColumnCell
      OnDblClick = xxxDBGridDblClick
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
    inline fmSeach: TfmSeachFrame
      Left = 0
      Top = 23
      Width = 918
      Height = 21
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alTop
      TabOrder = 1
      ExplicitTop = 23
      ExplicitWidth = 918
      inherited Panel1: TPanel
        Left = 891
        ExplicitLeft = 891
      end
    end
    inline fm31_Filter: Tfm31_Filter
      Left = 0
      Top = 44
      Width = 918
      Height = 21
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alTop
      TabOrder = 2
      ExplicitTop = 44
      ExplicitWidth = 918
      inherited Panel1: TPanel
        Left = 891
        ExplicitLeft = 891
      end
    end
    object paTopToolBar: TPanel
      Left = 0
      Top = 0
      Width = 918
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object tbDB: TToolBar
        Left = 0
        Top = 0
        Width = 234
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonWidth = 78
        Caption = 'tbDB'
        EdgeInner = esNone
        EdgeOuter = esNone
        Images = dm02_Picters.ilCommonPictures
        List = True
        ParentShowHint = False
        ShowCaptions = True
        ShowHint = True
        TabOrder = 0
        object tbAdd: TToolButton
          Left = 0
          Top = 0
          Action = actAddAttributes
        end
        object tbEdit: TToolButton
          Left = 78
          Top = 0
          Action = actEditAttributes
        end
        object ToolButton8: TToolButton
          Left = 156
          Top = 0
          Action = actDeleteAttributes
        end
      end
      object tbNav: TToolBar
        Left = 234
        Top = 0
        Width = 77
        Height = 23
        Align = alLeft
        AutoSize = True
        Caption = 'tbNav'
        EdgeInner = esNone
        EdgeOuter = esNone
        Images = dm02_Picters.ilCommonPictures
        List = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object ToolButton5: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          Style = tbsSeparator
        end
        object ToolButton6: TToolButton
          Left = 8
          Top = 0
          Action = actRefresh
        end
        object ToolButton7: TToolButton
          Left = 31
          Top = 0
          Action = actFirst
        end
        object ToolButton9: TToolButton
          Left = 54
          Top = 0
          Action = actLast
        end
      end
      object tbExtend: TToolBar
        Left = 311
        Top = 0
        Width = 243
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonWidth = 73
        Caption = 'ToolBar4'
        EdgeInner = esNone
        EdgeOuter = esNone
        Images = dm02_Picters.ilCommonPictures
        List = True
        ParentShowHint = False
        ShowCaptions = True
        ShowHint = True
        TabOrder = 2
        object ToolButton10: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          Style = tbsSeparator
        end
        object ToolButton14: TToolButton
          Left = 8
          Top = 0
          Action = actShowSimpleFilter
          DropdownMenu = pmFilter
          Style = tbsDropDown
        end
        object ToolButton11: TToolButton
          Left = 94
          Top = 0
          Width = 8
          Caption = 'ToolButton11'
          ImageIndex = 19
          Style = tbsSeparator
        end
        object tbSearch: TToolButton
          Left = 102
          Top = 0
          Caption = 'tbSearch'
          ImageIndex = 11
        end
        object ToolButton15: TToolButton
          Left = 175
          Top = 0
          Width = 8
          Caption = 'ToolButton15'
          ImageIndex = 20
          Style = tbsSeparator
        end
        object tbExcel: TToolButton
          Left = 183
          Top = 0
          Action = actExcel
        end
      end
    end
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 136
    Top = 115
  end
  object ActionList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 168
    Top = 115
    object actSelectItem: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Enabled = False
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1090#1077#1082#1091#1097#1077#1102' '#1079#1072#1087#1080#1089#1100
      Visible = False
    end
    object actFirst: TAction
      Caption = #1053#1072#1079#1072#1076
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1087#1077#1088#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 9
      OnExecute = actFirstExecute
      OnUpdate = actFirstUpdate
    end
    object actLast: TAction
      Caption = #1042#1087#1077#1088#1077#1076
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 7
      OnExecute = actLastExecute
      OnUpdate = actLastUpdate
    end
    object actRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 10
      OnExecute = actRefreshExecute
      OnUpdate = actRefreshUpdate
    end
    object actAddAttributes: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 0
      ShortCut = 16457
      OnExecute = actAddAttributesExecute
      OnUpdate = actAddAttributesUpdate
    end
    object actDeleteAttributes: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 2
      ShortCut = 16452
      OnExecute = actDeleteAttributesExecute
      OnUpdate = actDeleteAttributesUpdate
    end
    object actEditAttributes: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 1
      ShortCut = 16453
      OnExecute = actEditAttributesExecute
      OnUpdate = actEditAttributesUpdate
    end
    object actExcel: TAction
      Caption = 'Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1074' Excel'
      ImageIndex = 5
      OnExecute = actExcelExecute
    end
    object actFilterBySelect: TAction
      Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1079#1085#1072#1095#1077#1085#1080#1102
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1079#1085#1072#1095#1077#1085#1080#1102
      ImageIndex = 18
      OnExecute = actFilterBySelectExecute
      OnUpdate = actFilterBySelectUpdate
    end
    object actSelectAllRows: TAction
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      Hint = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      OnExecute = actSelectAllRowsExecute
    end
    object actShowSimpleFilter: TAction
      Caption = #1060'&'#1080#1083#1100#1090#1088
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1086#1082#1085#1086' '#1087#1088#1086#1089#1090#1086#1075#1086' '#1092#1080#1083#1100#1090#1088#1072'...'
      ImageIndex = 18
      ShortCut = 16454
      OnExecute = actShowSimpleFilterExecute
    end
    object actRemoveAllSettings: TAction
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      OnExecute = actRemoveAllSettingsExecute
    end
  end
  object PopupMenu: TPopupMenu
    Images = dm02_Picters.ilCommonPictures
    Left = 104
    Top = 147
    object N1: TMenuItem
      Action = actAddAttributes
    end
    object N3: TMenuItem
      Action = actEditAttributes
    end
    object N2: TMenuItem
      Action = actDeleteAttributes
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mi04: TMenuItem
      Caption = #1055#1086#1080#1089#1082
      ShortCut = 16454
    end
    object N7: TMenuItem
      Caption = #1060#1080#1083#1100#1090#1088
      ImageIndex = 18
      object N8: TMenuItem
        Action = actShowSimpleFilter
      end
      object N9: TMenuItem
        Action = actFilterBySelect
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object N12: TMenuItem
        Action = actRemoveAllSettings
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Action = actSelectAllRows
    end
  end
  object odsList: TOracleDataSet
    ReadBuffer = 50
    Optimize = False
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    OnApplyRecord = odsListApplyRecord
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 104
    Top = 115
  end
  object pkList: TOraclePackage
    Left = 136
    Top = 147
  end
  object oqAdd: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 136
    Top = 184
  end
  object oqUpdate: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 176
    Top = 184
  end
  object oqDelete: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 216
    Top = 184
  end
  object oqDupl: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 256
    Top = 184
  end
  object pmFilter: TPopupMenu
    Left = 336
    Top = 96
    object N10: TMenuItem
      Action = actShowSimpleFilter
      Default = True
    end
    object N11: TMenuItem
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
