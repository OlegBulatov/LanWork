inherited C002_Issuer: TC002_Issuer
  inherited lbCaption: TLabel
    Width = 43
    Caption = 'Эмитент'
  end
  inherited lcb: TxxxDBLookupCheckCombo
    DisplayEmpty = 'Не выбрано'
    EmptyItemColor = clWindowText
    ListStyle = [lsSizeable]
    LookupField = 'T028_ID'
    LookupDisplay = 'T028_DESC'
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT /*+ FULL(V1) */'
      '       v2.T028_ID, '
      '       v2.T028_INN,'
      '       v2.T028_SHOT_NAME,'
      '       v2.T028_INN || '#39' - '#39' || v2.T028_SHOT_NAME as T028_DESC'
      'FROM   (SELECT DISTINCT T028_MAIN_ID '
      '        FROM     T001_SUM '
      '        WHERE    T055_DATE_ID >= :T055_ID_S'
      '        AND      T055_DATE_ID <= :T055_ID_E'
      '        :T027_ID '
      '        :T011_ID '
      '        ORDER BY T001_SUM.T001_ID'
      '       ) v1, '
      '       (SELECT T028_ID, '
      '               T028_SHOT_NAME, '
      '               T028_INN '
      '        FROM T028_ISSUERS '
      '        WHERE T028_ID = T028_PARENT_ID '
      '        ORDER BY T028_ISSUERS.T140_ID'
      '       ) v2 '
      'WHERE  v1.T028_MAIN_ID = v2.T028_ID'
      'ORDER BY v2.T028_SHOT_NAME')
    Variables.Data = {
      03000000040000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F4504000000000000000000000008000000
      3A543032375F49440100000002000000200000000000080000003A543031315F
      49440100000002000000200000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543032385F494401000000000008000000543032
      385F494E4E0100000000000E000000543032385F53484F545F4E414D45010000
      00000009000000543032385F44455343010000000000}
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_INN: TStringField
      DisplayWidth = 13
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_DESC: TStringField
      FieldName = 'T028_DESC'
      Size = 511
    end
  end
end
