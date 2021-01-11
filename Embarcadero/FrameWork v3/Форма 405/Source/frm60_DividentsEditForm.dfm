inherited frm60_DividentsEdit: Tfrm60_DividentsEdit
  Left = 335
  Top = 278
  ClientHeight = 249
  ClientWidth = 447
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox [0]
    Left = 0
    Top = 92
    Width = 221
    Height = 124
    Align = alLeft
    Caption = 'Прямые'
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 20
      Width = 61
      Height = 13
      Hint = 'Кол-во (711)'
      Caption = 'Кол-во (711)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 8
      Top = 44
      Width = 78
      Height = 13
      Hint = 'Кол-во (прочие)'
      Caption = 'Кол-во (прочие)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label2: TLabel
      Left = 8
      Top = 68
      Width = 84
      Height = 13
      Hint = 'Сумма на 1 акцию'
      Caption = 'Сумма за акцию'
      ParentShowHint = False
      ShowHint = True
    end
    object Label8: TLabel
      Left = 8
      Top = 92
      Width = 81
      Height = 13
      Hint = 'Процент налога'
      Caption = 'Процент налога'
      ParentShowHint = False
      ShowHint = True
    end
    object ed01: TDBEdit
      Left = 96
      Top = 16
      Width = 113
      Height = 21
      DataField = 'T050_711_COUNT'
      DataSource = ds03
      TabOrder = 0
      OnChange = ed01Change
    end
    object ed02: TDBEdit
      Left = 96
      Top = 40
      Width = 113
      Height = 21
      DataField = 'T050_OTH_COUNT'
      DataSource = ds03
      TabOrder = 1
      OnChange = ed01Change
    end
    object ed04: TDBEdit
      Left = 96
      Top = 88
      Width = 113
      Height = 21
      DataField = 'T050_TAX_VALUE'
      DataSource = ds03
      TabOrder = 3
      OnChange = ed01Change
    end
    object ed03: TDBEdit
      Left = 96
      Top = 64
      Width = 113
      Height = 21
      DataField = 'T050_SUM'
      DataSource = ds03
      TabOrder = 2
      OnChange = ed01Change
    end
  end
  inherited Panel2: TPanel
    Top = 216
    Width = 447
    TabOrder = 3
    inherited Panel3: TPanel
      Left = 282
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 447
    Height = 92
    Align = alTop
    Caption = ' Выплата дивидендов'
    TabOrder = 0
    object Label6: TLabel
      Left = 8
      Top = 20
      Width = 43
      Height = 13
      Caption = 'Эмитент'
    end
    object Label7: TLabel
      Left = 8
      Top = 44
      Width = 40
      Height = 13
      Caption = 'Тип ц.б.'
    end
    object Label5: TLabel
      Left = 8
      Top = 68
      Width = 29
      Height = 13
      Hint = 'Дата выплаты дивидендов'
      Caption = 'Дата:'
      ParentShowHint = False
      ShowHint = True
    end
    object lcb01: TDBLookupComboBox
      Left = 96
      Top = 16
      Width = 340
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T028_ID'
      DataSource = frm60_DividentsList.dsList
      KeyField = 'T028_ID'
      ListField = 'T028_SHOT_NAME'
      ListSource = ds01
      TabOrder = 0
      OnCloseUp = lcb01CloseUp
    end
    object lcb02: TDBLookupComboBox
      Left = 96
      Top = 40
      Width = 340
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T027_ID'
      DataSource = frm60_DividentsList.dsList
      KeyField = 'T027_ID'
      ListField = 'T027_SEC_TYPE'
      ListSource = ds02
      TabOrder = 1
    end
    object dt01: TDBDateTimePicker
      Left = 96
      Top = 64
      Width = 113
      Height = 21
      CalAlignment = dtaLeft
      Date = 38589.5404041782
      Time = 38589.5404041782
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
      DataField = 'T050_DATE'
      DataSource = frm60_DividentsList.dsList
    end
  end
  object GroupBox4: TGroupBox [3]
    Left = 226
    Top = 92
    Width = 221
    Height = 124
    Align = alRight
    Caption = 'Портфельные'
    TabOrder = 2
    object Label12: TLabel
      Left = 8
      Top = 92
      Width = 81
      Height = 13
      Hint = 'Процент налога'
      Caption = 'Процент налога'
      ParentShowHint = False
      ShowHint = True
    end
    object Label11: TLabel
      Left = 8
      Top = 68
      Width = 84
      Height = 13
      Hint = 'Сумма на 1 акцию'
      Caption = 'Сумма за акцию'
      ParentShowHint = False
      ShowHint = True
    end
    object Label10: TLabel
      Left = 8
      Top = 44
      Width = 78
      Height = 13
      Hint = 'Кол-во (прочие)'
      Caption = 'Кол-во (прочие)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label9: TLabel
      Left = 8
      Top = 20
      Width = 61
      Height = 13
      Hint = 'Кол-во (711)'
      Caption = 'Кол-во (711)'
      ParentShowHint = False
      ShowHint = True
    end
    object ed08: TDBEdit
      Left = 96
      Top = 88
      Width = 113
      Height = 21
      DataField = 'T050_TAX_VALUE'
      DataSource = ds04
      TabOrder = 3
      OnChange = ed05Change
    end
    object ed07: TDBEdit
      Left = 96
      Top = 64
      Width = 113
      Height = 21
      DataField = 'T050_SUM'
      DataSource = ds04
      TabOrder = 2
      OnChange = ed05Change
    end
    object ed06: TDBEdit
      Left = 96
      Top = 40
      Width = 113
      Height = 21
      DataField = 'T050_OTH_COUNT'
      DataSource = ds04
      TabOrder = 1
      OnChange = ed05Change
    end
    object ed05: TDBEdit
      Left = 96
      Top = 16
      Width = 113
      Height = 21
      DataField = 'T050_711_COUNT'
      DataSource = ds04
      TabOrder = 0
      OnChange = ed05Change
    end
  end
  inherited ActionList1: TActionList
    Left = 56
    Top = 40
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select T028_ID, T028_SHOT_NAME'
      'from V_405_ISSUER_MAIN'
      'order by UPPER(T028_SHOT_NAME)'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 304
    Top = 8
    object ods01T028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object ods01T028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    OnDataChange = ds01DataChange
    Left = 336
    Top = 8
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE'
      'from     V_405_SEC_TYPE_MAIN'
      'where T028_PARENT_ID = :T028_ID'
      'order by T027_SEC_TYPE'
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 304
    Top = 48
    object ods02T027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object ods02T027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 336
    Top = 48
  end
  object ods03: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T050_ID,'
      '  T028_ID,'
      '  T027_ID,'
      '  T050_DATE,'
      '  T050_SUM,'
      '  T050_711_COUNT,'
      '  T050_OTH_COUNT,'
      '  T050_TYPE,'
      '  T050_TYPE_DESC,'
      '  T028_CODE,'
      '  T028_SHOT_NAME,'
      '  T025_SHOT_NAME,'
      '  T027_SEC_TYPE,'
      '  T050_USD_SUM,'
      '  T050_TAX_SUM,'
      '  T050_TAX_VALUE,'
      #9'T050_TOTAL_SUM'
      'FROM V_405_DIVIDENDS_LIST'
      'WHERE T028_ID = :T028_ID'
      #9'AND T027_ID = :T027_ID'
      #9'AND T050_DATE = :T050_DATE'
      '  AND T050_TYPE = 1'
      ''
      ' ')
    Variables.Data = {
      0300000003000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F49440400000000000000000000000A0000003A543035
      305F444154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000007000000543035305F494401000000000007000000543032
      385F494401000000000007000000543032375F49440100000000000900000054
      3035305F4441544501000000000008000000543035305F53554D010000000000
      0E000000543035305F3731315F434F554E540100000000000E00000054303530
      5F4F54485F434F554E5401000000000009000000543035305F54595045010000
      0000000E000000543035305F545950455F444553430100000000000900000054
      3032385F434F44450100000000000E000000543032385F53484F545F4E414D45
      0100000000000E000000543032355F53484F545F4E414D450100000000000D00
      0000543032375F5345435F545950450100000000000C000000543035305F5553
      445F53554D0100000000000C000000543035305F5441585F53554D0100000000
      000E000000543035305F5441585F56414C55450100000000000E000000543035
      305F544F54414C5F53554D010000000000}
    QueryAllRecords = False
    OnApplyRecord = ods03ApplyRecord
    Session = dmMain.OracleSession
    Left = 224
    Top = 49
    object ods03T050_ID: TFloatField
      FieldName = 'T050_ID'
      Required = True
    end
    object ods03T028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object ods03T027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object ods03T050_DATE: TDateTimeField
      FieldName = 'T050_DATE'
      Required = True
    end
    object ods03T050_SUM: TFloatField
      FieldName = 'T050_SUM'
      Required = True
    end
    object ods03T050_711_COUNT: TFloatField
      FieldName = 'T050_711_COUNT'
      Required = True
    end
    object ods03T050_OTH_COUNT: TFloatField
      FieldName = 'T050_OTH_COUNT'
      Required = True
    end
    object ods03T050_TYPE: TIntegerField
      FieldName = 'T050_TYPE'
      Required = True
    end
    object ods03T050_TYPE_DESC: TStringField
      FieldName = 'T050_TYPE_DESC'
      Size = 11
    end
    object ods03T028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object ods03T028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object ods03T025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object ods03T027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object ods03T050_USD_SUM: TFloatField
      FieldName = 'T050_USD_SUM'
      Required = True
    end
    object ods03T050_TAX_SUM: TFloatField
      FieldName = 'T050_TAX_SUM'
      Required = True
    end
    object ods03T050_TAX_VALUE: TFloatField
      FieldName = 'T050_TAX_VALUE'
      Required = True
    end
    object ods03T050_TOTAL_SUM: TFloatField
      FieldName = 'T050_TOTAL_SUM'
    end
  end
  object ds03: TDataSource
    DataSet = ods03
    Left = 256
    Top = 49
  end
  object ods04: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T050_ID,'
      '  T028_ID,'
      '  T027_ID,'
      '  T050_DATE,'
      '  T050_SUM,'
      '  T050_711_COUNT,'
      '  T050_OTH_COUNT,'
      '  T050_TYPE,'
      '  T050_TYPE_DESC,'
      '  T028_CODE,'
      '  T028_SHOT_NAME,'
      '  T025_SHOT_NAME,'
      '  T027_SEC_TYPE,'
      '  T050_USD_SUM,'
      '  T050_TAX_SUM,'
      '  T050_TAX_VALUE,'
      #9'T050_TOTAL_SUM'
      'FROM V_405_DIVIDENDS_LIST'
      'WHERE T028_ID = :T028_ID'
      #9'AND T027_ID = :T027_ID'
      #9'AND T050_DATE = :T050_DATE'
      '  AND T050_TYPE = 2'
      ''
      ' ')
    Variables.Data = {
      0300000003000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F49440400000000000000000000000A0000003A543035
      305F444154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000007000000543035305F494401000000000007000000543032
      385F494401000000000007000000543032375F49440100000000000900000054
      3035305F4441544501000000000008000000543035305F53554D010000000000
      0E000000543035305F3731315F434F554E540100000000000E00000054303530
      5F4F54485F434F554E5401000000000009000000543035305F54595045010000
      0000000E000000543035305F545950455F444553430100000000000900000054
      3032385F434F44450100000000000E000000543032385F53484F545F4E414D45
      0100000000000E000000543032355F53484F545F4E414D450100000000000D00
      0000543032375F5345435F545950450100000000000C000000543035305F5553
      445F53554D0100000000000C000000543035305F5441585F53554D0100000000
      000E000000543035305F5441585F56414C55450100000000000E000000543035
      305F544F54414C5F53554D010000000000}
    OnApplyRecord = ods03ApplyRecord
    Session = dmMain.OracleSession
    Left = 488
    Top = 225
    object ods04T050_ID: TFloatField
      FieldName = 'T050_ID'
      Required = True
    end
    object ods04T028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object ods04T027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object ods04T050_DATE: TDateTimeField
      FieldName = 'T050_DATE'
      Required = True
    end
    object ods04T050_SUM: TFloatField
      FieldName = 'T050_SUM'
      Required = True
    end
    object ods04T050_711_COUNT: TFloatField
      FieldName = 'T050_711_COUNT'
      Required = True
    end
    object ods04T050_OTH_COUNT: TFloatField
      FieldName = 'T050_OTH_COUNT'
      Required = True
    end
    object ods04T050_TYPE: TIntegerField
      FieldName = 'T050_TYPE'
      Required = True
    end
    object ods04T050_TYPE_DESC: TStringField
      FieldName = 'T050_TYPE_DESC'
      Size = 11
    end
    object ods04T028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object ods04T028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object ods04T025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object ods04T027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object ods04T050_USD_SUM: TFloatField
      FieldName = 'T050_USD_SUM'
      Required = True
    end
    object ods04T050_TAX_SUM: TFloatField
      FieldName = 'T050_TAX_SUM'
      Required = True
    end
    object ods04T050_TAX_VALUE: TFloatField
      FieldName = 'T050_TAX_VALUE'
      Required = True
    end
    object ods04T050_TOTAL_SUM: TFloatField
      FieldName = 'T050_TOTAL_SUM'
    end
  end
  object ds04: TDataSource
    DataSet = ods04
    Left = 520
    Top = 225
  end
end
