inherited A13_PrepareData: TA13_PrepareData
  Width = 277
  Height = 88
  inherited actList: TActionList
    Left = 72
    Top = 1
  end
  inherited dsList: TDataSource
    Left = 36
    Top = 1
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, -- период'
      '       T020_BANK_CODE, -- бывш.страна мат.банка'
      '       T020_BANK_CODE T020_BANK_CODE_A,'
      '       T020_BANK_CODE T020_BANK_CODE_B,'
      '       T037_ID,'
      '       CAST(NULL AS VARCHAR2(255)) T037_ITEM_NAME,'
      '       T036_ID, -- сектор'
      '       T036_CODE,'
      '       T021_COUNTRY,'
      '       T021_COUNTRY T021_COUNTRY_A,'
      '       T021_CURRENCY, -- валюта'
      '       T021_SUM_OUT,'
      '       CO_GROUP,'
      '       NKO_ID,'
      '       MO_GROUP, -- ДЗ/СНГ страны мат.банка'
      '       MOTHER_COUNTRY, -- группа стран мат. банка'
      '       MOTHER_COUNTRY MOTHER_COUNTRY_A -- страна мат.банка'
      'FROM   V_410_SUM_DATA')
    QBEDefinition.QBEFieldDefs = {
      040000001100000007000000543035355F49440100000000000E000000543032
      305F42414E4B5F434F444501000000000010000000543032305F42414E4B5F43
      4F44455F4101000000000010000000543032305F42414E4B5F434F44455F4201
      000000000007000000543033375F49440100000000000E000000543033375F49
      54454D5F4E414D4501000000000007000000543033365F494401000000000009
      000000543033365F434F44450100000000000C000000543032315F434F554E54
      52590100000000000E000000543032315F434F554E5452595F41010000000000
      0D000000543032315F43555252454E43590100000000000C000000543032315F
      53554D5F4F555401000000000008000000434F5F47524F555001000000000006
      0000004E4B4F5F4944010000000000080000004D4F5F47524F55500100000000
      000E0000004D4F544845525F434F554E545259010000000000100000004D4F54
      4845525F434F554E5452595F41010000000000}
    Left = 4
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT020_BANK_CODE_A: TStringField
      FieldName = 'T020_BANK_CODE_A'
      Size = 9
    end
    object odsListT020_BANK_CODE_B: TStringField
      FieldName = 'T020_BANK_CODE_B'
      Size = 9
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_ITEM_NAME: TStringField
      FieldName = 'T037_ITEM_NAME'
      Size = 255
    end
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
    object odsListT036_CODE: TStringField
      FieldName = 'T036_CODE'
      Size = 3
    end
    object odsListT021_COUNTRY: TIntegerField
      FieldName = 'T021_COUNTRY'
    end
    object odsListT021_COUNTRY_A: TIntegerField
      FieldName = 'T021_COUNTRY_A'
    end
    object odsListT021_CURRENCY: TStringField
      FieldName = 'T021_CURRENCY'
      Size = 3
    end
    object odsListT021_SUM_OUT: TFloatField
      FieldName = 'T021_SUM_OUT'
    end
    object odsListCO_GROUP: TFloatField
      FieldName = 'CO_GROUP'
    end
    object odsListNKO_ID: TFloatField
      FieldName = 'NKO_ID'
    end
    object odsListMO_GROUP: TFloatField
      FieldName = 'MO_GROUP'
    end
    object odsListMOTHER_COUNTRY: TIntegerField
      FieldName = 'MOTHER_COUNTRY'
    end
    object odsListMOTHER_COUNTRY_A: TIntegerField
      FieldName = 'MOTHER_COUNTRY_A'
    end
  end
end
