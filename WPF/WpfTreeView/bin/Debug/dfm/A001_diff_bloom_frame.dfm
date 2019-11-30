inherited A001_diff_bloom: TA001_diff_bloom
  Width = 1046
  Height = 558
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1046
    Height = 533
    Columns = <
      item
        Expanded = False
        FieldName = 'ISIN'
        PickList.Strings = ()
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERIOD'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURRENCY'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLOOM_CURRENCY'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COUNTRY'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLOOM_COUNTRY'
        PickList.Strings = ()
        Width = 57
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1046
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT ISIN,'
      '       PERIOD, '
      '       CURRENCY, '
      '       BLOOM_CURRENCY, '
      '       COUNTRY, '
      '       BLOOM_COUNTRY'
      '  FROM V_ISIN_FOR_DIFF')
    QBEDefinition.QBEFieldDefs = {
      0400000006000000040000004953494E01000000000006000000504552494F44
      0100000000000800000043555252454E43590100000000000E000000424C4F4F
      4D5F43555252454E435901000000000007000000434F554E5452590100000000
      000D000000424C4F4F4D5F434F554E545259010000000000}
    object odsListISIN: TStringField
      FieldName = 'ISIN'
      Size = 265
    end
    object odsListPERIOD: TFloatField
      FieldName = 'PERIOD'
    end
    object odsListCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Size = 3
    end
    object odsListBLOOM_CURRENCY: TStringField
      FieldName = 'BLOOM_CURRENCY'
      Size = 255
    end
    object odsListCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 3
    end
    object odsListBLOOM_COUNTRY: TStringField
      FieldName = 'BLOOM_COUNTRY'
      Size = 255
    end
  end
end
