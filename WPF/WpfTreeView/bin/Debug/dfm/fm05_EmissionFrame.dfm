inherited fm05_Emission: Tfm05_Emission
  Height = 71
  inherited btnSelect: TSpeedButton
    Caption = 'Ёмисси€...'
  end
  object Label3: TLabel [1]
    Left = 235
    Top = 52
    Width = 56
    Height = 13
    Caption = '–ег. номер'
  end
  object Label2: TLabel [2]
    Left = 55
    Top = 52
    Width = 40
    Height = 13
    Caption = '“ип ц.б.'
  end
  object Label1: TLabel [3]
    Left = 52
    Top = 28
    Width = 43
    Height = 13
    Caption = 'Ёмитент'
  end
  inherited lcbSelect: TDBLookupComboBox
    KeyField = 'T030_ID'
    ListField = 'EMIS_NAME'
  end
  object ed03: TDBEdit [5]
    Left = 296
    Top = 50
    Width = 162
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    DataField = 'T026_SEC_REGN'
    DataSource = dsSelect
    TabOrder = 3
  end
  object ed02: TDBEdit [6]
    Left = 98
    Top = 50
    Width = 119
    Height = 21
    Color = clBtnFace
    DataField = 'T027_SEC_TYPE'
    DataSource = dsSelect
    TabOrder = 2
  end
  object ed01: TDBEdit [7]
    Left = 98
    Top = 25
    Width = 360
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    DataField = 'T028_SHOT_NAME'
    DataSource = dsSelect
    TabOrder = 1
  end
  inherited odsSelect: TOracleDataSet
    SQL.Strings = (
      'SELECT /*+ FIRST_ROWS */ '
      '       T030_ID,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T028_ID,'
      '       T028_SHOT_NAME,'
      '       T028_CODE,'
      '       T025_SHOT_NAME,'
      '       EMIS_NAME,'
      '       EMIS_NAME_ISIN,'
      '       T010_ID,'
      '       T010_ISIN_TRANSL'
      'FROM'#9'V_405_EMISSION'
      'WHERE  T030_ID = :T030_ID'
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D00000007000000543033305F494401000000000007000000543032
      365F49440100000000000D000000543032365F5345435F5245474E0100000000
      0007000000543032375F49440100000000000D000000543032375F5345435F54
      59504501000000000007000000543032385F49440100000000000E0000005430
      32385F53484F545F4E414D4501000000000009000000543032385F434F444501
      00000000000E000000543032355F53484F545F4E414D45010000000000070000
      00543031305F494401000000000010000000543031305F4953494E5F5452414E
      534C0100000000000E000000454D49535F4E414D455F4953494E010000000000
      09000000454D49535F4E414D45010000000000}
    BeforeOpen = odsSelectBeforeOpen
    object odsSelectT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsSelectT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsSelectT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsSelectT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSelectT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsSelectT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsSelectT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsSelectT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsSelectT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsSelectT010_ID: TFloatField
      FieldName = 'T010_ID'
      Required = True
    end
    object odsSelectT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Required = True
      Size = 255
    end
    object odsSelectEMIS_NAME: TStringField
      FieldName = 'EMIS_NAME'
      Size = 777
    end
    object odsSelectEMIS_NAME_ISIN: TStringField
      FieldName = 'EMIS_NAME_ISIN'
      Size = 767
    end
  end
end
