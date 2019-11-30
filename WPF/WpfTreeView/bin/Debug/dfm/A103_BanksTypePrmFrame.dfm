inherited A103_BanksTypePrm: TA103_BanksTypePrm
  Width = 406
  Height = 24
  object Label1: TLabel
    Left = 18
    Top = 6
    Width = 83
    Height = 13
    Caption = 'Банки/Не банки'
  end
  object lcb: TRxDBLookupCombo
    Left = 150
    Top = 2
    Width = 242
    Height = 21
    DropDownCount = 3
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'BANK_TYPE_ID'
    LookupDisplay = 'BANK_TYPE_NAME'
    LookupSource = dsList
    TabOrder = 0
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      'select BANK_TYPE_ID,'
      '       BANK_TYPE_NAME'
      'from   V_410_BANK_TYPES')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000C00000042414E4B5F545950455F49440100000000000E00
      000042414E4B5F545950455F4E414D45010000000000}
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
