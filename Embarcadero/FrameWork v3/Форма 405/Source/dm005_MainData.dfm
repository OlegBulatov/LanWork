inherited dmMain: TdmMain
  OldCreateOrder = True
  Left = 161
  Top = 307
  inherited OracleSession: TOracleSession
    LogonUsername = 'DPB_405_BOSS'
    LogonPassword = 'PWD_405_BOSS'
    LogonDatabase = 'DPB_AMS'
    ThreadSafe = True
    Connected = True
  end
  inherited oqGetSetting: TOracleQuery
    Top = 128
  end
  object oqDbCheck: TOracleQuery
    SQL.Strings = (
      'select DB_CHECK'
      'from   V_405_DB_CHECK')
    Session = OracleSession
    Left = 224
    Top = 80
  end
end
