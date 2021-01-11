object fm36_MonthAll: Tfm36_MonthAll
  Left = 0
  Top = 0
  Width = 320
  Height = 23
  TabOrder = 0
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 102
    Height = 23
    Align = alLeft
    AutoSize = False
    Caption = '    Отчетный период'
    Layout = tlCenter
  end
  object lcbPeriod: TDBLookupComboBox
    Left = 103
    Top = 1
    Width = 217
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DropDownRows = 10
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = dsPeriod
    TabOrder = 0
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 224
    Top = 2
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'SELECT  T055_ID, T055_LONG_NAME, T055_START_DATE'
      'FROM     V_405_MONTH_LIST_ALL'
      'ORDER BY T055_START_DATE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D450100000000000F000000543035355F53544152545F
      44415445010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 192
    Top = 2
  end
end
