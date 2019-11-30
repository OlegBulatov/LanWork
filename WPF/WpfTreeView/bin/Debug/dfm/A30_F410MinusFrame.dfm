inherited A30_F410Minus: TA30_F410Minus
  Width = 745
  inherited xxxDBGrid: TxxxDBGrid
    Width = 745
    AdvSettings.Indexes = <
      item
        FieldName = 'DATA_SOURCE'
        SortType = stAsc
      end
      item
        FieldName = 'T020_BANK_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'T037_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'T036_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T020_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_ID'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_CODE'
        PickList.Strings = ()
        Title.Caption = 'Показатель 410'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_ID'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_CODE'
        PickList.Strings = ()
        Title.Caption = 'Сектор 410'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Сумма в млн.$'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_SOURCE'
        PickList.Strings = ()
        Title.Caption = 'Корректировка на показатель'
        Width = 178
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 745
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 745
    inherited Panel1: TPanel
      Left = 718
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      'DATA_SOURCE, T020_BANK_CODE, T020_M_COUNTRY,'
      '   T021_CURRENCY, T021_C_COUNTRY, T021_SUM_OUT,'
      '   T036_ID, T036_CODE, T037_ID, T037_CODE,T065_PRIM, '
      '   T070_ID, T071_ID, T072_ID'
      'FROM V_410_BIS_ADD'
      'WHERE T071_ID = :T071_ID'
      'AND   T072_ID = :T072_ID'
      'AND   T021_CURRENCY = :T021_CURRENCY'
      'AND   T020_M_COUNTRY = :T020_M_COUNTRY'
      'AND   T021_C_COUNTRY = :T021_C_COUNTRY'
      ' ')
    Variables.Data = {
      0300000005000000080000003A543037315F4944040000000000000000000000
      080000003A543037325F49440400000000000000000000000E0000003A543032
      315F43555252454E43590500000000000000000000000F0000003A543032305F
      4D5F434F554E5452590400000000000000000000000F0000003A543032315F43
      5F434F554E545259040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E0000000B000000444154415F534F555243450100000000000E0000
      00543032305F42414E4B5F434F44450100000000000E000000543032305F4D5F
      434F554E5452590100000000000D000000543032315F43555252454E43590100
      000000000E000000543032315F435F434F554E5452590100000000000C000000
      543032315F53554D5F4F555401000000000007000000543033365F4944010000
      00000007000000543033375F494401000000000009000000543036355F505249
      4D01000000000007000000543037305F49440100000000000700000054303731
      5F494401000000000007000000543037325F4944010000000000090000005430
      33365F434F444501000000000009000000543033375F434F4445010000000000}
    Active = True
    object odsListDATA_SOURCE: TStringField
      FieldName = 'DATA_SOURCE'
      Size = 127
    end
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT020_M_COUNTRY: TIntegerField
      FieldName = 'T020_M_COUNTRY'
    end
    object odsListT021_CURRENCY: TStringField
      FieldName = 'T021_CURRENCY'
      Size = 3
    end
    object odsListT021_C_COUNTRY: TIntegerField
      FieldName = 'T021_C_COUNTRY'
    end
    object odsListT021_SUM_OUT: TFloatField
      FieldName = 'T021_SUM_OUT'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT065_PRIM: TStringField
      FieldName = 'T065_PRIM'
      Size = 255
    end
    object odsListT070_ID: TFloatField
      FieldName = 'T070_ID'
    end
    object odsListT071_ID: TFloatField
      FieldName = 'T071_ID'
    end
    object odsListT072_ID: TFloatField
      FieldName = 'T072_ID'
    end
    object odsListT036_CODE: TStringField
      FieldName = 'T036_CODE'
      Size = 3
    end
    object odsListT037_CODE: TStringField
      FieldName = 'T037_CODE'
      Size = 12
    end
  end
end
