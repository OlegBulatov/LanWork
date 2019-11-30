inherited A30_SumDetail: TA30_SumDetail
  Width = 303
  inherited xxxDBGrid: TxxxDBGrid
    Width = 303
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA_SOURCE'
        PickList.Strings = ()
        Title.Caption = 'Источник'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM(T021_SUM_OUT)'
        PickList.Strings = ()
        Title.Caption = 'Сумма в млн.$'
        Width = 144
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 303
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 303
    inherited Panel1: TPanel
      Left = 477
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
      '         SUM (T021_SUM_OUT)'
      'FROM     DPB_410_BOSS.V_410_BIS_DATA'
      'WHERE T071_ID = :T071_ID'
      'AND   T072_ID = :T072_ID'
      'AND   T021_CURRENCY = :T021_CURRENCY'
      'AND   T020_M_COUNTRY = :T020_M_COUNTRY'
      'AND   T021_C_COUNTRY = :T021_C_COUNTRY'
      'GROUP BY DATA_SOURCE,'
      '         T020_M_COUNTRY,'
      '         T021_CURRENCY,'
      '         T021_C_COUNTRY,'
      '         T070_ID,'
      '         T071_ID,'
      '         T072_ID'
      ' ')
    Variables.Data = {
      0300000005000000080000003A543037315F4944040000000000000000000000
      080000003A543037325F49440400000000000000000000000E0000003A543032
      315F43555252454E43590500000000000000000000000F0000003A543032305F
      4D5F434F554E5452590400000000000000000000000F0000003A543032315F43
      5F434F554E545259040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000080000000B000000444154415F534F555243450100000000000E0000
      00543032305F4D5F434F554E5452590100000000000D000000543032315F4355
      5252454E43590100000000000E000000543032315F435F434F554E5452590100
      0000000007000000543037305F494401000000000007000000543037315F4944
      01000000000007000000543037325F49440100000000001100000053554D2854
      3032315F53554D5F4F555429010000000000}
    object odsListDATA_SOURCE: TStringField
      FieldName = 'DATA_SOURCE'
      Size = 127
    end
    object odsListSUMT021_SUM_OUT: TFloatField
      FieldName = 'SUM(T021_SUM_OUT)'
      DisplayFormat = '### ### ##0.0000'
    end
  end
end
