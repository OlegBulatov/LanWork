inherited fm16_ConstructVer: Tfm16_ConstructVer
  Width = 351
  Height = 25
  inherited Label1: TLabel
    Width = 37
    Caption = 'Версия'
  end
  inherited Lookup01: TDBLookupComboBox
    Left = 102
    Width = 166
    KeyField = 'M014_ID'
    ListField = 'M014_VER_DESC'
  end
  object Button1: TButton [2]
    Left = 272
    Top = 3
    Width = 75
    Height = 22
    Action = actAddVer
    Anchors = [akTop, akRight]
    TabOrder = 1
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  M014_ID,'
      '  M014_VER_DESC'
      'FROM V_NR_CONSTR_VERSIONS'
      'ORDER BY M014_ID')
    QBEDefinition.QBEFieldDefs = {
      0300000002000000070000004D3031345F494401000000000D0000004D303134
      5F5645525F444553430100000000}
    Left = 120
    object odsListM014_ID: TFloatField
      FieldName = 'M014_ID'
      Required = True
    end
    object odsListM014_VER_DESC: TStringField
      FieldName = 'M014_VER_DESC'
      Size = 19
    end
  end
  inherited dsList: TDataSource
    Left = 176
  end
  object oqCreateNew: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :M014_ID := Pk_NR_Construct.f_m014_create_ver;'
      'END;')
    Session = dmMain.OracleSession
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000001000000080000003A4D3031345F4944040000000000000000000000}
    Cursor = crDefault
    StringFieldsOnly = False
    Threaded = False
    ThreadSynchronized = True
    Left = 224
  end
  object al01: TActionList
    Left = 48
    object actAddVer: TAction
      Caption = 'Создать'
      OnExecute = actAddVerExecute
      OnUpdate = actAddVerUpdate
    end
  end
end
