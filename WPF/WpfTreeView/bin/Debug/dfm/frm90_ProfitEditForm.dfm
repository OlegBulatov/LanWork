inherited frm90_ProfitEdit: Tfrm90_ProfitEdit
  Left = 250
  Top = 128
  ClientHeight = 527
  ClientWidth = 627
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 0
    Top = 0
    Width = 627
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel [1]
    Left = 0
    Top = 74
    Width = 627
    Height = 2
    Align = alTop
  end
  inherited Panel2: TPanel
    Top = 494
    Width = 627
    TabOrder = 2
    inherited Panel3: TPanel
      Left = 462
    end
  end
  object paHeader: TPanel [3]
    Left = 0
    Top = 2
    Width = 627
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label7: TLabel
      Left = 13
      Top = 8
      Width = 268
      Height = 13
      Caption = 'Укажите финансовые показатели эмитента:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 386
      Top = 26
      Width = 38
      Height = 13
      Caption = 'Валюта'
    end
    object Label8: TLabel
      Left = 32
      Top = 26
      Width = 43
      Height = 13
      Caption = 'Эмитент'
    end
    object Label9: TLabel
      Left = 32
      Top = 48
      Width = 38
      Height = 13
      Caption = 'Период'
    end
    object txt01: TDBText
      Left = 88
      Top = 26
      Width = 23
      Height = 13
      AutoSize = True
      DataField = 'T028_SHOT_NAME'
      DataSource = ds01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object txt02: TDBText
      Left = 88
      Top = 48
      Width = 23
      Height = 13
      AutoSize = True
      DataField = 'T055_LONG_NAME'
      DataSource = ds02
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 386
      Top = 48
      Width = 54
      Height = 13
      Caption = 'Состояние'
    end
    object lcb01: TDBLookupComboBox
      Left = 476
      Top = 21
      Width = 120
      Height = 21
      DataField = 'M020_CURR'
      DataSource = frm90_ProfitList.dsList
      KeyField = 'ISO_ID'
      ListField = 'CURR_DESC'
      ListSource = ds03
      TabOrder = 0
    end
    object lcb02: TDBLookupComboBox
      Left = 476
      Top = 44
      Width = 120
      Height = 21
      DataField = 'M020_TYPE'
      DataSource = frm90_ProfitList.dsList
      KeyField = 'ET_ID'
      ListField = 'ET_NAME'
      ListSource = ds04
      TabOrder = 1
    end
  end
  object Panel5: TPanel [4]
    Left = 0
    Top = 76
    Width = 627
    Height = 418
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 37
      Width = 311
      Height = 13
      Hint = 'Остаток собственного капитала на '#13#10'начало периода'
      Caption = 'Остаток собственного капитала на начало периода'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label2: TLabel
      Left = 32
      Top = 61
      Width = 59
      Height = 13
      Hint = 'Операции'
      Caption = 'Операции'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label3: TLabel
      Left = 58
      Top = 84
      Width = 265
      Height = 13
      Hint = 
        'Консолидированная чистая прибыль '#13#10'после вычета прибыли минорита' +
        'риев,'#13#10'курсовых разниц ОПУ '#13#10'и прочих изменений ОПУ'
      Caption = 'Консолидированная чистая прибыль (после вычета)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 82
      Top = 108
      Width = 241
      Height = 13
      Hint = 
        'Консолидированная чистая прибыль '#13#10'до вычета прибыли миноритарие' +
        'в, '#13#10'курсовых разниц ОПУ '#13#10'и прочих изменений ОПУ'
      Caption = 'Консолидированная чистая прибыль до вычета'
      ParentShowHint = False
      ShowHint = True
    end
    object Label5: TLabel
      Left = 82
      Top = 133
      Width = 160
      Height = 13
      Hint = 'Чистая прибыль миноритариев'
      Caption = 'Чистая прибыль миноритариев'
      ParentShowHint = False
      ShowHint = True
    end
    object Label12: TLabel
      Left = 58
      Top = 228
      Width = 130
      Height = 13
      Hint = 'Курсовые разницы (ОПУ)'
      Caption = 'Курсовые разницы (ОПУ)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label13: TLabel
      Left = 58
      Top = 251
      Width = 128
      Height = 13
      Hint = 'Курсовые разницы (ОСС)'
      Caption = 'Курсовые разницы (ОСС)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label14: TLabel
      Left = 32
      Top = 274
      Width = 113
      Height = 13
      Hint = 'Прочие изменения'
      Caption = 'Прочие изменения'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label15: TLabel
      Left = 58
      Top = 298
      Width = 129
      Height = 13
      Hint = 'Прочие изменения (ОПУ)'
      Caption = 'Прочие изменения (ОПУ)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label16: TLabel
      Left = 58
      Top = 157
      Width = 160
      Height = 13
      Hint = 'Распределяемые дивиденды (-)'
      Caption = 'Распределяемые дивиденды (-)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label17: TLabel
      Left = 58
      Top = 181
      Width = 152
      Height = 13
      Hint = 'Прочие доходы (+)/расходы (-)'
      Caption = 'Прочие доходы (+)/расходы (-)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label18: TLabel
      Left = 58
      Top = 322
      Width = 127
      Height = 13
      Hint = 'Прочие изменения (ОСС)'
      Caption = 'Прочие изменения (ОСС)'
      ParentShowHint = False
      ShowHint = True
    end
    object Label20: TLabel
      Left = 32
      Top = 204
      Width = 110
      Height = 13
      Hint = 'Курсовая разница'
      Caption = 'Курсовая разница'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label21: TLabel
      Left = 12
      Top = 368
      Width = 305
      Height = 13
      Hint = 'Остаток собственного капитала на '#13#10'конец периода'
      Caption = 'Остаток собственного капитала на конец периода'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label22: TLabel
      Left = 143
      Top = 201
      Width = 180
      Height = 13
      Caption = '............................................................'
    end
    object Label23: TLabel
      Left = 146
      Top = 272
      Width = 177
      Height = 13
      Caption = '...........................................................'
    end
    object Label24: TLabel
      Left = 92
      Top = 59
      Width = 231
      Height = 13
      Caption = 
        '................................................................' +
        '.............'
    end
    object Label11: TLabel
      Left = 32
      Top = 343
      Width = 157
      Height = 13
      Caption = 'Прочие компенсационные'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 189
      Top = 317
      Width = 135
      Height = 13
      Caption = '.............................................'
    end
    object ed01: TDBEdit
      Left = 340
      Top = 34
      Width = 120
      Height = 21
      Hint = 'Остаток собственного капитала на '#13#10'начало периода'
      Color = clBtnFace
      DataField = 'M020_START_SUM'
      DataSource = frm90_ProfitList.dsList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object ed02: TDBEdit
      Left = 340
      Top = 57
      Width = 120
      Height = 21
      Hint = 'Операции'
      Color = clBtnFace
      DataField = 'M020_OPER_SUM'
      DataSource = frm90_ProfitList.dsList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object ed03: TDBEdit
      Left = 340
      Top = 81
      Width = 120
      Height = 21
      Hint = 
        'Консолидированная чистая прибыль '#13#10'после вычета прибыли минорита' +
        'риев,'#13#10'курсовых разниц ОПУ '#13#10'и прочих изменений ОПУ'
      Color = clBtnFace
      DataField = 'M020_PROFIT_SUM'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
    object ed04: TDBEdit
      Left = 340
      Top = 105
      Width = 120
      Height = 21
      Hint = 
        'Консолидированная чистая прибыль '#13#10'до вычета прибыли миноритарие' +
        'в, '#13#10'курсовых разниц ОПУ '#13#10'и прочих изменений ОПУ'
      Color = clBtnFace
      DataField = 'M020_TOTAL_PROFIT'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object ed05: TDBEdit
      Left = 340
      Top = 129
      Width = 120
      Height = 21
      Hint = 'Чистая прибыль миноритариев'
      Color = clBtnFace
      DataField = 'M020_MINOR_PROFIT'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
    end
    object ed10: TDBEdit
      Left = 340
      Top = 225
      Width = 120
      Height = 21
      Hint = 'Курсовые разницы (ОПУ)'
      Color = clBtnFace
      DataField = 'M020_DIFF_OPU'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 8
    end
    object ed11: TDBEdit
      Left = 340
      Top = 248
      Width = 120
      Height = 21
      Hint = 'Курсовые разницы (ОСС)'
      Color = clBtnFace
      DataField = 'M020_DIFF_OSS'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 9
    end
    object ed12: TDBEdit
      Left = 340
      Top = 271
      Width = 120
      Height = 21
      Hint = 'Прочие изменения'
      Color = clBtnFace
      DataField = 'M020_OTHER_CHANGES'
      DataSource = frm90_ProfitList.dsList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 10
    end
    object ed13: TDBEdit
      Left = 340
      Top = 295
      Width = 120
      Height = 21
      Hint = 'Прочие изменения (ОПУ)'
      Color = clBtnFace
      DataField = 'M020_OTHER_OPU'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 11
    end
    object ed06: TDBEdit
      Left = 340
      Top = 153
      Width = 120
      Height = 21
      Hint = 'Распределяемые дивиденды (-)'
      Color = clBtnFace
      DataField = 'M020_DIVIDENDS'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 5
    end
    object ed07: TDBEdit
      Left = 340
      Top = 177
      Width = 120
      Height = 21
      Hint = 'Прочие доходы (+)/расходы (-)'
      Color = clBtnFace
      DataField = 'M020_OTHERS_SUM'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 6
    end
    object ed14: TDBEdit
      Left = 340
      Top = 319
      Width = 120
      Height = 21
      Hint = 'Прочие изменения (ОСС)'
      Color = clBtnFace
      DataField = 'M020_OTHER_OSS'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 12
    end
    object ed08: TDBEdit
      Left = 340
      Top = 201
      Width = 120
      Height = 21
      Hint = 'Курсовая разница'
      Color = clBtnFace
      DataField = 'M020_COURSE_DIFF'
      DataSource = frm90_ProfitList.dsList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 7
    end
    object ed16: TDBEdit
      Left = 340
      Top = 391
      Width = 120
      Height = 21
      Hint = 'Остаток собственного капитала на '#13#10'конец периода'
      Color = clBtnFace
      DataField = 'M020_END_SUM'
      DataSource = frm90_ProfitList.dsList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 14
    end
    object org04: TDBEdit
      Left = 476
      Top = 105
      Width = 120
      Height = 21
      Hint = 
        'Консолидированная чистая прибыль '#13#10'до вычета прибыли миноритарие' +
        'в, '#13#10'курсовых разниц ОПУ '#13#10'и прочих изменений ОПУ'
      DataField = 'M020_TOTAL_PROFIT_ORG'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object org05: TDBEdit
      Left = 476
      Top = 129
      Width = 120
      Height = 21
      Hint = 'Чистая прибыль миноритариев'
      DataField = 'M020_MINOR_PROFIT_ORG'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object org07: TDBEdit
      Left = 476
      Top = 177
      Width = 120
      Height = 21
      Hint = 'Прочие доходы (+)/расходы (-)'
      DataField = 'M020_OTHERS_SUM_ORG'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
    object org10: TDBEdit
      Left = 476
      Top = 225
      Width = 120
      Height = 21
      Hint = 'Курсовые разницы (ОПУ)'
      DataField = 'M020_DIFF_OPU_ORG'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object org11: TDBEdit
      Left = 476
      Top = 248
      Width = 120
      Height = 21
      Hint = 'Курсовые разницы (ОСС)'
      DataField = 'M020_DIFF_OSS_ORG'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object org13: TDBEdit
      Left = 476
      Top = 295
      Width = 120
      Height = 21
      Hint = 'Прочие изменения (ОПУ)'
      DataField = 'M020_OTHER_OPU_ORG'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
    end
    object org14: TDBEdit
      Left = 476
      Top = 319
      Width = 120
      Height = 21
      Hint = 'Прочие изменения (ОСС)'
      DataField = 'M020_OTHER_OSS_ORG'
      DataSource = frm90_ProfitList.dsList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
    end
    object Panel1: TPanel
      Left = 340
      Top = 16
      Width = 120
      Height = 17
      BevelOuter = bvLowered
      Caption = 'в долларах США'
      TabOrder = 22
    end
    object Panel4: TPanel
      Left = 476
      Top = 16
      Width = 120
      Height = 17
      BevelOuter = bvLowered
      Caption = 'в валюте ввода'
      TabOrder = 23
    end
    object cb01: TDBCheckBox
      Left = 340
      Top = 367
      Width = 97
      Height = 17
      Caption = 'Ручной ввод'
      DataField = 'M020_REMAIN_TYPE'
      DataSource = frm90_ProfitList.dsList
      TabOrder = 24
      ValueChecked = 'H'
      ValueUnchecked = 'A'
      OnClick = cb01Click
    end
    object ed15: TDBEdit
      Left = 340
      Top = 341
      Width = 120
      Height = 21
      Color = clBtnFace
      DataField = 'M020_OTH_REMAIN'
      DataSource = frm90_ProfitList.dsList
      TabOrder = 13
    end
    object org16: TDBEdit
      Left = 476
      Top = 391
      Width = 121
      Height = 21
      DataField = 'M020_END_SUM_ORG'
      DataSource = frm90_ProfitList.dsList
      TabOrder = 25
    end
  end
  inherited ActionList: TActionList
    Left = 264
    Top = 16
    object actCalc: TAction
      Category = 'Profit'
      Caption = 'Рассчитать'
    end
    object actForecast: TAction
      Category = 'Profit'
      Caption = 'Составить прогноз'
    end
    object actSimple: TAction
      Category = 'View'
      Caption = 'к простому виду'
    end
    object actMonth: TAction
      Category = 'View'
      Caption = 'по месяцам'
    end
    object actCopy: TAction
      Caption = 'Скопировать'
    end
    object actCalcItem: TAction
      Category = 'Profit'
      Caption = 'Рассчитать'
      ImageIndex = 27
    end
    object actForecastItem: TAction
      Category = 'Profit'
      Caption = 'Составить прогноз'
      ImageIndex = 11
    end
  end
  object ods03: TOracleDataSet
    SQL.Strings = (
      'select ISO_ID, ISO_LAT3, CURR_DESC'
      'from V_NR_CURRENCY')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000600000049534F5F49440100000000000900000043555252
      5F444553430100000000000800000049534F5F4C415433010000000000}
    Session = dmMain.OracleSession
    Left = 248
    Top = 80
    object ods03ISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object ods03CURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 106
    end
    object ods03ISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
  end
  object ds03: TDataSource
    DataSet = ods03
    Left = 288
    Top = 80
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select V4.T028_SHOT_NAME'
      'from V_NR_ISSUERS V3,'
      '     V_NR_ISSUERS V4'
      'WHERE  V3.T028_ID = :M029_ID'
      'AND    NVL(V3.T028_PARENT_ID, V3.T028_ID) = V4.T028_ID'
      '')
    Variables.Data = {
      0300000001000000080000003A4D3032395F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000010000000E000000543032385F53484F545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 136
    Top = 10
    object ods01T028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 192
    Top = 10
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select T055_LONG_NAME'
      'from V_NR_TIME'
      'where T055_ID = :T055_ID')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000010000000E000000543035355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 136
    Top = 50
    object ods02T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 192
    Top = 50
  end
  object ods04: TOracleDataSet
    SQL.Strings = (
      'select ET_ID, ET_NAME from V_NR_REINVEST_EDIT_TYPES')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000500000045545F49440100000000000700000045545F4E41
      4D45010000000000}
    Session = dmMain.OracleSession
    Left = 336
    Top = 48
    object ods04ET_ID: TFloatField
      FieldName = 'ET_ID'
    end
    object ods04ET_NAME: TStringField
      FieldName = 'ET_NAME'
      Size = 22
    end
  end
  object ds04: TDataSource
    DataSet = ods04
    Left = 376
    Top = 49
  end
end
