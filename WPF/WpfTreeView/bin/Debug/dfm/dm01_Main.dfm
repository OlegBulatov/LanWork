object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 338
  Top = 281
  Height = 626
  Width = 477
  object Session: TOracleSession
    DesignConnection = True
    LogonUsername = 'DPB_BL_PIPE'
    LogonPassword = 'PWD_BL_PIPE'
    LogonDatabase = 'DPB'
    Connected = True
    Left = 8
    Top = 12
  end
  object ConnectTimer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = ConnectTimerTimer
    Left = 67
    Top = 12
  end
  object RequestTimer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = RequestTimerTimer
    Left = 68
    Top = 68
  end
  object oqRequest: TOracleQuery
    SQL.Strings = (
      'SELECT *'
      'FROM   V_R001_REQUESTS'
      'WHERE R001_DONE = '#39'N'#39)
    Session = Session
    Left = 12
    Top = 68
  end
end
