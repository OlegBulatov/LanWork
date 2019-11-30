inherited fm008_LookUp: Tfm008_LookUp
  Width = 355
  Height = 26
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 70
    Height = 13
    Caption = 'Тип операции'
    Layout = tlCenter
  end
  object lcbList: TDBLookupComboBox
    Left = 103
    Top = 4
    Width = 252
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DropDownRows = 14
    DropDownWidth = -1
    ListSource = dsList
    TabOrder = 0
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000005245474E010000000000040000004E414D450100
      00000000090000005245474E5F4E414D45010000000000}
    Session = dm02_Main.OracleSession
    Left = 200
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 232
  end
end
