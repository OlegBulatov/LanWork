inherited L001_SumList: TL001_SumList
  Width = 831
  Height = 506
  inherited xxxDBGrid: TxxxDBGrid
    Top = 179
    Width = 831
    Height = 301
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 7
            LastCol = 8
            Caption = 'Сумма платежа'
          end
          item
            FirstCol = 9
            LastCol = 11
            Caption = 'Покупатель'
          end
          item
            FirstCol = 12
            LastCol = 14
            Caption = 'Продавец'
          end
          item
            FirstCol = 15
            LastCol = 17
            Caption = 'Эмитент'
          end
          item
            FirstCol = 18
            LastCol = 20
            Caption = 'Характеристика фин. инструмента'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T001_ROW_PRFX'
        PickList.Strings = ()
        Title.Caption = '№ раз.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = 'Стр.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_OP'
        PickList.Strings = ()
        Title.Caption = 'Дата операции'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T011_TYPE_ID'
        PickList.Strings = ()
        Title.Caption = 'Код опер.'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_COUNT'
        PickList.Strings = ()
        Title.Caption = 'Кол-во бумаг'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_PERCENT'
        PickList.Strings = ()
        Title.Caption = 'Доля'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_CR_DESC'
        PickList.Strings = ()
        Title.Caption = 'Код вал. плат.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM'
        PickList.Strings = ()
        Title.Caption = 'Всего'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Всего ($)'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUST_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUST_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUST_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SELL_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SELL_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SELL_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наменование'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег №'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Код инстр.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CR_DESC'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_N8'
        PickList.Strings = ()
        Title.Caption = 'МЕНА'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T001_N9'
        PickList.Strings = ()
        Title.Caption = 'РАССРОЧКА'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_11'
        PickList.Strings = ()
        Title.Caption = 'БРОКЕР'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T001_N99'
        PickList.Strings = ()
        Title.Caption = 'ИМУЩЕСТВО'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T001_10'
        PickList.Strings = ()
        Title.Caption = 'ПАКЕТ'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OWN_OPER'
        PickList.Strings = ()
        Title.Caption = 'СОБСТВ. БУМ'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_NUMB_IN_YEA_DESC'
        PickList.Strings = ()
        Title.Caption = 'Отчетный период'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Рег № КО'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование КО'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_YEAR'
        PickList.Strings = ()
        Title.Caption = 'Год'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_MONTH'
        PickList.Strings = ()
        Title.Caption = 'Месяц'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_PRICE_USD'
        PickList.Strings = ()
        Title.Caption = 'Цена ($)'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_PRICE'
        PickList.Strings = ()
        Title.Caption = 'Цена (руб.)'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_MOD_OP_SUM_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Сумма платежа (млн. $)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_INV_TYPE_DESCR'
        PickList.Strings = ()
        Title.Caption = 'Тип инвестирования'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_REPO_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата РЕПО'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DPB_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Комментарии ДСиУД'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C22_NAME'
        PickList.Strings = ()
        Title.Caption = 'Вид валютной операции'
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 154
    Width = 831
    object ToolBar1: TToolBar
      Left = 569
      Top = 0
      Width = 211
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 94
      Caption = 'ToolBar1'
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = dmPicters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 6
      object ToolButton2: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 8
        Top = 0
        Action = actInfo
        AutoSize = True
      end
      object ToolButton1: TToolButton
        Left = 105
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 22
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 113
        Top = 0
        Action = actClone
        AutoSize = True
      end
    end
  end
  inherited paFilters: TPanel
    Width = 831
    Height = 133
    inherited GroupBox1: TGroupBox
      Width = 527
      Height = 127
      inline PeriodFilter: TL001_PeriodFilter
        Left = 8
        Top = 13
      end
      inline BankFilter: TL001_BankFilter
        Left = 8
        Top = 36
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline OpCodeFilter: TL001_OpCodeFilter
        Left = 8
        Top = 59
        Width = 512
        TabOrder = 2
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
      inline SecTypeFilter: TL001_SecTypeFilter
        Left = 8
        Top = 82
        Width = 512
        TabOrder = 3
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
      object cbCalcAll: TCheckBox
        Left = 8
        Top = 106
        Width = 97
        Height = 17
        Caption = ' Считать итоги'
        TabOrder = 4
        OnClick = cbCalcAllClick
      end
    end
    inherited Button1: TButton
      Left = 539
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 133
    Width = 831
    inherited Panel1: TPanel
      Left = 804
    end
  end
  object paBottom: TPanel [4]
    Left = 0
    Top = 480
    Width = 831
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object Label1: TLabel
      Left = 170
      Top = 6
      Width = 122
      Height = 13
      Caption = 'Кол-во бумаг, всего'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 436
      Top = 6
      Width = 155
      Height = 13
      Caption = 'Сумма платежа, всего ($)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 6
      Width = 36
      Height = 13
      Caption = 'Строк'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 299
      Top = 3
      Width = 118
      Height = 21
      Color = clBtnFace
      DataField = 'OPS_COUNT'
      DataSource = dsCount
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 596
      Top = 3
      Width = 136
      Height = 21
      Color = clBtnFace
      DataField = 'OPS_SUM_CROSS'
      DataSource = dsCount
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 3
      Width = 91
      Height = 21
      Color = clBtnFace
      DataField = 'COUNT_STR'
      DataSource = dsCount
      ReadOnly = True
      TabOrder = 2
      Visible = False
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 350
    inherited actAdd: TAction
      Enabled = True
      Visible = True
    end
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    inherited actDelete: TAction
      Enabled = True
      Visible = True
    end
    object actInfo: TAction
      Caption = 'Информация'
      Hint = 'Источник записи'
      ImageIndex = 21
      OnExecute = actInfoExecute
      OnUpdate = actInfoUpdate
    end
    object actClone: TAction
      Caption = 'Дублировать'
      Hint = 'Дублировать запись'
      ImageIndex = 13
      OnExecute = actCloneExecute
      OnUpdate = actCloneUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 289
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T002_ID,'
      '  T055_ID,'
      '  T001_ID,'
      '  T001_PART_ID,'
      '  T001_ROW_PREFIX,'
      '  T001_ROW_PRFX,'
      '  T001_ROW_NUM,'
      '  T001_DATE_OP,'
      '  T001_OP_ID,'
      '  T011_TYPE_ID,'
      '  T001_OP_COUNT,'
      '  T001_PERCENT,'
      '  T001_OP_CR_ID,'
      '  T001_OP_CR_DESC,'
      '  T001_OP_SUM,'
      '  T001_OP_SUM_CROSS,'
      '  T012_ID_CUST,'
      '  CUST_NAME,'
      '  CUST_INN,'
      '  CUST_TYPE_ID,'
      '  CUST_TYPE,'
      '  T012_ID_SELL,'
      '  SELL_NAME,'
      '  SELL_INN,'
      '  SELL_TYPE_ID,'
      '  SELL_TYPE,'
      '  T030_ID,'
      '  ISSUER_NAME,'
      '  ISSUER_COUNTRY_ID,'
      '  ISSUER_COUNTRY,'
      '  ISSUER_TYPE,'
      '  T026_SEC_REGN,'
      '--  T001_ISIN,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T001_CR_ID,'
      '  T001_CR_DESC,'
      '  T001_COMMENT,'
      '  T001_N8,'
      '  T001_N9,'
      '  T001_11,'
      '  T001_N99,'
      '  T001_10,'
      '  T001_OWN_OPER,'
      '  T002_NUMB_IN_YEA_DESC,'
      '  T002_BANK_CODE,'
      '  T002_BANK_NAME,'
      '  T001_OP_YEAR,'
      '  T001_OP_MONTH,'
      '  T001_PRICE_USD,'
      '  T001_PRICE,'
      '  T001_MOD_OP_SUM_CROSS,'
      '  T001_INV_TYPE,'
      '  T001_INV_TYPE_DESCR,'
      '  T001_REPO_DATE,'
      '  T001_DPB_COMMENT,'
      '  C22_NAME,'
      '  OP_TYPE_ERR,'
      '  SEC_TYPE_ERR,'
      '  CUST_NAME_ERR,'
      '  SELL_NAME_ERR'
      'FROM V_T001_SUM_P2')
    QBEDefinition.QBEFieldDefs = {
      040000003C00000007000000543030325F494401000000000007000000543030
      315F49440100000000000C000000543030315F504152545F4944010000000000
      0D000000543030315F524F575F505246580100000000000C000000543030315F
      524F575F4E554D0100000000000C000000543030315F444154455F4F50010000
      0000000A000000543030315F4F505F49440100000000000C000000543031315F
      545950455F49440100000000000D000000543030315F4F505F434F554E540100
      000000000C000000543030315F50455243454E540100000000000F0000005430
      30315F4F505F43525F444553430100000000000B000000543030315F4F505F53
      554D01000000000011000000543030315F4F505F53554D5F43524F5353010000
      00000009000000435553545F4E414D4501000000000008000000435553545F49
      4E4E01000000000009000000435553545F545950450100000000000900000053
      454C4C5F4E414D450100000000000800000053454C4C5F494E4E010000000000
      0900000053454C4C5F545950450100000000000D000000543032375F5345435F
      545950450100000000000C000000543030315F43525F44455343010000000000
      0C000000543030315F434F4D4D454E5401000000000007000000543030315F4E
      3801000000000007000000543030315F4E390100000000000700000054303031
      5F313101000000000008000000543030315F4E39390100000000000700000054
      3030315F313001000000000015000000543030325F4E554D425F494E5F594541
      5F444553430100000000000E000000543030325F42414E4B5F434F4445010000
      0000000E000000543030325F42414E4B5F4E414D450100000000000C00000054
      3030315F4F505F594541520100000000000D000000543030315F4F505F4D4F4E
      54480100000000000E000000543030315F50524943455F555344010000000000
      0A000000543030315F505249434501000000000015000000543030315F4D4F44
      5F4F505F53554D5F43524F535301000000000013000000543030315F494E565F
      545950455F44455343520100000000000E000000543030315F5245504F5F4441
      544501000000000010000000543030315F4450425F434F4D4D454E5401000000
      0000080000004332325F4E414D4501000000000007000000543035355F494401
      000000000007000000543032375F49440100000000000D000000543030315F4F
      505F43525F49440100000000000A000000543030315F43525F49440100000000
      0007000000543033305F49440100000000000B0000004F505F545950455F4552
      520100000000000C0000005345435F545950455F4552520100000000000D0000
      00543030315F494E565F545950450100000000000D000000435553545F4E414D
      455F4552520100000000000D00000053454C4C5F4E414D455F45525201000000
      00000F000000543030315F524F575F5052454649580100000000000D00000054
      3030315F4F574E5F4F5045520100000000000D000000543032365F5345435F52
      45474E0100000000000C000000435553545F545950455F49440100000000000C
      00000053454C4C5F545950455F49440100000000000B0000004953535545525F
      4E414D45010000000000110000004953535545525F434F554E5452595F494401
      00000000000E0000004953535545525F434F554E5452590100000000000B0000
      004953535545525F545950450100000000000C000000543031325F49445F4355
      53540100000000000C000000543031325F49445F53454C4C010000000000}
    Top = 287
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
    end
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
    end
    object odsListT001_ROW_PREFIX: TIntegerField
      FieldName = 'T001_ROW_PREFIX'
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_PERCENT: TFloatField
      FieldName = 'T001_PERCENT'
      DisplayFormat = '##0.000000'
    end
    object odsListT001_OP_CR_DESC: TStringField
      FieldName = 'T001_OP_CR_DESC'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
      DisplayFormat = '### ### ### ##0.000000'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.000000'
    end
    object odsListCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      Size = 255
    end
    object odsListCUST_INN: TStringField
      FieldName = 'CUST_INN'
      Size = 255
    end
    object odsListCUST_TYPE: TStringField
      FieldName = 'CUST_TYPE'
      Size = 50
    end
    object odsListSELL_NAME: TStringField
      FieldName = 'SELL_NAME'
      Size = 255
    end
    object odsListSELL_INN: TStringField
      FieldName = 'SELL_INN'
      Size = 255
    end
    object odsListSELL_TYPE: TStringField
      FieldName = 'SELL_TYPE'
      Size = 50
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT001_CR_DESC: TStringField
      FieldName = 'T001_CR_DESC'
      Size = 255
    end
    object odsListT001_COMMENT: TStringField
      FieldName = 'T001_COMMENT'
      Size = 1024
    end
    object odsListT001_N8: TFloatField
      FieldName = 'T001_N8'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_11: TFloatField
      FieldName = 'T001_11'
    end
    object odsListT001_N99: TFloatField
      FieldName = 'T001_N99'
    end
    object odsListT001_10: TFloatField
      FieldName = 'T001_10'
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Size = 50
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
    end
    object odsListT002_BANK_NAME: TStringField
      FieldName = 'T002_BANK_NAME'
      Size = 250
    end
    object odsListT001_OP_YEAR: TStringField
      FieldName = 'T001_OP_YEAR'
      Size = 4
    end
    object odsListT001_OP_MONTH: TStringField
      FieldName = 'T001_OP_MONTH'
      Size = 255
    end
    object odsListT001_PRICE_USD: TFloatField
      FieldName = 'T001_PRICE_USD'
      DisplayFormat = '### ### ### ##0.000000'
    end
    object odsListT001_PRICE: TFloatField
      FieldName = 'T001_PRICE'
      DisplayFormat = '### ### ### ##0.000000'
    end
    object odsListT001_MOD_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_MOD_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.000000'
    end
    object odsListT001_INV_TYPE: TIntegerField
      FieldName = 'T001_INV_TYPE'
    end
    object odsListT001_INV_TYPE_DESCR: TStringField
      FieldName = 'T001_INV_TYPE_DESCR'
      Size = 15
    end
    object odsListT001_REPO_DATE: TDateTimeField
      FieldName = 'T001_REPO_DATE'
    end
    object odsListT001_DPB_COMMENT: TStringField
      FieldName = 'T001_DPB_COMMENT'
      Size = 255
    end
    object odsListC22_NAME: TStringField
      FieldName = 'C22_NAME'
      Size = 1000
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
    end
    object odsListT001_CR_ID: TStringField
      FieldName = 'T001_CR_ID'
      Size = 3
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListOP_TYPE_ERR: TFloatField
      FieldName = 'OP_TYPE_ERR'
    end
    object odsListSEC_TYPE_ERR: TFloatField
      FieldName = 'SEC_TYPE_ERR'
    end
    object odsListCUST_NAME_ERR: TFloatField
      FieldName = 'CUST_NAME_ERR'
    end
    object odsListSELL_NAME_ERR: TFloatField
      FieldName = 'SELL_NAME_ERR'
    end
    object odsListT001_OWN_OPER: TIntegerField
      FieldName = 'T001_OWN_OPER'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListCUST_TYPE_ID: TFloatField
      FieldName = 'CUST_TYPE_ID'
    end
    object odsListSELL_TYPE_ID: TFloatField
      FieldName = 'SELL_TYPE_ID'
    end
    object odsListISSUER_NAME: TStringField
      FieldName = 'ISSUER_NAME'
      Size = 255
    end
    object odsListISSUER_COUNTRY_ID: TStringField
      FieldName = 'ISSUER_COUNTRY_ID'
      Size = 3
    end
    object odsListISSUER_COUNTRY: TStringField
      FieldName = 'ISSUER_COUNTRY'
      Size = 250
    end
    object odsListISSUER_TYPE: TFloatField
      FieldName = 'ISSUER_TYPE'
    end
    object odsListT012_ID_CUST: TFloatField
      FieldName = 'T012_ID_CUST'
    end
    object odsListT012_ID_SELL: TFloatField
      FieldName = 'T012_ID_SELL'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 281
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Hand_Correct_405.P_T001_Sum_P2_Add ('
      '    :T001_ID,'
      '    :T002_ID,'
      '    :T001_PART_ID,'
      '    :T001_ROW_PREFIX,'
      '    :T001_ROW_PRFX,'
      '    :T001_ROW_NUM,'
      '    :T001_DATE_OP,'
      '    :T001_OP_ID,'
      '    :T001_OP_COUNT,'
      '    :T001_OP_PAY_ID,'
      '    :T001_OP_CR_ID,'
      '    :T001_OP_SUM,'
      '    :T001_CR_ID,'
      '    :T001_INV_TYPE,'
      '    :T001_DPB_COMMENT,'
      '    :T001_PROCESSED,'
      '    :T001_REMAINS_TYPE,'
      '    :ISSUER_NAME,'
      '    :ISSUER_COUNTRY_ID,'
      '    :ISSUER_TYPE,'
      '    :T027_SEC_TYPE,'
      '    :T026_SEC_REGN,'
      '    :CUST_NAME,'
      '    :CUST_INN,'
      '    :CUST_TYPE_ID,'
      '    :SELL_NAME,'
      '    :SELL_INN,'
      '    :SELL_TYPE_ID,'
      '    :USER'
      '    );'
      'END;')
    Variables.Data = {
      030000001D000000080000003A543030325F4944040000000000000000000000
      0D0000003A543030315F504152545F49440400000000000000000000000D0000
      003A543030315F444154455F4F500C00000000000000000000000B0000003A54
      3030315F4F505F49440400000000000000000000000E0000003A543030315F4F
      505F434F554E540400000000000000000000000E0000003A543030315F4F505F
      43525F49440500000000000000000000000C0000003A543030315F4F505F5355
      4D0400000000000000000000000B0000003A543030315F43525F494405000000
      0000000000000000100000003A543030315F524F575F50524546495804000000
      00000000000000000E0000003A543030315F524F575F50524658050000000000
      0000000000000D0000003A543030315F524F575F4E554D040000000000000000
      0000000E0000003A543030315F494E565F545950450400000000000000000000
      00110000003A543030315F4450425F434F4D4D454E5405000000000000000000
      00000F0000003A543030315F50524F4345535345440400000000000000000000
      00120000003A543030315F52454D41494E535F54595045040000000000000000
      0000000F0000003A543030315F4F505F5041595F494404000000000000000000
      00000C0000003A4953535545525F4E414D450500000000000000000000001200
      00003A4953535545525F434F554E5452595F4944050000000000000000000000
      0E0000003A543032365F5345435F5245474E0500000000000000000000000A00
      00003A435553545F4E414D45050000000000000000000000090000003A435553
      545F494E4E0500000000000000000000000D0000003A435553545F545950455F
      49440400000000000000000000000A0000003A53454C4C5F4E414D4505000000
      0000000000000000090000003A53454C4C5F494E4E0500000000000000000000
      000D0000003A53454C4C5F545950455F49440400000000000000000000000500
      00003A555345520500000000000000000000000E0000003A543032375F534543
      5F54595045050000000000000000000000080000003A543030315F4944040000
      0000000000000000000C0000003A4953535545525F5459504504000000000000
      0000000000}
    Top = 290
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Hand_Correct_405.P_T001_Sum_P2_Update ('
      '    :T001_ID,'
      '    :T002_ID,'
      '    :T001_PART_ID,'
      '    :T001_ROW_PREFIX,'
      '    :T001_ROW_PRFX,'
      '    :T001_ROW_NUM,'
      '    :T001_DATE_OP,'
      '    :T001_OP_ID,'
      '    :T001_OP_COUNT,'
      '    :T001_OP_PAY_ID,'
      '    :T001_OP_CR_ID,'
      '    :T001_OP_SUM,'
      '    :T001_CR_ID,'
      '    :T001_INV_TYPE,'
      '    :T001_DPB_COMMENT,'
      '    :T001_PROCESSED,'
      '    :T001_REMAINS_TYPE,'
      '    :T030_ID,'
      '    :ISSUER_NAME,'
      '    :ISSUER_COUNTRY_ID,'
      '    :ISSUER_TYPE,'
      '    :T027_SEC_TYPE,'
      '    :T026_SEC_REGN,'
      '    :T012_ID_CUST,'
      '    :CUST_NAME,'
      '    :CUST_INN,'
      '    :CUST_TYPE_ID,'
      '    :T012_ID_SELL,'
      '    :SELL_NAME,'
      '    :SELL_INN,'
      '    :SELL_TYPE_ID,'
      '    :USER'
      '    );'
      'END;')
    Variables.Data = {
      0300000020000000080000003A543030325F4944040000000000000000000000
      0D0000003A543030315F504152545F4944040000000000000000000000100000
      003A543030315F524F575F5052454649580400000000000000000000000E0000
      003A543030315F524F575F505246580500000000000000000000000D0000003A
      543030315F524F575F4E554D0400000000000000000000000D0000003A543030
      315F444154455F4F500C00000000000000000000000B0000003A543030315F4F
      505F49440400000000000000000000000E0000003A543030315F4F505F434F55
      4E540400000000000000000000000F0000003A543030315F4F505F5041595F49
      440400000000000000000000000E0000003A543030315F4F505F43525F494405
      00000000000000000000000C0000003A543030315F4F505F53554D0400000000
      000000000000000B0000003A543030315F43525F494405000000000000000000
      0000080000003A543033305F49440400000000000000000000000E0000003A54
      3030315F494E565F54595045040000000000000000000000110000003A543030
      315F4450425F434F4D4D454E540500000000000000000000000F0000003A5430
      30315F50524F434553534544040000000000000000000000120000003A543030
      315F52454D41494E535F54595045040000000000000000000000080000003A54
      3030315F49440400000000000000000000000C0000003A4953535545525F4E41
      4D45050000000000000000000000120000003A4953535545525F434F554E5452
      595F49440500000000000000000000000E0000003A543032365F5345435F5245
      474E0500000000000000000000000A0000003A435553545F4E414D4505000000
      0000000000000000090000003A435553545F494E4E0500000000000000000000
      000D0000003A435553545F545950455F49440400000000000000000000000A00
      00003A53454C4C5F4E414D45050000000000000000000000090000003A53454C
      4C5F494E4E0500000000000000000000000D0000003A53454C4C5F545950455F
      4944040000000000000000000000050000003A55534552050000000000000000
      0000000E0000003A543032375F5345435F545950450500000000000000000000
      000C0000003A4953535545525F545950450400000000000000000000000D0000
      003A543031325F49445F435553540400000000000000000000000D0000003A54
      3031325F49445F53454C4C040000000000000000000000}
    Top = 326
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Hand_Correct_405.p_t001_sum_delete(:T001_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
    Top = 366
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 348
  end
  object odsCount: TOracleDataSet
    SQL.Strings = (
      'SELECT count(*) AS COUNT_STR,'
      '       SUM(T001_OP_SUM_CROSS) OPS_SUM_CROSS,'
      '       SUM(T001_OP_COUNT) OPS_COUNT'
      'FROM ('
      'SELECT *'
      'FROM V_T001_SUM'
      '     )')
    QBEDefinition.QBEFieldDefs = {
      040000000300000009000000434F554E545F5354520100000000000D0000004F
      50535F53554D5F43524F5353010000000000090000004F50535F434F554E5401
      0000000000}
    Session = dmMain.OracleSession
    Left = 416
    Top = 296
    object odsCountCOUNT_STR: TFloatField
      FieldName = 'COUNT_STR'
      DisplayFormat = '### ### ### ##0'
    end
    object odsCountOPS_SUM_CROSS: TFloatField
      FieldName = 'OPS_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.000000'
    end
    object odsCountOPS_COUNT: TFloatField
      FieldName = 'OPS_COUNT'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object dsCount: TDataSource
    DataSet = odsCount
    Left = 456
    Top = 296
  end
  object oqMaxNum: TOracleQuery
    SQL.Strings = (
      'select max(T001_ROW_NUM)+1 as maxnum'
      'from   T001_SUM'
      'where  T002_ID = :T002_ID'
      'and    T001_ROW_PREFIX = :T001_ROW_PREFIX')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543030325F4944040000000000000000000000
      100000003A543030315F524F575F505245464958040000000000000000000000}
    Left = 416
    Top = 344
  end
  object oqClone: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Hand_Correct_405.p_t001_sum_clone( :T001_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
    Left = 456
    Top = 344
  end
end
