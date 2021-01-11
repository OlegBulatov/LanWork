inherited frm10_ReportsList: Tfrm10_ReportsList
  Left = 392
  Top = 210
  Caption = 'frm10_ReportsListForm'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tvList: TTreeView
    Left = 0
    Top = 0
    Width = 680
    Height = 442
    Align = alClient
    Indent = 19
    TabOrder = 0
    OnDblClick = tvListDblClick
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'alter session set NLS_NUMERIC_CHARACTERS = '#39'.,'#39)
    Session = dmMain.OracleSession
    Left = 624
    Top = 24
  end
end
