object fm36_MonthAll: Tfm36_MonthAll
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
    Caption = '    Отчетный период'
    Layout = tlCenter
  end
  object lcbPeriod: TDBLookupComboBox
    Left = 103
    Top = 1
    Width = 217
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DropDownRows = 10
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = dsPeriod
    TabOrder = 0
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 224
    Top = 2
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'SELECT  T055_ID, T055_LONG_NAME, T055_START_DATE'
      'FROM     V_405_MONTH_LIST_ALL'
      'ORDER BY T055_START_DATE')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      030000000300000007000000543035355F494401000000000E00000054303535
      5F4C4F4E475F4E414D4501000000000F000000543035355F53544152545F4441
      54450100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = dmMain.OracleSession
    DesignActivation = False
    Active = False
    Left = 192
    Top = 2
  end
end
