inherited frm11_CalcCalc: Tfrm11_CalcCalc
  Caption = 'Пересчет'
  ClientHeight = 88
  ClientWidth = 311
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 6
    Height = 13
    Caption = 'с'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 12
    Height = 13
    Caption = 'по'
  end
  inherited Panel2: TPanel
    Top = 55
    Width = 311
    inherited Panel3: TPanel
      Left = 146
    end
    inherited PrevBtn: TBitBtn
      Width = 33
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 56
      Width = 41
      Visible = False
    end
  end
  object lcd01: TDBLookupComboBox [3]
    Left = 98
    Top = 4
    Width = 208
    Height = 21
    DataField = 'T055_START_DATE'
    DataSource = frm11_CalcList.dsList
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds01
    TabOrder = 1
  end
  object lcd02: TDBLookupComboBox [4]
    Left = 98
    Top = 28
    Width = 208
    Height = 21
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds02
    TabOrder = 2
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      ' T055_LONG_NAME,'
      ' T055_START_DATE,'
      '  ROW_NUMB'
      'FROM V_NR_CALC_PERIODS'
      'ORDER BY T055_START_DATE DESC')
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
      030000000400000007000000543035355F494401000000000E00000054303535
      5F4C4F4E475F4E414D4501000000000F000000543035355F53544152545F4441
      5445010000000008000000524F575F4E554D420100000000}
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
    Left = 208
    object ods01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods01T055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object ods01ROW_NUMB: TFloatField
      FieldName = 'ROW_NUMB'
    end
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      ' T055_LONG_NAME,'
      ' T055_END_DATE,'
      '  ROW_NUMB'
      'FROM V_NR_CALC_PERIODS'
      'ORDER BY T055_START_DATE DESC')
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
      030000000400000007000000543035355F494401000000000E00000054303535
      5F4C4F4E475F4E414D4501000000000D000000543035355F454E445F44415445
      010000000008000000524F575F4E554D420100000000}
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
    Left = 104
    Top = 32
    object ods02T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods02T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods02T055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
    object ods02ROW_NUMB: TFloatField
      FieldName = 'ROW_NUMB'
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 240
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 136
    Top = 32
  end
end
