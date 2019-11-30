inherited fmPeriodFilter: TfmPeriodFilter
  Width = 512
  inherited lbCaption: TLabel
    Width = 139
    Caption = 'Дата отчетного периода   с'
  end
  object Label1: TLabel [1]
    Left = 335
    Top = 4
    Width = 12
    Height = 13
    Caption = 'по'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Width = 160
    OnCloseUp = Period1lcbCloseUp
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
