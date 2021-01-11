inherited fmList: TfmList
  Width = 707
  Height = 419
  ExplicitWidth = 707
  ExplicitHeight = 419
  object paToolButton: TPanel [0]
    Left = 0
    Top = 0
    Width = 707
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object tlbNav: TToolBar
      Left = 0
      Top = 0
      Width = 77
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonHeight = 23
      Caption = 'tlbList'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmPicters.ilCommonPictures
      TabOrder = 0
      Wrapable = False
      object tbSeparator01: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbSeparator01'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object tbRefresh: TToolButton
        Left = 8
        Top = 0
        Action = actRefresh
        ParentShowHint = False
        ShowHint = True
      end
      object tbFirst: TToolButton
        Left = 31
        Top = 0
        Action = actFirst
        ParentShowHint = False
        ShowHint = True
      end
      object tbLast: TToolButton
        Left = 54
        Top = 0
        Action = actLast
        ParentShowHint = False
        ShowHint = True
      end
    end
    object tlbList: TToolBar
      Left = 77
      Top = 0
      Width = 245
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 78
      Caption = 'tlbList'
      EdgeInner = esNone
      EdgeOuter = esNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dmPicters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 1
      Visible = False
      Wrapable = False
      object tbSeparator02: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbSeparator02'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbAdd: TToolButton
        Left = 8
        Top = 0
        Action = actAdd
        AutoSize = True
        ParentShowHint = False
        ShowHint = True
      end
      object tbUpdate: TToolButton
        Left = 89
        Top = 0
        Action = actEdit
        AutoSize = True
        ParentShowHint = False
        ShowHint = True
      end
      object tbDelete: TToolButton
        Left = 171
        Top = 0
        Action = actDelete
        AutoSize = True
        ParentShowHint = False
        ShowHint = True
      end
    end
    object tlbExcel: TToolBar
      Left = 322
      Top = 0
      Width = 34
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonHeight = 23
      ButtonWidth = 26
      Caption = 'ToolBar2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dmPicters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Wrapable = False
      object tbSeparator03: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbExcel: TToolButton
        Left = 8
        Top = 0
        Action = actExcel
      end
    end
    object tlbSeach: TToolBar
      Left = 356
      Top = 0
      Width = 69
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 57
      Caption = 'tlbSearch'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmPicters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 3
      object tbSeparator04: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbSeparator04'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object tbSearch: TToolButton
        Left = 8
        Top = 0
        Action = actSearch
        AutoSize = True
      end
    end
    object tlbFilter: TToolBar
      Left = 425
      Top = 0
      Width = 96
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonHeight = 30
      ButtonWidth = 73
      Caption = 'ToolBar2'
      EdgeInner = esNone
      EdgeOuter = esNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dmPicters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 4
      Visible = False
      Wrapable = False
      object tbSeparator05: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbFilter: TToolButton
        Left = 8
        Top = 0
        Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1086#1082#1085#1086' '#1087#1088#1086#1089#1090#1086#1075#1086' '#1092#1080#1083#1100#1090#1088#1072'...'
        Caption = #1060'&'#1080#1083#1100#1090#1088
        ImageIndex = 18
        Style = tbsDropDown
      end
    end
    object tlbSelect: TToolBar
      Left = 521
      Top = 0
      Width = 35
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonHeight = 23
      Caption = 'ToolBar2'
      EdgeInner = esNone
      EdgeOuter = esNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dmPicters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      Wrapable = False
      object tbSeparator07: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbSelect: TToolButton
        Left = 8
        Top = 0
        AutoSize = True
        Caption = #1042#1099#1073#1088#1072#1090#1100
        ImageIndex = 12
      end
    end
  end
  inherited actList: TActionList
    Left = 328
    Top = 208
    object actAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Enabled = False
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 0
      ShortCut = 16457
      Visible = False
      OnExecute = actAddExecute
      OnUpdate = actAddUpdate
    end
    object actEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Enabled = False
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 1
      ShortCut = 16453
      Visible = False
      OnExecute = actEditExecute
      OnUpdate = actEditUpdate
    end
    object actDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 2
      ShortCut = 16452
      Visible = False
      OnExecute = actDeleteExecute
      OnUpdate = actDeleteUpdate
    end
    object actExcel: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1074' Excel'
      ImageIndex = 5
      OnExecute = actExcelExecute
      OnUpdate = actExcelUpdate
    end
    object actRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 10
      OnExecute = actRefreshExecute
      OnUpdate = actRefreshUpdate
    end
    object actFirst: TAction
      Caption = #1053#1072#1079#1072#1076
      Enabled = False
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1087#1077#1088#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 9
      Visible = False
      OnExecute = actFirstExecute
      OnUpdate = actFirstUpdate
    end
    object actLast: TAction
      Caption = #1042#1087#1077#1088#1077#1076
      Enabled = False
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 7
      Visible = False
      OnExecute = actLastExecute
      OnUpdate = actLastUpdate
    end
    object actFilterBySelect: TAction
      Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1079#1085#1072#1095#1077#1085#1080#1102
      Enabled = False
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1079#1085#1072#1095#1077#1085#1080#1102
      ImageIndex = 18
      Visible = False
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
    end
    object actRemoveAllSettings: TAction
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
    end
    object actSearch: TAction
      Caption = #1055#1086#1080#1089#1082
      Hint = #1053#1072#1081#1090#1080
      ImageIndex = 3
      OnExecute = actSearchExecute
      OnUpdate = actSearchUpdate
    end
    object actUnSelectAllRows: TAction
      Caption = #1057#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077' '#1089#1086' '#1074#1089#1077#1093
      Hint = #1057#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077' '#1089#1086' '#1074#1089#1077#1093
      OnExecute = actUnSelectAllRowsExecute
    end
  end
  inherited odsList: TOracleDataSet
    OnApplyRecord = odsListApplyRecord
    AfterOpen = odsListAfterOpen
  end
  object PopupMenu: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 16
    Top = 147
    object mi01: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Enabled = False
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 0
      ShortCut = 16457
    end
    object mi02: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Enabled = False
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 1
      ShortCut = 16453
    end
    object mi03: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 2
      ShortCut = 16452
    end
    object mi04: TMenuItem
      Caption = '-'
    end
    object miExcel: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1074' Excel'
      ImageIndex = 5
    end
    object miExcelD: TMenuItem
      Caption = '-'
    end
    object mi05: TMenuItem
      Caption = #1055#1086#1080#1089#1082
      ShortCut = 16454
    end
    object mi06: TMenuItem
      Caption = #1060#1080#1083#1100#1090#1088
      ImageIndex = 18
      object N8: TMenuItem
        Caption = #1060'&'#1080#1083#1100#1090#1088
        Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1086#1082#1085#1086' '#1087#1088#1086#1089#1090#1086#1075#1086' '#1092#1080#1083#1100#1090#1088#1072'...'
        ImageIndex = 18
        ShortCut = 16454
      end
      object N9: TMenuItem
        Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1079#1085#1072#1095#1077#1085#1080#1102
        Enabled = False
        Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1079#1085#1072#1095#1077#1085#1080#1102
        ImageIndex = 18
        Visible = False
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object N12: TMenuItem
        Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
        Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      end
    end
    object mi07: TMenuItem
      Caption = '-'
    end
    object mi08: TMenuItem
      Action = actSelectAllRows
    end
    object miUnSelectAll: TMenuItem
      Action = actUnSelectAllRows
    end
  end
  object oqAdd: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 534
    Top = 152
  end
  object oqUpdate: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 534
    Top = 184
  end
  object oqDelete: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 534
    Top = 216
  end
  object odsFetchRecord: TOracleDataSet
    Optimize = False
    Session = dmMain.OracleSession
    Left = 440
    Top = 186
  end
end
