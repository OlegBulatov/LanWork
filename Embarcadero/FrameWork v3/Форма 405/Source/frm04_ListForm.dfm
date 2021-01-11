inherited frm04_List: Tfrm04_List
  Left = 516
  Top = 176
  ActiveControl = xxxDBGrid
  Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spRight: TSplitter
    Left = 677
    Top = 0
    Height = 391
    Align = alRight
    Visible = False
    ExplicitLeft = 695
    ExplicitHeight = 199
  end
  object paRight: TPanel
    Left = 680
    Top = 0
    Width = 0
    Height = 391
    Align = alRight
    BevelOuter = bvNone
    Caption = 'paRight'
    TabOrder = 1
  end
  object paMain: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 391
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paMain'
    TabOrder = 0
    object ToolBar2: TToolBar
      Left = 0
      Top = 0
      Width = 677
      Height = 23
      ButtonHeight = 30
      ButtonWidth = 113
      Caption = 'ToolBar2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 1
      Wrapable = False
      object ToolButton17: TToolButton
        Left = 0
        Top = 0
        Action = actAddAttributes
        AutoSize = True
      end
      object ToolButton18: TToolButton
        Left = 81
        Top = 0
        Action = actEditAttributes
        AutoSize = True
      end
      object ToolButton19: TToolButton
        Left = 163
        Top = 0
        Action = actDeleteAttributes
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 237
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolBar1: TToolBar
        Left = 245
        Top = 0
        Width = 69
        Height = 30
        Align = alRight
        Caption = 'ToolBar1'
        EdgeInner = esNone
        EdgeOuter = esNone
        Images = dm02_Picters.ilCommonPictures
        TabOrder = 0
        object ToolButton3: TToolButton
          Left = 0
          Top = 0
          Action = actRefresh
        end
        object ToolButton1: TToolButton
          Left = 23
          Top = 0
          Action = actFirst
        end
        object ToolButton2: TToolButton
          Left = 46
          Top = 0
          Action = actLast
        end
      end
      object sp02: TToolButton
        Left = 314
        Top = 0
        Width = 8
        Caption = 'sp02'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbSimFilter: TToolButton
        Left = 322
        Top = 0
        Action = actShowSimpleFilter
        AutoSize = True
        Caption = #1060#1080#1083#1100#1090#1088
        DropdownMenu = pmFilter
        Style = tbsDropDown
      end
      object tbSep01: TToolButton
        Left = 414
        Top = 0
        Width = 8
        Caption = 'tbSep01'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object tlbSearch: TToolBar
        Left = 422
        Top = 0
        Width = 60
        Height = 30
        ButtonWidth = 70
        Caption = 'tlbSearch'
        Images = dm02_Picters.ilCommonPictures
        List = True
        ShowCaptions = True
        TabOrder = 1
        object tbSearch: TToolButton
          Left = 0
          Top = 0
          AutoSize = True
          Caption = 'tbSearch'
          Enabled = False
          ImageIndex = 0
          Wrap = True
        end
      end
      object ToolButton13: TToolButton
        Left = 482
        Top = 0
        Width = 8
        Caption = 'ToolButton13'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbExcel: TToolButton
        Left = 490
        Top = 0
        Action = actExcel
      end
      object tbExcelZ: TToolButton
        Left = 603
        Top = 0
        Caption = #1053#1086#1074#1099#1081' Excel'
        DropdownMenu = pmExcel
        ImageIndex = 42
      end
    end
    object xxxDBGrid: TxxxDBGrid
      Left = 0
      Top = 65
      Width = 677
      Height = 326
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
      TitleFont.Name = 'MS Sans Serif'
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
      Width = 677
      Height = 21
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alTop
      TabOrder = 2
      ExplicitTop = 23
      ExplicitWidth = 677
      inherited paLeft01: TPanel
        inherited Label1: TLabel
          Width = 34
          ExplicitWidth = 34
        end
      end
      inherited Panel1: TPanel
        Left = 650
        ExplicitLeft = 650
      end
    end
    inline fm31_Filter: Tfm31_Filter
      Left = 0
      Top = 44
      Width = 677
      Height = 21
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alTop
      TabOrder = 3
      ExplicitTop = 44
      ExplicitWidth = 677
      inherited paLeft01: TPanel
        inherited Label1: TLabel
          Width = 43
          ExplicitWidth = 43
        end
      end
      inherited Panel1: TPanel
        Left = 650
        ExplicitLeft = 650
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 424
    Width = 680
    Height = 19
    Panels = <>
    Visible = False
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 391
    Width = 680
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    DesignSize = (
      680
      33)
    object OKBtn: TButton
      Left = 548
      Top = 5
      Width = 75
      Height = 23
      Action = actSelectItem
      Anchors = [akTop, akRight]
      ModalResult = 1
      TabOrder = 0
    end
    object CancelBtn: TButton
      Left = 628
      Top = 5
      Width = 75
      Height = 23
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
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
      OnExecute = actSelectItemExecute
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
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
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
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1082#1088#1099#1090#1100' '#1087#1088#1086#1089#1090#1086#1081' '#1092'&'#1080#1083#1100#1090#1088
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
    object actExcelMode1: TAction
      Caption = 'actExcelMode1'
      OnExecute = actExcelMode1Execute
    end
    object actExcelMode0: TAction
      Caption = 'actExcelMode0'
      OnExecute = actExcelMode0Execute
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
    Session = dmMain.OracleSession
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
  object oqClob: TOracleQuery
    SQL.Strings = (
      'begin'
      'z_sploadclob(p_sqltext => :p_sqltext);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0050005F00530051004C005400450058005400
      050000000000000000000000}
    Left = 592
    Top = 104
  end
  object ActionList1: TActionList
    Left = 432
    Top = 160
  end
  object pmExcel: TPopupMenu
    Left = 368
    Top = 75
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
