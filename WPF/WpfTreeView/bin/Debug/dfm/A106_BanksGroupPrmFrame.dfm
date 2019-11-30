inherited A106_BanksGroupPrm: TA106_BanksGroupPrm
  Width = 406
  object Label1: TLabel
    Left = 18
    Top = 6
    Width = 53
    Height = 13
    Caption = '√ÛÔÔ‡  Œ'
  end
  object lcb: TRxDBLookupCombo
    Left = 150
    Top = 2
    Width = 242
    Height = 21
    DropDownCount = 8
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'T030_ID'
    LookupDisplay = 'T030_GROUP_NAME'
    LookupSource = dsList
    TabOrder = 0
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      'select T030_ID,'
      '       T030_GROUP_NAME'
      'from   V_410_BANK_GROUPS'
      
        '--where  UPPER(REPLACE(TRIM(T030_GROUP_NAME), '#39' '#39', '#39#39')) LIKE '#39'%¡' +
        '¿Õ »—√Œ—”◊¿—“»≈Ã%'#39
      'order by T030_GROUP_NAME'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033305F49440100000000000F000000543033
      305F47524F55505F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 80
    Top = 8
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 112
    Top = 8
  end
end
