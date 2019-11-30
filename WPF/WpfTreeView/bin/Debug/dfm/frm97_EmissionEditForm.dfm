inherited frm97_EmissionEdit: Tfrm97_EmissionEdit
  Left = 276
  Top = 170
  Caption = 'Эмиссия'
  ClientHeight = 216
  ClientWidth = 480
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 36
    Width = 65
    Height = 13
    Caption = 'Регистрация'
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 61
    Width = 70
    Height = 13
    Caption = 'Код ц.б. (ISIN)'
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 111
    Width = 66
    Height = 13
    Hint = 'Способ'#13#10'размещения'
    Caption = 'Размещение'
    ParentShowHint = False
    ShowHint = True
  end
  object Label5: TLabel [3]
    Left = 8
    Top = 137
    Width = 67
    Height = 13
    Hint = 'Состояние'#13#10'выплат'
    Caption = 'Сост. выплат'
  end
  object Label7: TLabel [4]
    Left = 248
    Top = 35
    Width = 82
    Height = 13
    Caption = 'Дата окончания'
  end
  object Label9: TLabel [5]
    Left = 248
    Top = 85
    Width = 38
    Height = 13
    Caption = 'Валюта'
  end
  object Label10: TLabel [6]
    Left = 8
    Top = 86
    Width = 46
    Height = 13
    Caption = 'Номинал'
  end
  object Label1: TLabel [7]
    Left = 8
    Top = 162
    Width = 78
    Height = 13
    Hint = 'Периодичность '#13#10'выплат купона'
    Caption = 'Периодичность'
    ParentShowHint = False
    ShowHint = True
  end
  object Label6: TLabel [8]
    Left = 248
    Top = 60
    Width = 85
    Height = 13
    Caption = 'Дата аннулиров.'
  end
  inherited Panel2: TPanel
    Top = 183
    Width = 480
    inherited Panel3: TPanel
      Left = 315
    end
  end
  inline fm06_Regn: Tfm06_Regn [10]
    Top = 8
    Width = 480
    TabOrder = 1
    inherited lcbSelect: TDBLookupComboBox
      Width = 374
      DataField = 'T026_ID'
      DataSource = frm97_EmissionList.dsList
    end
  end
  object ed01: TDBEdit
    Left = 98
    Top = 58
    Width = 137
    Height = 21
    DataField = 'T031_ISIN'
    DataSource = frm97_EmissionList.dsList
    TabOrder = 2
  end
  object dt01: TDBDateTimePicker
    Left = 98
    Top = 33
    Width = 137
    Height = 21
    CalAlignment = dtaLeft
    Date = 34152
    Time = 34152
    ShowCheckbox = True
    Checked = False
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 3
    DataField = 'T031_REG_DATE'
    DataSource = frm97_EmissionList.dsList
  end
  object lcb04: TDBLookupComboBox
    Left = 98
    Top = 108
    Width = 374
    Height = 21
    Hint = 'Способ'#13#10'размещения'
    DataField = 'T024_ID'
    DataSource = frm97_EmissionList.dsList
    KeyField = 'T024_ID'
    ListField = 'T024_NAME'
    ListSource = ds04
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object lcb05: TDBLookupComboBox
    Left = 98
    Top = 134
    Width = 374
    Height = 21
    DataField = 'T023_ID'
    DataSource = frm97_EmissionList.dsList
    KeyField = 'T023_ID'
    ListField = 'T023_NAME'
    ListSource = ds05
    TabOrder = 5
  end
  object dt04: TDBDateTimePicker
    Left = 334
    Top = 32
    Width = 138
    Height = 21
    CalAlignment = dtaLeft
    Date = 34152
    Time = 34152
    ShowCheckbox = True
    Checked = False
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 6
    DataField = 'T031_END_DATE'
    DataSource = frm97_EmissionList.dsList
  end
  object ed03: TDBEdit
    Left = 98
    Top = 83
    Width = 137
    Height = 21
    DataField = 'T031_NOMINAL'
    DataSource = frm97_EmissionList.dsList
    TabOrder = 7
  end
  object lcb06: TDBLookupComboBox
    Left = 334
    Top = 82
    Width = 138
    Height = 21
    DataField = 'T031_CURRENCY'
    DataSource = frm97_EmissionList.dsList
    KeyField = 'ISO_ID'
    ListField = 'NAME_RUSH'
    ListSource = ds06
    TabOrder = 8
  end
  object ed02: TDBEdit
    Left = 98
    Top = 160
    Width = 137
    Height = 21
    Hint = 'Периодичность '#13#10'выплат купона'
    DataField = 'T031_COUPON_PER'
    DataSource = frm97_EmissionList.dsList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object dt02: TDBDateTimePicker
    Left = 334
    Top = 57
    Width = 138
    Height = 21
    CalAlignment = dtaLeft
    Date = 34152
    Time = 34152
    ShowCheckbox = True
    Checked = False
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 10
    DataField = 'T031_DATE_ANNUL'
    DataSource = frm97_EmissionList.dsList
  end
  inherited ActionList: TActionList
    Top = 75
  end
  object ActionList1: TActionList
    Left = 160
    Top = 89
    object Action1: TAction
      Caption = 'OK'
      OnUpdate = actSaveUpdate
    end
    object Action2: TAction
      Caption = 'Отмена'
      OnUpdate = actCancelUpdate
    end
  end
  object ods04: TOracleDataSet
    SQL.Strings = (
      'select T024_ID, T024_NAME'
      'from    V_NR_SPOSOB_RAZM'
      'order by T024_NAME'
      ' ')
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
      030000000200000007000000543032345F494401000000000900000054303234
      5F4E414D450100000000}
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
    Left = 144
    Top = 123
    object ods04T024_ID: TFloatField
      FieldName = 'T024_ID'
      Required = True
    end
    object ods04T024_NAME: TStringField
      FieldName = 'T024_NAME'
      Required = True
      Size = 255
    end
  end
  object ds04: TDataSource
    DataSet = ods04
    Left = 184
    Top = 123
  end
  object ods05: TOracleDataSet
    SQL.Strings = (
      'select T023_ID, T023_NAME'
      'from    V_NR_SOST_VYP'
      'order by T023_NAME'
      ' ')
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
      030000000200000007000000543032335F494401000000000900000054303233
      5F4E414D450100000000}
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
    Left = 272
    Top = 163
    object ods05T023_ID: TFloatField
      FieldName = 'T023_ID'
      Required = True
    end
    object ods05T023_NAME: TStringField
      FieldName = 'T023_NAME'
      Required = True
      Size = 255
    end
  end
  object ds05: TDataSource
    DataSet = ods05
    Left = 312
    Top = 163
  end
  object ods06: TOracleDataSet
    SQL.Strings = (
      'select   ISO_ID, NAME_RUSH'
      'from     V_NR_CURRENCY'
      'order by ISO_ID')
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
      03000000020000000600000049534F5F49440100000000090000004E414D455F
      525553480100000000}
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
    Left = 378
    Top = 57
    object ods06ISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object ods06NAME_RUSH: TStringField
      FieldName = 'NAME_RUSH'
      Size = 106
    end
  end
  object ds06: TDataSource
    DataSet = ods06
    Left = 418
    Top = 57
  end
end
