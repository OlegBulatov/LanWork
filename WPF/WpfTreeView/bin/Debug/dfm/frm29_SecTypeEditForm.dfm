inherited frm29_SecTypeEdit: Tfrm29_SecTypeEdit
  ClientHeight = 202
  ClientWidth = 367
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 32
    Width = 19
    Height = 13
    Caption = 'Код'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 8
    Width = 34
    Height = 13
    Caption = 'Номер'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 57
    Width = 50
    Height = 13
    Caption = 'Описание'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 151
    Width = 44
    Height = 13
    Caption = 'Признак'
  end
  inherited Panel2: TPanel
    Top = 169
    Width = 367
    TabOrder = 3
    inherited Panel3: TPanel
      Left = 202
    end
  end
  object ed01: TDBEdit [5]
    Left = 98
    Top = 29
    Width = 263
    Height = 21
    DataField = 'T027_SEC_TYPE'
    DataSource = frm29_SecTypeList.dsList
    TabOrder = 1
  end
  object ed02: TDBEdit [6]
    Left = 98
    Top = 4
    Width = 263
    Height = 21
    DataField = 'T027_ORDER_NO'
    DataSource = frm29_SecTypeList.dsList
    TabOrder = 0
  end
  object m01: TDBMemo [7]
    Left = 98
    Top = 54
    Width = 263
    Height = 90
    DataField = 'T027_COMMENTS'
    DataSource = frm29_SecTypeList.dsList
    TabOrder = 2
  end
  object lcb01: TDBLookupComboBox [8]
    Left = 98
    Top = 149
    Width = 263
    Height = 21
    DataField = 'T027_INCL_FICT1'
    DataSource = frm29_SecTypeList.dsList
    KeyField = 'FLAG'
    ListField = 'FLAGNAME'
    ListSource = ds01
    TabOrder = 4
  end
  inherited ActionList1: TActionList
    Left = 24
    Top = 88
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select '#39'T'#39' as Flag, '#39'Да'#39' as FlagName'
      'from dual'
      'union'
      'select '#39'F'#39' as Flag, '#39'Нет'#39' as FlagName'
      'from dual')
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
      030000000200000004000000464C4147010000000008000000464C41474E414D
      450100000000}
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
    Left = 224
    Top = 136
    object ods01FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object ods01FLAGNAME: TStringField
      FieldName = 'FLAGNAME'
      Size = 3
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 264
    Top = 136
  end
end
