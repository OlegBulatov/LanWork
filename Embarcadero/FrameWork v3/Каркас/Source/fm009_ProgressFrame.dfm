inherited fmProgress: TfmProgress
  Width = 604
  Height = 264
  OnResize = FrameResize
  ExplicitWidth = 604
  ExplicitHeight = 264
  DesignSize = (
    604
    264)
  object Bevel1: TBevel [0]
    Left = 8
    Top = 33
    Width = 584
    Height = 16
    Anchors = [akLeft, akTop, akRight]
  end
  object ProgressBar1: TGauge [1]
    Left = 9
    Top = 34
    Width = 584
    Height = 14
    Anchors = [akLeft, akTop, akRight]
    BackColor = clBtnFace
    BorderStyle = bsNone
    ForeColor = clBlue
    Progress = 10
  end
  object Label6: TLabel [2]
    Left = 8
    Top = 79
    Width = 43
    Height = 13
    Caption = #1055#1088#1086#1096#1083#1086':'
  end
  object lbTime: TLabel [3]
    Left = 62
    Top = 79
    Width = 44
    Height = 13
    Hint = #1055#1088#1086#1096#1083#1086' '#1074#1088#1077#1084#1077#1085#1080
    Caption = '00:00:00'
    ParentShowHint = False
    ShowHint = True
  end
  object lbProcessName: TLabel [4]
    Left = 8
    Top = 8
    Width = 113
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1094#1077#1089#1089#1072'....'
  end
  object lbResult: TLabel [5]
    Left = 8
    Top = 95
    Width = 113
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1094#1077#1089#1089#1072'....'
  end
  object lbProgressStep: TLabel [6]
    Left = 8
    Top = 61
    Width = 150
    Height = 13
    Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1077#1084' '#1093#1086#1076' '#1079#1072#1075#1088#1091#1079#1082#1080'....'
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 340
    Top = 32
  end
  object osThread: TOracleSession
    Cursor = crDefault
    Preferences.ConvertUTF = cuUTF8ToUTF16
    Left = 124
    Top = 140
  end
  object oqThread: TOracleQuery
    Session = osThread
    Optimize = False
    Left = 160
    Top = 140
  end
  object oqMaxCount: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 264
    Top = 96
  end
  object oqBeforeProcess: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 264
    Top = 128
  end
  object oqMatrixDo: TOracleQuery
    Session = osThread
    Optimize = False
    Left = 360
    Top = 152
  end
end
