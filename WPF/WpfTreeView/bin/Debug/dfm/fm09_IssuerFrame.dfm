inherited fm09_Issuer: Tfm09_Issuer
  Height = 46
  inherited btnSelect: TSpeedButton
    Caption = 'Эмитент...'
  end
  object Label2: TLabel [1]
    Left = 271
    Top = 29
    Width = 19
    Height = 13
    Hint = 'Код эмитента (ИНН, Страна)'
    Caption = 'Код'
  end
  object Label1: TLabel [2]
    Left = 73
    Top = 28
    Width = 19
    Height = 13
    Hint = 'Тип эмитента'
    Caption = 'Тип'
    ParentShowHint = False
    ShowHint = True
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'T028_ID'
    ListField = 'T028_SHOT_NAME_CODE'
  end
  object ed02: TDBEdit [4]
    Left = 296
    Top = 25
    Width = 162
    Height = 21
    Hint = 'Код эмитента (ИНН, Страна)'
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    DataField = 'T028_CODE'
    DataSource = dsSelect
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object ed01: TDBEdit [5]
    Left = 98
    Top = 25
    Width = 149
    Height = 21
    Hint = 'Тип эмитента'
    Color = clBtnFace
    DataField = 'T025_SHOT_NAME'
    DataSource = dsSelect
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'SELECT     T028_ID,'
      '           T025_SHOT_NAME,'
      '           T028_CODE,'
      '           T028_SHOT_NAME_CODE'
      'FROM       V_405_ISSUER_LIST'
      'WHERE T028_ID = :T028_ID'
      'AND      T028_ID = T028_PARENT_ID'
      'ORDER BY   T028_SHOT_NAME')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543032385F49440100000000000E000000543032
      355F53484F545F4E414D4501000000000009000000543032385F434F44450100
      0000000013000000543032385F53484F545F4E414D455F434F44450100000000
      00}
    BeforeOpen = odsSelectBeforeOpen
    object odsSelectT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsSelectT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsSelectT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsSelectT028_SHOT_NAME_CODE: TStringField
      FieldName = 'T028_SHOT_NAME_CODE'
      Size = 514
    end
  end
end
