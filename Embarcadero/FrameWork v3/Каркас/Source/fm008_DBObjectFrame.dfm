inherited fmDBObject: TfmDBObject
  Width = 628
  Height = 512
  ExplicitWidth = 628
  ExplicitHeight = 512
  inherited actList: TActionList
    Left = 304
    Top = 4
  end
  object dsList: TDataSource
    AutoEdit = False
    DataSet = odsList
    Left = 268
    Top = 3
  end
  object odsList: TOracleDataSet
    ReadBuffer = 50
    Optimize = False
    OracleDictionary.RequiredFields = False
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 236
    Top = 1
  end
end
