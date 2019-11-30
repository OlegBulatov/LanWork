inherited A30_F501: TA30_F501
  Width = 536
  Height = 317
  inherited xxxDBGrid: TxxxDBGrid
    Width = 536
    Height = 271
    AdvSettings.Indexes = <
      item
        FieldName = 'T020_BANK_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T020_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Сумма в млн.$'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_M_COUNTRY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'M022_CURRENCY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'M022_C_COUNTRY'
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
        FieldName = 'T072_ID'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 536
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 536
    inherited Panel1: TPanel
      Left = 509
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   DATA_SOURCE,'
      '         T020_M_COUNTRY,'
      '         T021_CURRENCY,'
      '         T021_C_COUNTRY,'
      '         T070_ID,'
      '         T071_ID,'
      '         T072_ID,'
      '                      T020_BANK_CODE,'
      '         T021_SUM_OUT'
      'FROM     V_410_BIS_DATA'
      'WHERE T071_ID = :T071_ID'
      'AND   T072_ID = :T072_ID'
      'AND   '#39'501'#39' = DATA_SOURCE'
      'AND   T021_CURRENCY = :T021_CURRENCY'
      'AND   T020_M_COUNTRY = :T020_M_COUNTRY'
      'AND   T021_C_COUNTRY = :T021_C_COUNTRY'
      ' '
      ''
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000005000000080000003A543037315F4944040000000800000000000000
      0000144000000000080000003A543037325F4944040000000800000000000000
      00001840000000000E0000003A543032315F43555252454E4359050000000400
      000036343300000000000F0000003A543032305F4D5F434F554E545259040000
      0000000000000000000F0000003A543032315F435F434F554E54525904000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000090000000E000000543032305F42414E4B5F434F4445010000000000
      07000000543037315F494401000000000007000000543037325F494401000000
      00000E000000543032305F4D5F434F554E5452590100000000000B0000004441
      54415F534F555243450100000000000D000000543032315F43555252454E4359
      0100000000000E000000543032315F435F434F554E5452590100000000000700
      0000543037305F49440100000000000C000000543032315F53554D5F4F555401
      0000000000}
    object odsListDATA_SOURCE: TStringField
      FieldName = 'DATA_SOURCE'
      Size = 127
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
    object odsListT070_ID: TFloatField
      FieldName = 'T070_ID'
    end
    object odsListT071_ID: TFloatField
      FieldName = 'T071_ID'
    end
    object odsListT072_ID: TFloatField
      FieldName = 'T072_ID'
    end
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT021_SUM_OUT: TFloatField
      FieldName = 'T021_SUM_OUT'
      DisplayFormat = '### ### ##0.0000'
    end
  end
end
