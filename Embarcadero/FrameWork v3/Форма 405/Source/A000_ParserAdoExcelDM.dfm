inherited A000_ParserAdoExcel: TA000_ParserAdoExcel
  OldCreateOrder = True
  Left = 138
  Top = 222
  Height = 479
  Width = 741
  object ADOConn: TADOConnection
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 24
    Top = 16
  end
  object ADOTable: TADOTable
    CacheSize = 10000
    Connection = ADOConn
    LockType = ltReadOnly
    TableDirect = True
    Left = 104
    Top = 16
  end
end
