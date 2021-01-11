inherited B000_Opers13: TB000_Opers13
  Width = 1016
  inherited xxxDBGrid: TxxxDBGrid
    Top = 118
    Width = 1016
    Height = 285
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 5
            Caption = 'Главная эмиссия'
          end
          item
            FirstCol = 6
            LastCol = 17
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 17
            LastCol = 18
            Caption = 'Дополнительно'
          end
          item
            FirstCol = 19
            LastCol = 26
            Caption = 'Ценные бумаги, принадлежащие КО на правах собственности'
          end
          item
            FirstCol = 27
            LastCol = 30
            Caption = 'Кол-во ц.б. на иных счетах КО'
          end
          item
            FirstCol = 31
            LastCol = 36
            Caption = 'К-во ц.б., в отношении которых  зафиксировано обременение'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 21
            LastCol = 26
            Caption = 'Из них кол-во, вложения в которые отсутствуют'
          end>
      end
      item
        Headers = <>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'IS_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Распозн.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_ID_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIZ_EMIT_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода эмитента - нерезидента'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMIT_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMIT_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISIN'
        PickList.Strings = ()
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KODVAL_CB'
        PickList.Strings = ()
        Title.Caption = 'Код вал. ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_ST'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_ST_USD'
        PickList.Strings = ()
        Title.Caption = 'Номинал в $'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMIT_TIN'
        PickList.Strings = ()
        Title.Caption = 'TIN'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_KOL'
        PickList.Strings = ()
        Title.Caption = 'Кол-во ц.б. всего'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_KOL_OB'
        PickList.Strings = ()
        Title.Caption = 'Кол-во ц.б. основного баланса'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_REPO'
        PickList.Strings = ()
        Title.Caption = 'Приобр. по сделке РЕПО'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_ZAJM'
        PickList.Strings = ()
        Title.Caption = 'Получ. по сделкам займа'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_NOT_OBZ'
        PickList.Strings = ()
        Title.Caption = 'Обязательства отсутствуют'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_BEZNAD'
        PickList.Strings = ()
        Title.Caption = 'Безнадежные долги'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Зачислены ошибочно'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_INOE'
        PickList.Strings = ()
        Title.Caption = 'По другим причинам'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_DEPO_UP'
        PickList.Strings = ()
        Title.Caption = 'На счетах ДЕПО доверит. управл.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_DEPO_EM'
        PickList.Strings = ()
        Title.Caption = 'На казнач. счетах ДЕПО эмитента'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_ZALOGD'
        PickList.Strings = ()
        Title.Caption = 'На счетах залогодержат.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB_EMIS'
        PickList.Strings = ()
        Title.Caption = 'На эмиссионных счетах'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_ALL'
        PickList.Strings = ()
        Title.Caption = 'Всего'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_ZALOG'
        PickList.Strings = ()
        Title.Caption = 'В залоге'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_DEPO'
        PickList.Strings = ()
        Title.Caption = 'На торговых (клиринговых) счетах ДЕПО'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_CORP'
        PickList.Strings = ()
        Title.Caption = 'Корпоративн. действия'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_OPER'
        PickList.Strings = ()
        Title.Caption = 'Запрет на операции'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_ARREST'
        PickList.Strings = ()
        Title.Caption = 'Под арестом'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIZ_ORG_NREZ'
        PickList.Strings = ()
        Title.Caption = 
          'Признак кода организации, ведущей учет прав кредитной организаци' +
          'и на ценные бумаги нерезидента'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_PRIZ'
        PickList.Strings = ()
        Title.Caption = 'Признак'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_LICPU'
        PickList.Strings = ()
        Title.Caption = 'Лицензия'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T051_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер КО'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T051_NUMB_IN_YEA_DESC'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Title.Caption = 'Код периода.'
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Top = 72
    Width = 1016
    inherited tlbList: TToolBar
      Width = 242
    end
    inherited tlbExcel: TToolBar
      Left = 319
    end
    inherited tlbSeach: TToolBar
      Left = 353
      Width = 67
    end
    inherited tlbFilter: TToolBar
      Left = 420
    end
    inherited tlbSelect: TToolBar
      Left = 501
      Width = 289
      ButtonHeight = 22
      ButtonWidth = 101
      ShowCaptions = True
      Visible = True
      object ToolButton2: TToolButton
        Left = 83
        Top = 0
        Action = actInfo
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 180
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 188
        Top = 0
        Action = actGoToLink
        ImageIndex = 13
      end
    end
  end
  inherited paFilters: TPanel
    Width = 1016
    Height = 72
    inherited GroupBox1: TGroupBox
      Width = 528
      Height = 66
      inline PeriodFilter: TB000_RemainsPeriodFilter
        Left = 8
        Top = 15
      end
      inline BankFilter: TB002_BankFilter
        Left = 8
        Top = 38
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
    end
    inherited Button1: TButton
      Left = 542
      Top = 10
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 97
    Width = 1016
    inherited Panel1: TPanel
      Left = 989
    end
  end
  inherited actList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 50
    Top = 247
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход к связыванию'
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
    object actInfo: TAction
      Caption = 'Информация'
      Hint = 'Источник записи'
      ImageIndex = 21
      OnExecute = actInfoExecute
      OnUpdate = actInfoUpdate
    end
  end
  inherited dsList: TDataSource
    Left = 267
    Top = 186
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T051_ID,'
      '  T051_BANK_CODE,'
      '  T051_KP_ID,'
      '  T051_LOAD_DATE,'
      '  T055_ID,'
      '  T051_NUMB_IN_YEA,'
      '  T051_NUMB_IN_YEA_DESC,'
      '  T051_REPORT_DATE,'
      '  IS_MAIN,'
      '  T030_ID,'
      '  T026_SEC_REGN,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T028_ID,'
      '  T028_INN,'
      '  T028_COUNTRY_ID,'
      '  T028_SHOT_NAME,'
      '  T025_SHOT_NAME,'
      '  T030_ID_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  T027_ID_MAIN,'
      '  T027_SEC_TYPE_MAIN,'
      '  T028_ID_MAIN,'
      '  T028_PARENT_ID,'
      '  T028_INN_MAIN,'
      '  T028_COUNTRY_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T025_SHOT_NAME_MAIN,'
      '  EMIT_TIN,'
      '  EMIT_KPP,'
      '  EMIT_OGRN,'
      '  EMIT_STRAN,'
      '  ISIN,'
      '  KODVAL_CB,'
      '  N_ST,'
      '  N_ST_USD,'
      '  CB_KOL,'
      '  CB_KOL_OB,'
      '  CB_REPO,'
      '  CB_ZAJM,'
      '  CB_NOT_OBZ,'
      '  CB_BEZNAD,'
      '  CB_ERROR,'
      '  CB_INOE,'
      '  CB_DEPO_UP,'
      '  CB_DEPO_EM,'
      '  CB_ZALOGD,'
      '  CB_EMIS,'
      '  ORG_NAME,'
      '  ORG_PRIZ,'
      '  ORG_INN,'
      '  ORG_TIN,'
      '  ORG_KPP,'
      '  ORG_OGRN,'
      '  ORG_STRAN,'
      '  ORG_LICPU,'
      '  STOP_ALL,'
      '  STOP_ZALOG,'
      '  STOP_DEPO,'
      '  STOP_CORP,'
      '  STOP_OPER,'
      '  STOP_ARREST,'
      '  PRIZ_EMIT_NREZ,'
      '  PRIZ_ORG_NREZ'
      'from V_405_DBF_711_SUM_13')
    QBEDefinition.QBEFieldDefs = {
      040000004000000007000000543035315F49440100000000000E000000543035
      315F42414E4B5F434F44450100000000000A000000543035315F4B505F494401
      00000000000E000000543035315F4C4F41445F44415445010000000000070000
      00543035355F494401000000000010000000543035315F4E554D425F494E5F59
      454101000000000015000000543035315F4E554D425F494E5F5945415F444553
      4301000000000010000000543035315F5245504F52545F444154450100000000
      000700000049535F4D41494E01000000000007000000543033305F4944010000
      0000000D000000543032365F5345435F5245474E010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      000007000000543032385F494401000000000008000000543032385F494E4E01
      00000000000F000000543032385F434F554E5452595F49440100000000000E00
      0000543032385F53484F545F4E414D450100000000000E000000543032355F53
      484F545F4E414D450100000000000C000000543033305F49445F4D41494E0100
      0000000012000000543032365F5345435F5245474E5F4D41494E010000000000
      0C000000543032375F49445F4D41494E01000000000012000000543032375F53
      45435F545950455F4D41494E0100000000000C000000543032385F49445F4D41
      494E0100000000000E000000543032385F504152454E545F4944010000000000
      0D000000543032385F494E4E5F4D41494E01000000000014000000543032385F
      434F554E5452595F49445F4D41494E01000000000013000000543032385F5348
      4F545F4E414D455F4D41494E01000000000013000000543032355F53484F545F
      4E414D455F4D41494E01000000000008000000454D49545F54494E0100000000
      0008000000454D49545F4B505001000000000009000000454D49545F4F47524E
      0100000000000A000000454D49545F535452414E010000000000040000004953
      494E010000000000090000004B4F4456414C5F4342010000000000040000004E
      5F5354010000000000080000004E5F53545F5553440100000000000600000043
      425F4B4F4C0100000000000900000043425F4B4F4C5F4F420100000000000700
      000043425F5245504F0100000000000700000043425F5A414A4D010000000000
      0A00000043425F4E4F545F4F425A0100000000000900000043425F42455A4E41
      440100000000000800000043425F4552524F520100000000000700000043425F
      494E4F450100000000000A00000043425F4445504F5F55500100000000000A00
      000043425F4445504F5F454D0100000000000900000043425F5A414C4F474401
      00000000000700000043425F454D4953010000000000080000004F52475F4E41
      4D45010000000000080000004F52475F5052495A010000000000070000004F52
      475F494E4E010000000000070000004F52475F54494E01000000000007000000
      4F52475F4B5050010000000000080000004F52475F4F47524E01000000000009
      0000004F52475F535452414E010000000000090000004F52475F4C4943505501
      00000000000800000053544F505F414C4C0100000000000A00000053544F505F
      5A414C4F470100000000000900000053544F505F4445504F0100000000000900
      000053544F505F434F52500100000000000900000053544F505F4F5045520100
      000000000B00000053544F505F4152524553540100000000000E000000505249
      5A5F454D49545F4E52455A0100000000000D0000005052495A5F4F52475F4E52
      455A010000000000}
    BeforeOpen = odsListBeforeOpen
    Left = 227
    Top = 184
    object odsListT051_ID: TFloatField
      FieldName = 'T051_ID'
    end
    object odsListT051_BANK_CODE: TStringField
      FieldName = 'T051_BANK_CODE'
      Size = 9
    end
    object odsListT051_KP_ID: TIntegerField
      FieldName = 'T051_KP_ID'
    end
    object odsListT051_LOAD_DATE: TDateTimeField
      FieldName = 'T051_LOAD_DATE'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT051_NUMB_IN_YEA: TStringField
      FieldName = 'T051_NUMB_IN_YEA'
      Size = 5
    end
    object odsListT051_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T051_NUMB_IN_YEA_DESC'
      Size = 50
    end
    object odsListT051_REPORT_DATE: TDateTimeField
      FieldName = 'T051_REPORT_DATE'
    end
    object odsListIS_MAIN: TStringField
      FieldName = 'IS_MAIN'
      Size = 3
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Size = 255
    end
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Size = 265
    end
    object odsListT027_ID_MAIN: TFloatField
      FieldName = 'T027_ID_MAIN'
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Size = 255
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT028_INN_MAIN: TStringField
      FieldName = 'T028_INN_MAIN'
      Size = 255
    end
    object odsListT028_COUNTRY_ID_MAIN: TStringField
      FieldName = 'T028_COUNTRY_ID_MAIN'
      Size = 255
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT025_SHOT_NAME_MAIN: TStringField
      FieldName = 'T025_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListEMIT_TIN: TStringField
      FieldName = 'EMIT_TIN'
      Size = 30
    end
    object odsListEMIT_KPP: TStringField
      FieldName = 'EMIT_KPP'
      Size = 9
    end
    object odsListEMIT_OGRN: TStringField
      FieldName = 'EMIT_OGRN'
      Size = 15
    end
    object odsListEMIT_STRAN: TFloatField
      FieldName = 'EMIT_STRAN'
    end
    object odsListISIN: TStringField
      FieldName = 'ISIN'
      Size = 12
    end
    object odsListKODVAL_CB: TStringField
      FieldName = 'KODVAL_CB'
      Size = 3
    end
    object odsListN_ST: TFloatField
      FieldName = 'N_ST'
    end
    object odsListN_ST_USD: TFloatField
      FieldName = 'N_ST_USD'
    end
    object odsListCB_KOL: TFloatField
      FieldName = 'CB_KOL'
    end
    object odsListCB_KOL_OB: TFloatField
      FieldName = 'CB_KOL_OB'
    end
    object odsListCB_REPO: TFloatField
      FieldName = 'CB_REPO'
    end
    object odsListCB_ZAJM: TFloatField
      FieldName = 'CB_ZAJM'
    end
    object odsListCB_NOT_OBZ: TFloatField
      FieldName = 'CB_NOT_OBZ'
    end
    object odsListCB_BEZNAD: TFloatField
      FieldName = 'CB_BEZNAD'
    end
    object odsListCB_ERROR: TFloatField
      FieldName = 'CB_ERROR'
    end
    object odsListCB_INOE: TFloatField
      FieldName = 'CB_INOE'
    end
    object odsListCB_DEPO_UP: TFloatField
      FieldName = 'CB_DEPO_UP'
    end
    object odsListCB_DEPO_EM: TFloatField
      FieldName = 'CB_DEPO_EM'
    end
    object odsListCB_ZALOGD: TFloatField
      FieldName = 'CB_ZALOGD'
    end
    object odsListCB_EMIS: TFloatField
      FieldName = 'CB_EMIS'
    end
    object odsListORG_NAME: TStringField
      FieldName = 'ORG_NAME'
      Size = 255
    end
    object odsListORG_PRIZ: TStringField
      FieldName = 'ORG_PRIZ'
      Size = 50
    end
    object odsListORG_INN: TStringField
      FieldName = 'ORG_INN'
      Size = 50
    end
    object odsListORG_TIN: TStringField
      FieldName = 'ORG_TIN'
      Size = 50
    end
    object odsListORG_KPP: TStringField
      FieldName = 'ORG_KPP'
      Size = 50
    end
    object odsListORG_OGRN: TStringField
      FieldName = 'ORG_OGRN'
      Size = 50
    end
    object odsListORG_STRAN: TStringField
      FieldName = 'ORG_STRAN'
      Size = 50
    end
    object odsListORG_LICPU: TStringField
      FieldName = 'ORG_LICPU'
      Size = 50
    end
    object odsListSTOP_ALL: TFloatField
      FieldName = 'STOP_ALL'
    end
    object odsListSTOP_ZALOG: TFloatField
      FieldName = 'STOP_ZALOG'
    end
    object odsListSTOP_DEPO: TFloatField
      FieldName = 'STOP_DEPO'
    end
    object odsListSTOP_CORP: TFloatField
      FieldName = 'STOP_CORP'
    end
    object odsListSTOP_OPER: TFloatField
      FieldName = 'STOP_OPER'
    end
    object odsListSTOP_ARREST: TFloatField
      FieldName = 'STOP_ARREST'
    end
    object odsListPRIZ_EMIT_NREZ: TStringField
      FieldName = 'PRIZ_EMIT_NREZ'
      Size = 3
    end
    object odsListPRIZ_ORG_NREZ: TStringField
      FieldName = 'PRIZ_ORG_NREZ'
      Size = 3
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 42
    Top = 178
  end
  inherited oqAdd: TOracleQuery
    Left = 313
    Top = 187
  end
  inherited oqUpdate: TOracleQuery
    Left = 313
    Top = 223
  end
  inherited oqDelete: TOracleQuery
    Left = 313
    Top = 263
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 227
    Top = 245
  end
end
