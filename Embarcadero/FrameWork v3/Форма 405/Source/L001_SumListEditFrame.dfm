inherited L001_SumListEdit: TL001_SumListEdit
  Width = 587
  Height = 536
  object GroupBox4: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 587
    Height = 71
    Align = alTop
    Caption = 'Сведения о расчетах'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 45
      Width = 77
      Height = 13
      Caption = 'Дата операции'
    end
    object Label19: TLabel
      Left = 16
      Top = 21
      Width = 60
      Height = 13
      Caption = 'Отч. период'
    end
    object Label27: TLabel
      Left = 312
      Top = 45
      Width = 52
      Height = 13
      Caption = '№ строки:'
    end
    object Label10: TLabel
      Left = 312
      Top = 21
      Width = 59
      Height = 13
      Caption = '№ раздела:'
    end
    object lcbPeriod: TDBLookupComboBox
      Left = 104
      Top = 17
      Width = 186
      Height = 21
      DataField = 'T002_ID'
      KeyField = 'T002_ID'
      ListField = 'SUM_HEADER_DESC'
      ListSource = dsPeriod
      TabOrder = 0
      OnCloseUp = lcbPeriodCloseUp
    end
    object lcbPart: TxxxDBLookupCheckCombo
      Left = 384
      Top = 17
      Width = 185
      Height = 21
      DropDownCount = 3
      DataField = 'T001_PART_ID'
      LookupField = 'T005_ID'
      LookupDisplay = 'T005_SHORT_NAME'
      LookupSource = dsPart
      TabOrder = 1
      OnCloseUp = lcbPartCloseUp
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object dt01: TDBDateEdit
      Left = 104
      Top = 41
      Width = 186
      Height = 21
      GlyphKind = gkDropDown
      NumGlyphs = 1
      TabOrder = 2
    end
    object edRowNum: TDBEdit
      Left = 384
      Top = 41
      Width = 185
      Height = 21
      DataField = 'T001_ROW_NUM'
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox [1]
    Left = 0
    Top = 71
    Width = 587
    Height = 72
    Align = alTop
    Caption = 'Параметры расчетов по операциям с ценными бумагами'
    TabOrder = 1
    object Label5: TLabel
      Left = 303
      Top = 21
      Width = 55
      Height = 13
      Caption = 'Кол-во ц.б.'
    end
    object Label7: TLabel
      Left = 16
      Top = 45
      Width = 80
      Height = 13
      Caption = 'Сумма платежа'
    end
    object Label3: TLabel
      Left = 16
      Top = 21
      Width = 70
      Height = 13
      Caption = 'Код операции'
    end
    object Label2: TLabel
      Left = 303
      Top = 45
      Width = 79
      Height = 13
      Caption = 'Код валюты пл.'
    end
    object ed01: TDBEdit
      Left = 391
      Top = 18
      Width = 186
      Height = 21
      DataField = 'T001_OP_COUNT'
      TabOrder = 0
    end
    object ed02: TDBEdit
      Left = 104
      Top = 42
      Width = 186
      Height = 21
      DataField = 'T001_OP_SUM'
      TabOrder = 1
    end
    object lcb03: TDBLookupComboBox
      Left = 104
      Top = 18
      Width = 186
      Height = 21
      DataField = 'T001_OP_ID'
      KeyField = 'T011_ID'
      ListField = 'T011_TYPE_ID'
      ListSource = ds03
      TabOrder = 2
    end
    object lcbPayCurr: TxxxDBLookupCheckCombo
      Left = 391
      Top = 42
      Width = 187
      Height = 21
      DropDownCount = 8
      LookupField = 'ISO_ID'
      LookupDisplay = 'CURR_DESC'
      LookupSource = dsPayCurr
      TabOrder = 3
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 143
    Width = 587
    Height = 48
    Align = alTop
    Caption = 'Характеристика ценной бумаги'
    TabOrder = 2
    object Label4: TLabel
      Left = 16
      Top = 21
      Width = 61
      Height = 13
      Caption = 'Код валюты'
    end
    object lcbCurr: TxxxDBLookupCheckCombo
      Left = 104
      Top = 18
      Width = 187
      Height = 21
      DropDownCount = 8
      LookupField = 'ISO_ID'
      LookupDisplay = 'CURR_DESC'
      LookupSource = dsCurr
      TabOrder = 0
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
  end
  object GroupBox7: TGroupBox [3]
    Left = 0
    Top = 423
    Width = 587
    Height = 113
    Align = alClient
    Caption = 'Дополнительно'
    TabOrder = 3
    object Label9: TLabel
      Left = 16
      Top = 43
      Width = 70
      Height = 26
      Caption = 'Комментарий'#13#10'ДС и УД'
      WordWrap = True
    end
    inline fm04_LookUp1: Tfm04_LookUp
      Left = 13
      Top = 12
      inherited Label1: TLabel
        Left = 3
        Width = 81
        Caption = 'Тип инвестиций'
      end
      inherited Lookup01: TxxxDBLookupCheckCombo
        Left = 92
        DataField = 'T001_INV_TYPE'
        LookupField = 'T001_INV_TYPE'
        LookupDisplay = 'T001_INV_TYPE_DESCR'
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          'SELECT'
          '      T001_INV_TYPE,'
          '      T001_INV_TYPE_DESCR'
          'FROM'
          '      V_405_INV_TYPE')
        QBEDefinition.QBEFieldDefs = {
          04000000020000000D000000543030315F494E565F5459504501000000000013
          000000543030315F494E565F545950455F4445534352010000000000}
      end
    end
    object DBMemo1: TDBMemo
      Left = 104
      Top = 40
      Width = 473
      Height = 64
      DataField = 'T001_DPB_COMMENT'
      TabOrder = 1
    end
  end
  object GroupBox8: TGroupBox [4]
    Left = 0
    Top = 191
    Width = 587
    Height = 92
    Align = alTop
    Caption = 'Эмиссия'
    TabOrder = 4
    object Label6: TLabel
      Left = 16
      Top = 21
      Width = 43
      Height = 13
      Caption = 'Эмитент'
    end
    object Label8: TLabel
      Left = 16
      Top = 44
      Width = 36
      Height = 13
      Caption = 'Страна'
    end
    object Label11: TLabel
      Left = 303
      Top = 44
      Width = 70
      Height = 13
      Caption = 'Тип эмитента'
    end
    object Label12: TLabel
      Left = 16
      Top = 67
      Width = 40
      Height = 13
      Caption = 'Тип ц.б.'
    end
    object Label13: TLabel
      Left = 304
      Top = 67
      Width = 56
      Height = 13
      Caption = 'Рег. номер'
    end
    object edIssuerName: TDBEdit
      Left = 104
      Top = 16
      Width = 470
      Height = 21
      TabOrder = 0
    end
    object lcbIssuerCountry: TxxxDBLookupCheckCombo
      Left = 104
      Top = 40
      Width = 186
      Height = 21
      DropDownCount = 8
      LookupField = 'T028_COUNTRY_ID'
      LookupDisplay = 'SHORT_NAME'
      LookupSource = dsIssuerCountry
      TabOrder = 1
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object lcbIssuerType: TxxxDBLookupCheckCombo
      Left = 384
      Top = 40
      Width = 190
      Height = 21
      DropDownCount = 8
      LookupField = 'T025_CODE'
      LookupDisplay = 'T025_LONG_NAME'
      LookupSource = dsIssuerType
      TabOrder = 2
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object lcbSecType: TxxxDBLookupCheckCombo
      Left = 104
      Top = 64
      Width = 185
      Height = 21
      DropDownCount = 8
      LookupField = 'T027_SEC_TYPE'
      LookupDisplay = 'T027_SEC_TYPE'
      LookupSource = dsSecType
      TabOrder = 3
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object edSecRegn: TDBEdit
      Left = 384
      Top = 64
      Width = 190
      Height = 21
      TabOrder = 4
    end
  end
  object GroupBox9: TGroupBox [5]
    Left = 0
    Top = 283
    Width = 587
    Height = 70
    Align = alTop
    Caption = 'Покупатель'
    TabOrder = 5
    object Label14: TLabel
      Left = 16
      Top = 21
      Width = 50
      Height = 13
      Caption = 'Название'
    end
    object Label15: TLabel
      Left = 16
      Top = 44
      Width = 19
      Height = 13
      Caption = 'Код'
    end
    object Label16: TLabel
      Left = 304
      Top = 44
      Width = 19
      Height = 13
      Caption = 'Тип'
    end
    object edCustName: TDBEdit
      Left = 104
      Top = 16
      Width = 470
      Height = 21
      TabOrder = 0
    end
    object lcbCustType: TxxxDBLookupCheckCombo
      Left = 348
      Top = 40
      Width = 227
      Height = 21
      DropDownCount = 8
      LookupField = 'T033_ID'
      LookupDisplay = 'T033_SHORT_NAME'
      LookupSource = dsCustType
      TabOrder = 1
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object edCustInn: TDBEdit
      Left = 104
      Top = 40
      Width = 185
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox10: TGroupBox [6]
    Left = 0
    Top = 353
    Width = 587
    Height = 70
    Align = alTop
    Caption = 'Продавец'
    TabOrder = 6
    object Label17: TLabel
      Left = 16
      Top = 21
      Width = 50
      Height = 13
      Caption = 'Название'
    end
    object Label18: TLabel
      Left = 16
      Top = 44
      Width = 19
      Height = 13
      Caption = 'Код'
    end
    object Label20: TLabel
      Left = 304
      Top = 44
      Width = 19
      Height = 13
      Caption = 'Тип'
    end
    object edSellName: TDBEdit
      Left = 104
      Top = 16
      Width = 470
      Height = 21
      TabOrder = 0
    end
    object lcbSellType: TxxxDBLookupCheckCombo
      Left = 348
      Top = 40
      Width = 227
      Height = 21
      DropDownCount = 8
      LookupField = 'T033_ID'
      LookupDisplay = 'T033_SHORT_NAME'
      LookupSource = dsSellType
      TabOrder = 1
      Advanced.ShowSelectionHint = False
      Advanced.Autorefresh = False
    end
    object edSellInn: TDBEdit
      Left = 104
      Top = 40
      Width = 185
      Height = 21
      TabOrder = 2
    end
  end
  inherited actList: TActionList
    Left = 536
    Top = 440
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'SELECT    T002_ID,'
      '          T055_ID,'
      '          --T002_BANK_CODE,'
      '          SUM_HEADER_DESC'
      'FROM      V_T002_SUM_HEADER'
      'WHERE     T002_BANK_CODE = :T002_BANK_CODE'
      'AND       T055_ID >= 1978 -- с июля 2018'
      'ORDER BY  T002_BANK_CODE,'
      '          T055_ID')
    Variables.Data = {
      03000000010000000F0000003A543030325F42414E4B5F434F44450500000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543030325F49440100000000000E000000543030
      325F42414E4B5F434F44450100000000000F00000053554D5F4845414445525F
      4445534301000000000007000000543035355F4944010000000000}
    Session = dmMain.OracleSession
    Left = 136
    Top = 8
    object odsPeriodT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsPeriodSUM_HEADER_DESC: TStringField
      FieldName = 'SUM_HEADER_DESC'
      Size = 62
    end
    object odsPeriodT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 176
    Top = 8
  end
  object odsPart: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  Pk_Hand_Correct_405.p_get_parts(:p_cursor, :T055_ID, :part_no)' +
        ';'
      'end;')
    Variables.Data = {
      0300000003000000090000003A505F435552534F527400000000000000000000
      00080000003A543035355F4944040000000000000000000000080000003A5041
      52545F4E4F040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543030355F49440100000000000F000000543030
      355F53484F52545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 424
    Top = 8
  end
  object dsPart: TDataSource
    DataSet = odsPart
    Left = 512
    Top = 8
  end
  object ods03: TOracleDataSet
    SQL.Strings = (
      'SELECT * FROM T011_OPERATION_TYPE'
      'where    T011_TYPE_ID IN (12,13,14,15,21,22)')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543031315F49440100000000000C000000543031
      315F545950455F494401000000000013000000543031315F4F5045524154494F
      4E5F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 152
    Top = 80
    object ods03T011_ID: TFloatField
      FieldName = 'T011_ID'
      Required = True
    end
    object ods03T011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object ods03T011_OPERATION_DESC: TStringField
      FieldName = 'T011_OPERATION_DESC'
      Size = 255
    end
  end
  object ds03: TDataSource
    DataSet = ods03
    Left = 192
    Top = 80
  end
  object oqMaxNum: TOracleQuery
    SQL.Strings = (
      'SELECT NVL(MAX(T001_ROW_NUM), 0)+1 as MAXNUM'
      'FROM   V_T001_SUM'
      'WHERE  T002_ID = :T002_ID'
      'AND    T001_PART_ID = :T001_PART_ID')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543030325F4944040000000000000000000000
      0D0000003A543030315F504152545F4944040000000000000000000000}
    Left = 472
    Top = 32
  end
  object odsPayCurr: TOracleDataSet
    SQL.Strings = (
      'select ISO_ID,'
      '       CURR_DESC'
      'from   V_405_CURRENCY'
      'order by'
      '       ISO_ID')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000600000049534F5F49440100000000000900000043555252
      5F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 432
    Top = 103
  end
  object dsPayCurr: TDataSource
    DataSet = odsPayCurr
    Left = 464
    Top = 103
  end
  object odsCurr: TOracleDataSet
    SQL.Strings = (
      'select   ISO_ID, CURR_DESC'
      'from     V_405_CURRENCY'
      'order by ISO_ID')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000600000049534F5F49440100000000000900000043555252
      5F44455343010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 168
    Top = 152
  end
  object dsCurr: TDataSource
    DataSet = odsCurr
    Left = 208
    Top = 152
  end
  object odsIssuerCountry: TOracleDataSet
    SQL.Strings = (
      'select ISO_DIG,'
      '       T028_COUNTRY_ID,'
      '       T028_COUNTRY_ID || '#39'   '#39' || SHORT_NAME as SHORT_NAME'
      'from   V_405_COUNTRY'
      'order by'
      '       T028_COUNTRY_ID')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000700000049534F5F4449470100000000000F000000543032
      385F434F554E5452595F49440100000000000A00000053484F52545F4E414D45
      010000000000}
    Session = dmMain.OracleSession
    Left = 200
    Top = 221
  end
  object dsIssuerCountry: TDataSource
    DataSet = odsIssuerCountry
    Left = 232
    Top = 221
  end
  object odsIssuerType: TOracleDataSet
    SQL.Strings = (
      'select T025_ID,'
      '       T025_CODE,'
      '       T025_LONG_NAME'
      'from   V_405_ISSUER_TYPE'
      'where  T025_CODE NOT IN (1, 11)'
      'order by '
      '       T025_CODE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032355F494401000000000009000000543032
      355F434F44450100000000000E000000543032355F4C4F4E475F4E414D450100
      00000000}
    Session = dmMain.OracleSession
    Left = 392
    Top = 221
  end
  object dsIssuerType: TDataSource
    DataSet = odsIssuerType
    Left = 424
    Top = 221
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'select T027_ID,'
      '       T027_SEC_TYPE,'
      '       T027_COMMENTS'
      'from   V_405_SEC_TYPE_P2')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F545950450100000000000D000000543032375F434F4D4D454E54
      53010000000000}
    Session = dmMain.OracleSession
    Left = 112
    Top = 245
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 144
    Top = 245
  end
  object odsCustType: TOracleDataSet
    SQL.Strings = (
      'SELECT T033_ID,'
      '       T033_SHORT_NAME'
      'FROM   V_405_REZID_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033335F49440100000000000F000000543033
      335F53484F52545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 315
  end
  object dsCustType: TDataSource
    DataSet = odsCustType
    Left = 392
    Top = 315
  end
  object odsSellType: TOracleDataSet
    SQL.Strings = (
      'SELECT T033_ID,'
      '       T033_SHORT_NAME'
      'FROM   V_405_REZID_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033335F49440100000000000F000000543033
      335F53484F52545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 383
  end
  object dsSellType: TDataSource
    DataSet = odsSellType
    Left = 400
    Top = 384
  end
end
