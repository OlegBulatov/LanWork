inherited B000_Opers11: TB000_Opers11
  Width = 1100
  inherited xxxDBGrid: TxxxDBGrid
    Top = 119
    Width = 1100
    Height = 284
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 6
            Caption = 'Главная эмиссия'
          end
          item
            FirstCol = 7
            LastCol = 14
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 15
            LastCol = 19
            Caption = 'Дополнительно'
          end
          item
            FirstCol = 20
            LastCol = 28
            Caption = 'Депозитарий'
          end
          item
            FirstCol = 29
            LastCol = 37
            Caption = 'Вышестоящий депозитарий'
          end
          item
            FirstCol = 38
            LastCol = 43
            Caption = 'К-во ц.б. с обременением или ограничением распоряжения, шт.'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 39
            LastCol = 43
            Caption = 'из них:'
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
        Title.Caption = 'Рег. №'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 100
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
        Width = 75
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMIT_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 91
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
        Title.Caption = 'Рег. №'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISIN'
        PickList.Strings = ()
        Width = 92
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
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_ST_USD'
        PickList.Strings = ()
        Title.Caption = 'Номинал в $'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOL_CB'
        PickList.Strings = ()
        Title.Caption = 'Кол-во ц.б.'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DK_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIZ_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода номинального держателя - нерезидента'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DK_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DK_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DK_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DK_LICPU'
        PickList.Strings = ()
        Title.Caption = 'Номер лицензии'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DK_PRIZ'
        PickList.Strings = ()
        Title.Caption = 'Признак'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DK_LORO'
        PickList.Strings = ()
        Title.Caption = 'Номер счета ЛОРО'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_PRIZ'
        PickList.Strings = ()
        Title.Caption = 'Признак'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIZ_ORG_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода вышестоящего депозитария - нерезидента'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 63
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
        Title.Caption = 'Код страны'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_LICPU'
        PickList.Strings = ()
        Title.Caption = 'Номер лицензии'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_NOSTRO'
        PickList.Strings = ()
        Title.Caption = 'Номер счета НОСТРО'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_ALL'
        PickList.Strings = ()
        Title.Caption = 'Всего'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_ZALOG'
        PickList.Strings = ()
        Title.Caption = 'в залоге'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_DEPO'
        PickList.Strings = ()
        Title.Caption = 'на счетах ДЕПО'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_CORP'
        PickList.Strings = ()
        Title.Caption = 'корпоративн. действия'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_OPER'
        PickList.Strings = ()
        Title.Caption = 'запрет на операции'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_ARREST'
        PickList.Strings = ()
        Title.Caption = 'под арестом'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T051_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер КО'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T051_BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название КО'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T051_NUMB_IN_YEA_DESC'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VID_SH'
        PickList.Strings = ()
        Title.Caption = 'Код счета'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'SEKTOR'
        PickList.Strings = ()
        Title.Caption = 'Сектор'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Title.Caption = 'Код периода'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T042_SHORT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Группа эмитента'
        Width = 120
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 73
    Width = 1100
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
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object btnInfo: TToolButton
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
    Width = 1100
    Height = 73
    inherited GroupBox1: TGroupBox
      Width = 528
      Height = 67
      inline BankFilter: TB002_BankFilter
        Left = 8
        Top = 38
        Width = 512
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline PeriodFilter: TB000_RemainsPeriodFilter
        Left = 8
        Top = 15
        TabOrder = 1
      end
    end
    inherited Button1: TButton
      Left = 542
      Top = 10
      Width = 74
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 98
    Width = 1100
    inherited Panel1: TPanel
      Left = 1073
    end
  end
  inherited actList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Top = 296
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход  к связыванию'
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
    Top = 235
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T051_ID,'
      '  T051_BANK_CODE,'
      '  T051_BANK_NAME,'
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
      '  T010_ISIN_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  T027_ID_MAIN,'
      '  T027_SEC_TYPE_MAIN,'
      '  T028_ID_MAIN,'
      '  T028_PARENT_ID,'
      '  T028_INN_MAIN,'
      '  T028_COUNTRY_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T025_SHOT_NAME_MAIN,'
      '  DK_NAME,'
      '  DK_INN,'
      '  DK_TIN,'
      '  DK_KPP,'
      '  DK_OGRN,'
      '  DK_STRAN,'
      '  DK_LICPU,'
      '  DK_PRIZ,'
      '  DK_LORO,'
      '  EMIT_TIN,'
      '  EMIT_KPP,'
      '  EMIT_OGRN,'
      '  EMIT_STRAN,'
      '  ISIN,'
      '  KODVAL_CB,'
      '  N_ST,'
      '  KOL_CB,'
      '  ORG_NAME,'
      '  ORG_PRIZ,'
      '  ORG_INN,'
      '  ORG_TIN,'
      '  ORG_KPP,'
      '  ORG_OGRN,'
      '  ORG_STRAN,'
      '  ORG_LICPU,'
      '  N_ST_USD,'
      '  ORG_NOSTRO,'
      '  VID_SH,'
      '  SEKTOR,'
      '  T042_SHORT_NAME,'
      '  STOP_ALL,'
      '  STOP_ZALOG,'
      '  STOP_DEPO,'
      '  STOP_CORP,'
      '  STOP_OPER,'
      '  STOP_ARREST,'
      '  PRIZ_NREZ,'
      '  PRIZ_EMIT_NREZ,'
      '  PRIZ_ORG_NREZ'
      'from V_405_DBF_711_SUM_11')
    QBEDefinition.QBEFieldDefs = {
      040000004500000007000000543035315F49440100000000000E000000543035
      315F42414E4B5F434F44450100000000000E000000543035315F42414E4B5F4E
      414D450100000000000A000000543035315F4B505F49440100000000000E0000
      00543035315F4C4F41445F4441544501000000000007000000543035355F4944
      01000000000010000000543035315F4E554D425F494E5F594541010000000000
      15000000543035315F4E554D425F494E5F5945415F4445534301000000000010
      000000543035315F5245504F52545F444154450100000000000700000049535F
      4D41494E01000000000007000000543033305F49440100000000000D00000054
      3032365F5345435F5245474E01000000000007000000543032375F4944010000
      0000000D000000543032375F5345435F54595045010000000000070000005430
      32385F494401000000000008000000543032385F494E4E0100000000000F0000
      00543032385F434F554E5452595F49440100000000000E000000543032385F53
      484F545F4E414D450100000000000E000000543032355F53484F545F4E414D45
      0100000000000C000000543033305F49445F4D41494E01000000000012000000
      543032365F5345435F5245474E5F4D41494E0100000000000C00000054303237
      5F49445F4D41494E01000000000012000000543032375F5345435F545950455F
      4D41494E0100000000000C000000543032385F49445F4D41494E010000000000
      0E000000543032385F504152454E545F49440100000000000D00000054303238
      5F494E4E5F4D41494E01000000000014000000543032385F434F554E5452595F
      49445F4D41494E01000000000013000000543032385F53484F545F4E414D455F
      4D41494E01000000000013000000543032355F53484F545F4E414D455F4D4149
      4E01000000000007000000444B5F4E414D4501000000000006000000444B5F49
      4E4E01000000000006000000444B5F54494E01000000000006000000444B5F4B
      505001000000000007000000444B5F4F47524E01000000000008000000444B5F
      535452414E01000000000008000000444B5F4C49435055010000000000070000
      00444B5F5052495A01000000000007000000444B5F4C4F524F01000000000008
      000000454D49545F54494E01000000000008000000454D49545F4B5050010000
      00000009000000454D49545F4F47524E0100000000000A000000454D49545F53
      5452414E010000000000040000004953494E010000000000090000004B4F4456
      414C5F4342010000000000040000004E5F5354010000000000060000004B4F4C
      5F4342010000000000080000004F52475F4E414D45010000000000080000004F
      52475F5052495A010000000000070000004F52475F494E4E0100000000000700
      00004F52475F54494E010000000000070000004F52475F4B5050010000000000
      080000004F52475F4F47524E010000000000090000004F52475F535452414E01
      0000000000090000004F52475F4C49435055010000000000080000004E5F5354
      5F5553440100000000000A0000004F52475F4E4F5354524F0100000000000600
      00005649445F53480100000000000600000053454B544F520100000000000F00
      0000543034325F53484F52545F4E414D450100000000000800000053544F505F
      414C4C0100000000000A00000053544F505F5A414C4F47010000000000090000
      0053544F505F4445504F0100000000000900000053544F505F434F5250010000
      0000000900000053544F505F4F5045520100000000000B00000053544F505F41
      52524553540100000000000E000000543031305F4953494E5F4D41494E010000
      000000090000005052495A5F4E52455A0100000000000E0000005052495A5F45
      4D49545F4E52455A0100000000000D0000005052495A5F4F52475F4E52455A01
      0000000000}
    Top = 233
    object odsListT051_ID: TFloatField
      FieldName = 'T051_ID'
    end
    object odsListT051_BANK_CODE: TStringField
      FieldName = 'T051_BANK_CODE'
      Size = 9
    end
    object odsListT051_BANK_NAME: TStringField
      FieldName = 'T051_BANK_NAME'
      Size = 250
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
    object odsListDK_NAME: TStringField
      FieldName = 'DK_NAME'
      Size = 255
    end
    object odsListDK_INN: TStringField
      FieldName = 'DK_INN'
      Size = 12
    end
    object odsListDK_TIN: TStringField
      FieldName = 'DK_TIN'
      Size = 30
    end
    object odsListDK_KPP: TStringField
      FieldName = 'DK_KPP'
      Size = 9
    end
    object odsListDK_OGRN: TStringField
      FieldName = 'DK_OGRN'
      Size = 15
    end
    object odsListDK_STRAN: TFloatField
      FieldName = 'DK_STRAN'
    end
    object odsListDK_LICPU: TStringField
      FieldName = 'DK_LICPU'
      Size = 50
    end
    object odsListDK_PRIZ: TStringField
      FieldName = 'DK_PRIZ'
      Size = 1
    end
    object odsListDK_LORO: TStringField
      FieldName = 'DK_LORO'
      Size = 50
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
    object odsListKOL_CB: TFloatField
      FieldName = 'KOL_CB'
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
    object odsListN_ST_USD: TFloatField
      FieldName = 'N_ST_USD'
    end
    object odsListORG_NOSTRO: TStringField
      FieldName = 'ORG_NOSTRO'
      Size = 50
    end
    object odsListVID_SH: TStringField
      FieldName = 'VID_SH'
      Size = 1
    end
    object odsListSEKTOR: TStringField
      FieldName = 'SEKTOR'
      Size = 1
    end
    object odsListT042_SHORT_NAME: TStringField
      FieldName = 'T042_SHORT_NAME'
      Size = 255
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
    object odsListT010_ISIN_MAIN: TStringField
      FieldName = 'T010_ISIN_MAIN'
      Size = 255
    end
    object odsListPRIZ_NREZ: TStringField
      FieldName = 'PRIZ_NREZ'
      Size = 3
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
    Top = 227
  end
  inherited oqAdd: TOracleQuery
    Top = 236
  end
  inherited oqUpdate: TOracleQuery
    Top = 272
  end
  inherited oqDelete: TOracleQuery
    Top = 312
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 294
  end
end
