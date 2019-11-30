object fm04_PrmKO: Tfm04_PrmKO
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
    Caption = 'Кред. организация'
    Layout = tlCenter
  end
  object lcbPeriod: TDBLookupComboBox
    Left = 103
    Top = 1
    Width = 217
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DropDownRows = 10
    KeyField = 'REGN'
    ListField = 'NAME'
    ListSource = dsPeriod
    TabOrder = 0
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'SELECT   REGN, NAME, T002_NUMB_IN_YEA'
      'FROM     V_405_BANC_BY_NUMB'
      'WHERE    T002_NUMB_IN_YEA = :T002_NUMB_IN_YEA '
      'ORDER BY REGN')
    Variables.Data = {
      0300000001000000110000003A543030325F4E554D425F494E5F594541050000
      000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000005245474E010000000000040000004E414D450100
      00000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 2
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 224
    Top = 2
  end
end
