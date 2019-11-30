inherited A102_ItemsPrm: TA102_ItemsPrm
  Width = 406
  Height = 24
  object Label1: TLabel
    Left = 18
    Top = 6
    Width = 61
    Height = 13
    Caption = 'Показатели'
  end
  object lcb: TRxDBLookupCombo
    Left = 150
    Top = 2
    Width = 242
    Height = 21
    DropDownCount = 8
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'T038_ID'
    LookupDisplay = 'T041_NAME'
    LookupSource = dsList
    TabOrder = 0
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      'select T038_ID,'
      '       T041_NAME'
      'from   V_410_REPORT_ITEMS_GROUPS'
      'where  T041_GROUP = :V_GROUP'
      'order by T041_POSITION')
    Variables.Data = {
      0300000001000000080000003A565F47524F5550050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000009000000543034315F4E414D450100000000000700000054
      3033385F4944010000000000}
    Session = dmMain.OracleSession
    Left = 88
    Top = 4
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 120
    Top = 4
  end
end
