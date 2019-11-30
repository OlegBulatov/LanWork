inherited fm10_Rezid: Tfm10_Rezid
  Height = 45
  inherited btnSelect: TSpeedButton
    Caption = 'Резидент...'
  end
  object Label1: TLabel [1]
    Left = 65
    Top = 28
    Width = 19
    Height = 13
    Caption = 'Код'
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
    KeyField = 'T012_ID'
    ListField = 'T012_NAME'
  end
  object ed01: TDBEdit [4]
    Left = 98
    Top = 24
    Width = 159
    Height = 21
    Color = clBtnFace
    DataField = 'T012_CODE'
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
    DataField = 'T033_NAME'
    DataSource = dsSelect
    ReadOnly = True
    TabOrder = 2
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'SELECT   T012_ID,'
      '         T012_NAME,'
      '         T012_CODE,'
      '         T033_ID,'
      '         T033_NAME'
      'FROM     V_405_REZID_LIST'
      'WHERE    T012_ID = :T012_ID')
    Variables.Data = {
      0300000001000000080000003A543031325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000009000000543031325F4E414D450100000000000900000054
      3031325F434F444501000000000007000000543033335F494401000000000009
      000000543033335F4E414D4501000000000007000000543031325F4944010000
      000000}
    BeforeOpen = odsSelectBeforeOpen
    object odsSelectT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsSelectT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Required = True
      Size = 255
    end
    object odsSelectT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsSelectT033_ID: TFloatField
      FieldName = 'T033_ID'
      Required = True
    end
    object odsSelectT033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
      Size = 50
    end
  end
end
