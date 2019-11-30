inherited fm37_DateTree: Tfm37_DateTree
  Width = 278
  Height = 183
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 97
    Height = 13
    Caption = 'Выберете периоды'
  end
  object TreeView: TTreeView
    Left = 115
    Top = 0
    Width = 163
    Height = 183
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    Images = dm02_Picters.ilCommonPictures
    Indent = 19
    ReadOnly = True
    TabOrder = 0
    OnClick = TreeViewClick
  end
  object odsTree: TOracleDataSet
    SQL.Strings = (
      'SELECT 1 T055_ID,'
      '       1 T055_PARENT_ID,'
      '       TO_DATE('#39'01/01/2004'#39', '#39'DD.MM.YYYY'#39') T055_START_DATE,'
      '       ADD_MONTHS(LAST_DAY(SYSDATE), -1) T055_END_DATE, '
      '       '#39'Все'#39' T055_SHORT_NAME,'
      '       '#39'Y'#39' T055_TYPE,'
      '       25 T055_IMAGE_INDEX'
      'FROM'#9'DUAL'
      ''
      'UNION ALL'
      ''
      'SELECT T055_ID,'
      '       T055_PARENT_ID,'
      '       T055_START_DATE,'
      '       T055_END_DATE,'
      '       T055_SHORT_NAME,'
      '       T055_TYPE,'
      '       25 T055_IMAGE_INDEX'
      'FROM'#9' V_405_TIME'
      'WHERE  T055_START_DATE < SYSDATE'
      'AND    T055_END_DATE > SYSDATE'
      'AND    (T055_TYPE = '#39'Q'#39' OR T055_TYPE = '#39'Y'#39')'
      ' '
      'UNION ALL'
      ''
      
        'SELECT  T055_ID, T055_PARENT_ID,  T055_START_DATE, T055_END_DATE' +
        ', T055_SHORT_NAME, T055_TYPE, 25 T055_IMAGE_INDEX'
      'FROM'#9'V_405_TIME'
      'WHERE T055_TYPE <> '#39'D'#39
      
        'AND  T055_END_DATE BETWEEN TO_DATE('#39'01.01.2004'#39', '#39'DD.MM.YYYY'#39') A' +
        'ND SYSDATE '
      'START WITH T055_PARENT_ID IS NULL '
      'CONNECT BY PRIOR T055_ID = T055_PARENT_ID'
      'ORDER BY T055_ID'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000700000007000000543035355F49440100000000000E000000543035
      355F504152454E545F49440100000000000F000000543035355F53484F52545F
      4E414D450100000000000F000000543035355F53544152545F44415445010000
      0000000D000000543035355F454E445F44415445010000000000100000005430
      35355F494D4147455F494E44455801000000000009000000543035355F545950
      45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 128
    Top = 88
    object odsTreeT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsTreeT055_PARENT_ID: TFloatField
      FieldName = 'T055_PARENT_ID'
    end
    object odsTreeT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
    end
    object odsTreeT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
    end
    object odsTreeT055_TYPE: TStringField
      FieldName = 'T055_TYPE'
      Size = 1
    end
    object odsTreeT055_IMAGE_INDEX: TFloatField
      FieldName = 'T055_IMAGE_INDEX'
    end
    object odsTreeT055_SHORT_NAME: TStringField
      FieldName = 'T055_SHORT_NAME'
      Size = 255
    end
  end
end
