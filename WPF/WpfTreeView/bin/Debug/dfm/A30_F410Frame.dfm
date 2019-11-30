inherited A30_F410: TA30_F410
  Width = 450
  Height = 296
  inherited xxxDBGrid: TxxxDBGrid
    Width = 450
    Height = 250
    AdvSettings.Indexes = <
      item
        FieldName = 'T037_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'T036_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'T020_BANK_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T020_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_MOTHER_COUNTRY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T037_ID'
        PickList.Strings = ()
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_PART'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T037_CODE'
        PickList.Strings = ()
        Title.Caption = 'Показатель'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_STATE'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T036_ID'
        PickList.Strings = ()
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_CODE'
        PickList.Strings = ()
        Title.Caption = 'Сектор 410'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_COUNTRY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T021_CURRENCY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Сумма в млн.$'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NKO'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T071_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T071_NAME_RU'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T071_NAME_EN'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T071_CODE'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T072_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T072_NAME_RU'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T072_NAME_EN'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T070_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T072_PRIM'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T072_CODE'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T073_OPER'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T073_PRIM'
        PickList.Strings = ()
        Title.Caption = 'Прим'
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 450
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 450
    inherited Panel1: TPanel
      Left = 477
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '   T055_ID,'
      '   T020_BANK_CODE,'
      '   T020_MOTHER_COUNTRY,'
      '   T037_ID,'
      '   T037_PART,'
      '   T037_CODE,'
      '   T037_STATE,'
      '   T036_ID,'
      '   T036_CODE,'
      '   T021_COUNTRY,'
      '   T021_CURRENCY,'
      '   T021_SUM_OUT,'
      '   NKO,'
      '   T071_ID,'
      '   T071_NAME_RU,'
      '   T071_NAME_EN,'
      '   T071_CODE,'
      '   T072_ID,'
      '   T072_NAME_RU,'
      '   T072_NAME_EN,'
      '   T070_ID,'
      '   T072_PRIM,'
      '   T072_CODE,'
      '   T073_OPER,'
      '   T073_PRIM'
      'FROM V_410_BOP_SUM   '
      'WHERE T055_ID = :T055_ID'
      'AND   T070_ID = :T070_ID'
      'AND   T071_ID = :T071_ID'
      'AND   T072_ID = :T072_ID'
      'AND   T021_CURRENCY = :T021_CURRENCY'
      'AND   T020_MOTHER_COUNTRY = :T020_MOTHER_COUNTRY'
      'AND   T021_COUNTRY = :T021_COUNTRY')
    Variables.Data = {
      0300000007000000080000003A543037315F4944040000000800000000000000
      0000144000000000080000003A543037325F4944040000000800000000000000
      00001840000000000E0000003A543032315F43555252454E4359050000000400
      00003634330000000000140000003A543032305F4D4F544845525F434F554E54
      5259050000000400000032373600000000000D0000003A543032315F434F554E
      54525905000000040000003237360000000000080000003A543035355F494404
      0000000000000000000000080000003A543037305F4944040000000000000000
      000000}
    QBEDefinition.QBEFieldDefs = {
      040000001900000007000000543035355F49440100000000000E000000543032
      305F42414E4B5F434F444501000000000013000000543032305F4D4F54484552
      5F434F554E54525901000000000007000000543033375F494401000000000009
      000000543033375F5041525401000000000009000000543033375F434F444501
      00000000000A000000543033375F535441544501000000000007000000543033
      365F494401000000000009000000543033365F434F44450100000000000C0000
      00543032315F434F554E5452590100000000000D000000543032315F43555252
      454E43590100000000000C000000543032315F53554D5F4F5554010000000000
      030000004E4B4F01000000000007000000543037315F49440100000000000C00
      0000543037315F4E414D455F52550100000000000C000000543037315F4E414D
      455F454E01000000000009000000543037315F434F4445010000000000070000
      00543037325F49440100000000000C000000543037325F4E414D455F52550100
      000000000C000000543037325F4E414D455F454E010000000000070000005430
      37305F494401000000000009000000543037325F5052494D0100000000000900
      0000543037325F434F444501000000000009000000543037335F4F5045520100
      0000000009000000543037335F5052494D010000000000}
    object odsListT055_ID: TFloatField
      DisplayWidth = 12
      FieldName = 'T055_ID'
    end
    object odsListT020_BANK_CODE: TStringField
      DisplayWidth = 7
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT020_MOTHER_COUNTRY: TIntegerField
      DisplayWidth = 28
      FieldName = 'T020_MOTHER_COUNTRY'
    end
    object odsListT037_ID: TFloatField
      DisplayWidth = 12
      FieldName = 'T037_ID'
    end
    object odsListT037_PART: TIntegerField
      DisplayWidth = 12
      FieldName = 'T037_PART'
    end
    object odsListT037_CODE: TStringField
      DisplayWidth = 15
      FieldName = 'T037_CODE'
      Size = 12
    end
    object odsListT037_STATE: TStringField
      DisplayWidth = 13
      FieldName = 'T037_STATE'
      Size = 1
    end
    object odsListT036_ID: TFloatField
      DisplayWidth = 12
      FieldName = 'T036_ID'
    end
    object odsListT036_CODE: TStringField
      DisplayWidth = 12
      FieldName = 'T036_CODE'
      Size = 3
    end
    object odsListT021_COUNTRY: TFloatField
      DisplayWidth = 17
      FieldName = 'T021_COUNTRY'
    end
    object odsListT021_CURRENCY: TStringField
      DisplayWidth = 18
      FieldName = 'T021_CURRENCY'
      Size = 3
    end
    object odsListT021_SUM_OUT: TFloatField
      DisplayWidth = 17
      FieldName = 'T021_SUM_OUT'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListNKO: TFloatField
      DisplayWidth = 12
      FieldName = 'NKO'
    end
    object odsListT071_ID: TFloatField
      DisplayWidth = 12
      FieldName = 'T071_ID'
    end
    object odsListT071_NAME_RU: TStringField
      DisplayWidth = 306
      FieldName = 'T071_NAME_RU'
      Size = 255
    end
    object odsListT071_NAME_EN: TStringField
      DisplayWidth = 306
      FieldName = 'T071_NAME_EN'
      Size = 255
    end
    object odsListT071_CODE: TStringField
      DisplayWidth = 12
      FieldName = 'T071_CODE'
      Size = 1
    end
    object odsListT072_ID: TFloatField
      DisplayWidth = 12
      FieldName = 'T072_ID'
    end
    object odsListT072_NAME_RU: TStringField
      DisplayWidth = 306
      FieldName = 'T072_NAME_RU'
      Size = 255
    end
    object odsListT072_NAME_EN: TStringField
      DisplayWidth = 306
      FieldName = 'T072_NAME_EN'
      Size = 255
    end
    object odsListT070_ID: TFloatField
      DisplayWidth = 12
      FieldName = 'T070_ID'
    end
    object odsListT072_PRIM: TStringField
      DisplayWidth = 306
      FieldName = 'T072_PRIM'
      Size = 255
    end
    object odsListT072_CODE: TStringField
      DisplayWidth = 12
      FieldName = 'T072_CODE'
      Size = 1
    end
    object odsListT073_OPER: TIntegerField
      DisplayWidth = 12
      FieldName = 'T073_OPER'
    end
    object odsListT073_PRIM: TStringField
      DisplayWidth = 306
      FieldName = 'T073_PRIM'
      Size = 255
    end
  end
end
