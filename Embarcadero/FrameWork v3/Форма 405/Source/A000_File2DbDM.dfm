object A000_File2Db: TA000_File2Db
  OldCreateOrder = False
  Left = 217
  Top = 327
  Height = 470
  Width = 696
  object oqLoad: TOracleQuery
    Session = dmMain.OracleSession
    Cursor = crHourGlass
    Left = 120
    Top = 72
  end
  object oqBefore: TOracleQuery
    Session = dmMain.OracleSession
    Left = 72
    Top = 40
  end
  object oqAfter: TOracleQuery
    Session = dmMain.OracleSession
    Left = 160
    Top = 120
  end
end
