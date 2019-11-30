inherited A30_SumByKO: TA30_SumByKO
  Width = 561
  inherited xxxDBGrid: TxxxDBGrid
    Width = 561
    AdvSettings.Indexes = <
      item
        FieldName = 'T020_BANK_CODE'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 2
            LastCol = 7
            Caption = 'Сумма в млн.$'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T020_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT_ALL'
        PickList.Strings = ()
        Title.Caption = 'Всего в млн.$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT_410'
        PickList.Strings = ()
        Title.Caption = '410'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT_410_ADD'
        PickList.Strings = ()
        Title.Caption = '410 - корр.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT_101'
        PickList.Strings = ()
        Title.Caption = '101'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT_401'
        PickList.Strings = ()
        Title.Caption = '401'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT_503'
        PickList.Strings = ()
        Title.Caption = '501'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT_603'
        PickList.Strings = ()
        Title.Caption = '603'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 561
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 561
    inherited Panel1: TPanel
      Left = 534
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      'T020_BANK_CODE, T020_M_COUNTRY, T021_CURRENCY, '
      '   T021_C_COUNTRY, T021_SUM_OUT_101, T021_SUM_OUT_401, '
      '   T021_SUM_OUT_410, T021_SUM_OUT_410_ADD, T021_SUM_OUT_503, '
      '   T021_SUM_OUT_603, T021_SUM_OUT_ALL, T070_ID, '
      '   T071_ID, T072_ID'
      'FROM V_410_BIS_DATA_BY_KO'
      'WHERE T071_ID = :T071_ID'
      'AND   T072_ID = :T072_ID'
      'AND   T021_CURRENCY = :T021_CURRENCY'
      'AND   T020_M_COUNTRY = :T020_M_COUNTRY'
      'AND   T021_C_COUNTRY = :T021_C_COUNTRY'
      ' '
      ' ')
    Variables.Data = {
      0300000005000000080000003A543037315F4944040000000000000000000000
      080000003A543037325F49440400000000000000000000000E0000003A543032
      315F43555252454E43590500000000000000000000000F0000003A543032305F
      4D5F434F554E5452590400000000000000000000000F0000003A543032315F43
      5F434F554E545259040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E0000000E000000543032305F4D5F434F554E545259010000000000
      0D000000543032315F43555252454E43590100000000000E000000543032315F
      435F434F554E54525901000000000007000000543037305F4944010000000000
      07000000543037315F494401000000000007000000543037325F494401000000
      00000E000000543032305F42414E4B5F434F4445010000000000100000005430
      32315F53554D5F4F55545F31303101000000000010000000543032315F53554D
      5F4F55545F34303101000000000010000000543032315F53554D5F4F55545F34
      313001000000000014000000543032315F53554D5F4F55545F3431305F414444
      01000000000010000000543032315F53554D5F4F55545F353033010000000000
      10000000543032315F53554D5F4F55545F363033010000000000100000005430
      32315F53554D5F4F55545F414C4C010000000000}
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT021_SUM_OUT_101: TFloatField
      FieldName = 'T021_SUM_OUT_101'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListT021_SUM_OUT_401: TFloatField
      FieldName = 'T021_SUM_OUT_401'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListT021_SUM_OUT_410: TFloatField
      FieldName = 'T021_SUM_OUT_410'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListT021_SUM_OUT_410_ADD: TFloatField
      FieldName = 'T021_SUM_OUT_410_ADD'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListT021_SUM_OUT_503: TFloatField
      FieldName = 'T021_SUM_OUT_503'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListT021_SUM_OUT_603: TFloatField
      FieldName = 'T021_SUM_OUT_603'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListT021_SUM_OUT_ALL: TFloatField
      FieldName = 'T021_SUM_OUT_ALL'
      DisplayFormat = '### ### ##0.0000'
    end
  end
end
