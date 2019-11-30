inherited A30_Matrix: TA30_Matrix
  Width = 1163
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1163
    Columns = <
      item
        Expanded = False
        FieldName = 'FORM_NAME'
        PickList.Strings = ()
        Title.Caption = 'Источник'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M019_CODES'
        PickList.Strings = ()
        Title.Caption = 'Показатели'
        Width = 716
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1163
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 1163
    inherited Panel1: TPanel
      Left = 1136
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      'FORM_NAME, T070_ID, T071_ID,'
      '   T072_ID, M019_CODES'
      'FROM V_410_BIS_MATRIX_ALL'
      'WHERE T071_ID = :T071_ID'
      'AND   T072_ID = :T072_ID'
      'AND   T070_ID = :T070_ID'
      ' ')
    Variables.Data = {
      0300000003000000080000003A543037315F4944040000000000000000000000
      080000003A543037325F4944040000000000000000000000080000003A543037
      305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543037305F494401000000000007000000543037
      315F494401000000000007000000543037325F49440100000000000900000046
      4F524D5F4E414D450100000000000A0000004D3031395F434F44455301000000
      0000}
    object odsListFORM_NAME: TStringField
      FieldName = 'FORM_NAME'
      Size = 261
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
    object odsListM019_CODES: TStringField
      FieldName = 'M019_CODES'
      Size = 4000
    end
  end
end
