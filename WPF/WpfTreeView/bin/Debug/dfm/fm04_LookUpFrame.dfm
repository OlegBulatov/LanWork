inherited fm04_LookUp: Tfm04_LookUp
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 70
    Height = 13
    Caption = '��� ��������'
    Layout = tlCenter
  end
  object Lookup01: TxxxDBLookupCheckCombo
    Left = 103
    Top = 4
    Width = 252
    Height = 21
    DropDownCount = 8
    Anchors = [akLeft, akTop, akRight]
    LookupSource = dsList
    TabOrder = 0
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000005245474E010000000000040000004E414D450100
      00000000090000005245474E5F4E414D45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 200
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 232
  end
end