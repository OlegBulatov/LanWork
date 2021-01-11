inherited fmPeriodFilter: TfmPeriodFilter
  Width = 512
  ExplicitWidth = 512
  inherited lbCaption: TLabel
    Width = 142
    Caption = #1044#1072#1090#1072' '#1086#1090#1095#1077#1090#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072'   '#1089
    ExplicitWidth = 142
  end
  object Label1: TLabel [1]
    Left = 335
    Top = 4
    Width = 12
    Height = 13
    Caption = #1087#1086
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 160
    OnCloseUp = Period1lcbCloseUp
    ExplicitWidth = 160
  end
  object lcb2: TRxDBLookupCombo [4]
    Left = 352
    Top = 0
    Width = 160
    Height = 21
    DropDownCount = 8
    LookupSource = dsList2
    TabOrder = 2
    OnCloseUp = Period2lcbCloseUp
  end
  object odsList2: TOracleDataSet
    Optimize = False
    Session = dmMain.OracleSession
    Left = 384
    Top = 1
  end
  object dsList2: TDataSource
    DataSet = odsList2
    Left = 421
    Top = 1
  end
end
