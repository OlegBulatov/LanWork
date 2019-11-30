inherited B000_Opers12: TB000_Opers12
  Width = 784
  Height = 571
  inherited xxxDBGrid: TxxxDBGrid
    Top = 209
    Width = 784
    Height = 362
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
            LastCol = 12
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 13
            LastCol = 19
            Caption = 'Дополнительно'
          end
          item
            FirstCol = 20
            LastCol = 26
            Caption = 'Вышестоящий депозитарий'
          end
          item
            FirstCol = 27
            LastCol = 32
            Caption = 'К-во ц.б. с обременениием или ограничением, шт.'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 28
            LastCol = 32
            Caption = 'из них:'
          end>
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
        FieldName = 'EMIT_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMIT_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 50
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
        Width = 50
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
        Title.Caption = 'Номинальная стоимость'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_ST_USD'
        PickList.Strings = ()
        Title.Caption = 'Стоимость в $'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VID_SH'
        PickList.Strings = ()
        Title.Caption = 'Вид счета'
        Width = 50
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
        FieldName = 'SEKTOR'
        PickList.Strings = ()
        Title.Caption = 'Сектор'
        Width = 50
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORG_LICPU'
        PickList.Strings = ()
        Title.Caption = 'Лицензия'
        Width = 70
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
        FieldName = 'DEPO_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Код страны владельца счета ДЕПО'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPO_COUNTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название страны владельца счета ДЕПО'
        Width = 80
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
        FieldName = 'T051_BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название КО'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T051_NUMB_IN_YEA_DESC'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_ID_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Код типа ц.б.'
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
        FieldName = 'T028_PARENT_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T030_TYPE_DESC'
        PickList.Strings = ()
        Title.Caption = 'Вид ц.б.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T042_SHORT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Группа эмитента'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_ID_MAIN'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Top = 184
    Width = 784
    inherited tlbSelect: TToolBar
      Width = 132
      ButtonHeight = 22
      ButtonWidth = 101
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actGoToLink
        ImageIndex = 13
      end
    end
  end
  inherited paFilters: TPanel
    Width = 784
    Height = 163
    inherited GroupBox1: TGroupBox
      Width = 528
      Height = 156
      inline PeriodFilter: TB000_RemainsPeriodFilter
        Left = 8
        Top = 14
      end
      inline BankFilter: TB002_BankFilter
        Left = 8
        Top = 37
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline SecTypeFilter: TC002_TypeSec
        Left = 8
        Top = 61
        Width = 512
        TabOrder = 2
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
          ListStyle = [lsChecked, lsSizeable]
        end
      end
      inline AccountFilter: TB004_AccountFilter
        Left = 8
        Top = 84
        Width = 512
        TabOrder = 3
        inherited lbCaption: TLabel
          Width = 50
          Caption = 'Вид счета'
        end
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline SectorFilter: TB004_SectorFilter
        Left = 8
        Top = 107
        Width = 512
        TabOrder = 4
        inherited lbCaption: TLabel
          Width = 95
          Caption = 'Сектор экономики'
        end
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
      inline IssuerGroupFilter: TG001_IssuerGroup
        Left = 8
        Top = 130
        Width = 512
        TabOrder = 5
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
    Top = 163
    Width = 784
    inherited Panel1: TPanel
      Left = 757
    end
  end
  inherited actList: TActionList
    Top = 438
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход к связыванию'
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 361
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
      '  VID_SH,'
      '  KOL_CB,'
      '  SEKTOR,'
      '  ORG_NAME,'
      '  ORG_PRIZ,'
      '  ORG_INN,'
      '  ORG_TIN,'
      '  ORG_KPP,'
      '  ORG_OGRN,'
      '  ORG_STRAN,'
      '  ORG_LICPU,'
      '  T030_TYPE_DESC,'
      '  T042_SHORT_NAME,'
      '  STOP_ALL,'
      '  STOP_ZALOG,'
      '  STOP_DEPO,'
      '  STOP_CORP,'
      '  STOP_OPER,'
      '  STOP_ARREST,'
      '  DEPO_COUNTRY,'
      '  DEPO_COUNTRY_NAME'
      'from V_405_DBF_711_SUM_12'
      
        'where Pk_405_Issuers.f_is_issuer_in_group(:T042_ID, T028_ID_MAIN' +
        ') = 1'
      '')
    Variables.Data = {
      0300000001000000080000003A543034325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000003A00000007000000543035315F49440100000000000E000000543035
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
      4E01000000000008000000454D49545F54494E01000000000008000000454D49
      545F4B505001000000000009000000454D49545F4F47524E0100000000000A00
      0000454D49545F535452414E010000000000040000004953494E010000000000
      090000004B4F4456414C5F4342010000000000040000004E5F53540100000000
      00080000004E5F53545F555344010000000000060000005649445F5348010000
      000000060000004B4F4C5F43420100000000000600000053454B544F52010000
      000000080000004F52475F4E414D45010000000000080000004F52475F505249
      5A010000000000070000004F52475F494E4E010000000000070000004F52475F
      54494E010000000000070000004F52475F4B5050010000000000080000004F52
      475F4F47524E010000000000090000004F52475F535452414E01000000000009
      0000004F52475F4C494350550100000000000E000000543033305F545950455F
      444553430100000000000F000000543034325F53484F52545F4E414D45010000
      0000000800000053544F505F414C4C0100000000000A00000053544F505F5A41
      4C4F470100000000000900000053544F505F4445504F01000000000009000000
      53544F505F434F52500100000000000900000053544F505F4F50455201000000
      00000B00000053544F505F4152524553540100000000000C0000004445504F5F
      434F554E545259010000000000110000004445504F5F434F554E5452595F4E41
      4D45010000000000}
    Top = 359
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
    object odsListVID_SH: TStringField
      FieldName = 'VID_SH'
      Size = 50
    end
    object odsListKOL_CB: TFloatField
      FieldName = 'KOL_CB'
    end
    object odsListSEKTOR: TStringField
      FieldName = 'SEKTOR'
      Size = 50
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
    object odsListT030_TYPE_DESC: TStringField
      FieldName = 'T030_TYPE_DESC'
      Size = 13
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
    object odsListDEPO_COUNTRY: TStringField
      FieldName = 'DEPO_COUNTRY'
      Size = 50
    end
    object odsListDEPO_COUNTRY_NAME: TStringField
      FieldName = 'DEPO_COUNTRY_NAME'
      Size = 250
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 16
    Top = 393
  end
  inherited oqAdd: TOracleQuery
    Top = 362
  end
  inherited oqUpdate: TOracleQuery
    Top = 398
  end
  inherited oqDelete: TOracleQuery
    Top = 438
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 185
    Top = 396
  end
end
