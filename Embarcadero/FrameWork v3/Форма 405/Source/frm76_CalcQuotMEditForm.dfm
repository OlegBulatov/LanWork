inherited frm76_CalcQuotMEdit: Tfrm76_CalcQuotMEdit
  Left = 403
  Top = 265
  Caption = 'Пересчет'
  ClientHeight = 143
  ClientWidth = 309
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 60
    Width = 6
    Height = 13
    Caption = 'с'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 84
    Width = 12
    Height = 13
    Caption = 'по'
  end
  inherited Panel2: TPanel
    Top = 110
    Width = 309
    TabOrder = 2
    inherited Panel3: TPanel
      Left = 144
    end
  end
  object lcb01: TDBLookupComboBox [3]
    Left = 98
    Top = 56
    Width = 206
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    KeyField = 'T055_ID'
    ListField = 'T055_END_DATE'
    ListSource = ds01
    TabOrder = 0
  end
  object lcb02: TDBLookupComboBox [4]
    Left = 98
    Top = 81
    Width = 206
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    KeyField = 'T055_ID'
    ListField = 'T055_END_DATE'
    ListSource = ds02
    TabOrder = 1
  end
  object GroupBox1: TGroupBox [5]
    Left = 4
    Top = 8
    Width = 301
    Height = 41
    Caption = ' Пересчитать '
    TabOrder = 3
    object rbCalcAll: TRadioButton
      Left = 8
      Top = 16
      Width = 113
      Height = 17
      Caption = 'для всего списка'
      TabOrder = 0
      TabStop = True
    end
    object rbCalcSel: TRadioButton
      Left = 156
      Top = 16
      Width = 137
      Height = 17
      Caption = 'только для выбранных'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  inherited ActionList1: TActionList
    Left = 40
    Top = 92
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT    T083_ID, T055_ID, T055_LONG_NAME, T055_END_DATE'
      'FROM     V_405_QUOTATION_MONTH'
      'where           T030_ID = :T030_ID'
      'ORDER  BY T055_END_DATE'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D4501000000000007000000543038335F494401000000
      00000D000000543035355F454E445F44415445010000000000}
    Session = dmMain.OracleSession
    Left = 216
    Top = 52
    object ods01T083_ID: TFloatField
      FieldName = 'T083_ID'
      Required = True
    end
    object ods01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods01T055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 248
    Top = 52
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'SELECT    T083_ID, T055_ID, T055_LONG_NAME, T055_END_DATE'
      'FROM     V_405_QUOTATION_MONTH'
      'where           T030_ID = :T030_ID'
      'ORDER  BY T055_END_DATE'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D4501000000000007000000543038335F494401000000
      00000D000000543035355F454E445F44415445010000000000}
    Session = dmMain.OracleSession
    Left = 216
    Top = 84
    object ods02T083_ID: TFloatField
      FieldName = 'T083_ID'
      Required = True
    end
    object ods02T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods02T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods02T055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 248
    Top = 84
  end
  object ods01a: TOracleDataSet
    SQL.Strings = (
      'SELECT NULL T083_ID, T055_ID, T055_LONG_NAME, T055_END_DATE'
      'FROM   V_405_TIME'
      
        'WHERE  ((T055_TYPE= '#39'M'#39') OR ((T055_TYPE = '#39'D'#39') AND (EXTRACT(DAY ' +
        'FROM T055_END_DATE) = 15)))'
      'AND T055_START_DATE >= TO_DATE('#39'01.01.2008'#39','#39'dd.mm.yyyy'#39')'
      'AND T055_END_DATE <= SYSDATE'
      'ORDER  BY T055_END_DATE')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543038335F494401000000000007000000543035
      355F49440100000000000D000000543035355F454E445F444154450100000000
      000E000000543035355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 152
    Top = 51
    object ods01aT083_ID: TStringField
      FieldName = 'T083_ID'
      Size = 1
    end
    object ods01aT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods01aT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods01aT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
  end
  object ods02a: TOracleDataSet
    SQL.Strings = (
      'SELECT NULL T083_ID, T055_ID, T055_LONG_NAME, T055_END_DATE'
      'FROM   V_405_TIME'
      
        'WHERE  ((T055_TYPE= '#39'M'#39') OR ((T055_TYPE = '#39'D'#39') AND (EXTRACT(DAY ' +
        'FROM T055_END_DATE) = 15)))'
      'AND T055_START_DATE >= TO_DATE('#39'01.01.2008'#39','#39'dd.mm.yyyy'#39')'
      'AND T055_END_DATE <= SYSDATE'
      'ORDER  BY T055_END_DATE')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543038335F494401000000000007000000543035
      355F49440100000000000D000000543035355F454E445F444154450100000000
      000E000000543035355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 152
    Top = 84
    object ods02aT083_ID: TStringField
      FieldName = 'T083_ID'
      Size = 1
    end
    object ods02aT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods02aT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods02aT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
  end
end
