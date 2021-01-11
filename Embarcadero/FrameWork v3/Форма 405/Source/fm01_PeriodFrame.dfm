object fm01_Period: Tfm01_Period
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
    KeyField = 'T002_NUMB_IN_YEA'
    ListField = 'T002_NUMB_IN_YEA_TEXT'
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
      'SELECT   T055_ID, T002_NUMB_IN_YEA,'
      #9' T002_NUMB_IN_YEA_TEXT'
      'FROM     V_405_NUMB_IN_YEA_DESC'
      'ORDER BY T002_NUMB_IN_YEA')
    QBEDefinition.QBEFieldDefs = {
      040000000200000010000000543030325F4E554D425F494E5F59454101000000
      000015000000543030325F4E554D425F494E5F5945415F544558540100000000
      00}
    Session = dmMain.OracleSession
    Left = 192
    Top = 2
  end
end
