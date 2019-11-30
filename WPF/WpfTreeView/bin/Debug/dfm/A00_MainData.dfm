inherited dmMain: TdmMain
  OldCreateOrder = True
  Left = 178
  Top = 132
  inherited OracleSession: TOracleSession
    DesignConnection = False
    LogonUsername = 'DPB_410_BOSS'
    LogonPassword = 'PWD_410_BOSS'
    LogonDatabase = 'DPB2.LANIT'
    ThreadSafe = True
    Connected = False
  end
  inherited oqGetSetting: TOracleQuery
    Top = 128
  end
end
