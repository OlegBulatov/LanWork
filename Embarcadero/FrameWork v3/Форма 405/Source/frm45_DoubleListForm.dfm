inherited frm45_DoubleList: Tfrm45_DoubleList
  Left = 84
  Top = 195
  Caption = 'frm45_DoubleList'
  ClientHeight = 661
  ClientWidth = 956
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 962
  ExplicitHeight = 689
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 325
    Width = 956
    Height = 2
    Cursor = crVSplit
    Align = alBottom
  end
  inherited Panel2: TPanel
    Top = 628
    Width = 956
    TabOrder = 2
    ExplicitTop = 628
    ExplicitWidth = 956
    inherited Panel3: TPanel
      Left = 791
      ExplicitLeft = 791
      inherited CancelBtn: TButton [0]
      end
      inherited OKBtn: TButton [1]
        Left = 85
        ExplicitLeft = 85
      end
    end
  end
  object paTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 956
    Height = 325
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paTop'
    TabOrder = 0
    object paCaptionTop: TPanel
      Left = 0
      Top = 0
      Width = 956
      Height = 20
      Hint = 
        #1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1077#1079#1080#1076#1077#1085#1090#1072'. '#1048#1079' '#1083#1077#1074#1086#1075#1086' '#1089#1087#1080#1089#1082#1072' '#1074' '#1087#1088#1072#1074#1099#1081' '#1087#1077#1088#1077#1085#1077#1089#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090 +
        #1099' '#1074#1086#1079#1084#1086#1078#1085#1086#1075#1086' '#1085#1072#1087#1080#1089#1072#1085#1080#1103' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1088#1077#1079#1080#1076#1077#1085#1090#1072'.'
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 5
        Width = 138
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1074#1077#1088#1093#1085#1077#1075#1086' '#1089#1087#1080#1089#1082#1072
      end
    end
    object ToolBar1: TToolBar
      Left = 0
      Top = 298
      Width = 956
      Height = 27
      Align = alBottom
      ButtonWidth = 148
      Caption = 'ToolBar1'
      EdgeBorders = [ebTop, ebBottom]
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 1
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = actMoveToBottom
      end
      object ToolButton2: TToolButton
        Left = 148
        Top = 0
        Action = actMoveAllToBottom
      end
      object ToolButton3: TToolButton
        Left = 296
        Top = 0
        Action = actMoveAllToTop
      end
      object ToolButton4: TToolButton
        Left = 444
        Top = 0
        Action = actMoveToTop
      end
    end
  end
  object paBottom: TPanel [3]
    Left = 0
    Top = 327
    Width = 956
    Height = 301
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'paBottom'
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 956
      Height = 20
      Hint = 
        #1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1077#1079#1080#1076#1077#1085#1090#1072'. '#1048#1079' '#1083#1077#1074#1086#1075#1086' '#1089#1087#1080#1089#1082#1072' '#1074' '#1087#1088#1072#1074#1099#1081' '#1087#1077#1088#1077#1085#1077#1089#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090 +
        #1099' '#1074#1086#1079#1084#1086#1078#1085#1086#1075#1086' '#1085#1072#1087#1080#1089#1072#1085#1080#1103' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1088#1077#1079#1080#1076#1077#1085#1090#1072'.'
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 5
        Top = 5
        Width = 135
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1085#1080#1078#1085#1077#1075#1086' '#1089#1087#1080#1089#1082#1072
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actSave: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
    end
    inherited actCancel: TAction
      Enabled = False
      Visible = False
    end
    object actMoveToBottom: TAction
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1085#1080#1079
      Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1101#1083#1077#1084#1077#1085#1090' '#1074#1077#1088#1093#1085#1077#1075#1086' '#1089#1087#1080#1089#1082#1072' '#1074' '#1085#1080#1078#1085#1080#1081' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 14
      OnExecute = actMoveToRightExecute
      OnUpdate = actMoveToBottom_Update
    end
    object actMoveAllToBottom: TAction
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1074#1085#1080#1079
      Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' '#1074#1077#1088#1093#1085#1077#1075#1086' '#1089#1087#1080#1089#1082#1072' '#1074' '#1085#1080#1078#1085#1080#1081' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 16
      OnExecute = actMoveAllToRightExecute
      OnUpdate = actMoveToBottom_Update
    end
    object actMoveAllToTop: TAction
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1074#1074#1077#1088#1093
      Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' '#1085#1080#1078#1085#1077#1075#1086' '#1089#1087#1080#1089#1082#1072' '#1074' '#1074#1074#1077#1088#1093#1085#1080#1081' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 15
      OnExecute = actMoveAllToLeftExecute
      OnUpdate = actMoveAllToTop_Update
    end
    object actMoveToTop: TAction
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1074#1077#1088#1093
      Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1101#1083#1077#1084#1077#1085#1090' '#1085#1080#1078#1085#1077#1075#1086' '#1089#1087#1080#1089#1082#1072' '#1074' '#1074#1074#1077#1088#1093#1085#1080#1081' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 17
      OnExecute = actMoveToLeftExecute
      OnUpdate = actMoveAllToTop_Update
    end
  end
  object oqToBottom: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 459
    Top = 200
  end
  object oqToTop: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 491
    Top = 200
  end
end
