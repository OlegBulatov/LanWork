inherited fm11_NRezid: Tfm11_NRezid
  Height = 45
  inherited btnSelect: TSpeedButton
    Caption = 'Нерезидент...'
  end
  object Label1: TLabel [1]
    Left = 51
    Top = 28
    Width = 36
    Height = 13
    Caption = 'Страна'
  end
  object Label2: TLabel [2]
    Left = 271
    Top = 28
    Width = 19
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Тип'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'T013_ID'
    ListField = 'T013_NAME'
  end
  object ed01: TDBEdit [4]
    Left = 98
    Top = 24
    Width = 159
    Height = 21
    Color = clBtnFace
    DataField = 'COUNTRY_NAME'
    DataSource = dsSelect
    ReadOnly = True
    TabOrder = 1
  end
  object ed02: TDBEdit [5]
    Left = 304
    Top = 24
    Width = 154
    Height = 21
    Anchors = [akTop, akRight]
    Color = clBtnFace
    DataField = 'T034_NAME'
    DataSource = dsSelect
    ReadOnly = True
    TabOrder = 2
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'SELECT   T013_ID,'
      '         T013_NAME,'
      '         T013_CODE,'
      '         T034_ID,'
      '         T034_NAME,'
      '         COUNTRY_NAME'
      'FROM     V_405_NREZID_LIST'
      'WHERE    T013_ID = :T013_ID')
    Variables.Data = {
      0300000001000000080000003A543031335F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543031335F494401000000000009000000543031
      335F4E414D4501000000000009000000543031335F434F444501000000000007
      000000543033345F494401000000000009000000543033345F4E414D45010000
      0000000C000000434F554E5452595F4E414D45010000000000}
    BeforeOpen = odsSelectBeforeOpen
    object odsSelectT013_ID: TFloatField
      FieldName = 'T013_ID'
      Required = True
    end
    object odsSelectT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Size = 255
    end
    object odsSelectT013_CODE: TFloatField
      FieldName = 'T013_CODE'
      Required = True
    end
    object odsSelectT034_ID: TFloatField
      FieldName = 'T034_ID'
      Required = True
    end
    object odsSelectT034_NAME: TStringField
      FieldName = 'T034_NAME'
      Required = True
      Size = 50
    end
    object odsSelectCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
  end
end
