inherited B000_Opers14: TB000_Opers14
  Width = 1113
  inherited xxxDBGrid: TxxxDBGrid
    Top = 118
    Width = 1113
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
            LastCol = 10
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 24
            LastCol = 27
            Caption = 'Дополнительно'
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
        Title.Caption = 'Распознана'
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
        FieldName = 'SUM_CB'
        PickList.Strings = ()
        Title.Caption = 'Объем вложений, тыс.руб.'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KODVAL_CB'
        PickList.Strings = ()
        Title.Caption = 'Код валюты ц.б.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOL_CB'
        PickList.Strings = ()
        Title.Caption = 'Кол-во ц.б.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_ST'
        PickList.Strings = ()
        Title.Caption = 'Номинальная стоимость одной ц.б.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAL_STOIM'
        PickList.Strings = ()
        Title.Caption = 'Балансовая стоимость ц.б.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAL_NUM'
        PickList.Strings = ()
        Title.Caption = 'Номер бал. счета второго порядка'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NKD'
        PickList.Strings = ()
        Title.Caption = 'Накопленный купонный доход'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PER_MINUS'
        PickList.Strings = ()
        Title.Caption = 'Переоценка ц.б. - отрицательная'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PER_PLUS'
        PickList.Strings = ()
        Title.Caption = 'Переоценка ц.б. - положительная'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SRC_LEVEL'
        PickList.Strings = ()
        Title.Caption = 'Уровень в иерархии СС'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORY'
        PickList.Strings = ()
        Title.Caption = 'Категория качества'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESERV'
        PickList.Strings = ()
        Title.Caption = 'Резерв на возможные потери'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOD_VID'
        PickList.Strings = ()
        Title.Caption = 'Код вида деятельности эмитента'
        Visible = False
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
        FieldName = 'EMIT_TIN'
        PickList.Strings = ()
        Title.Caption = 'TIN'
        Width = 50
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
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Title.Caption = 'Код периода'
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Top = 72
    Width = 1113
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
    Width = 1113
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
    Width = 1113
    inherited Panel1: TPanel
      Left = 1086
    end
  end
  inherited actList: TActionList
    Top = 258
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход к связыванию'
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 197
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
      '  SUM_CB,'
      '  SUM_CB_USD,'
      '  BAL_NUM,'
      '  KODVAL_CB,'
      '  N_ST,'
      '  KOL_CB,'
      '  KOD_VID,'
      '  BAL_STOIM,'
      '  NKD,'
      '  PER_MINUS,'
      '  PER_PLUS,'
      '  SRC_LEVEL,'
      '  CATEGORY,'
      '  RESERV'
      'from V_405_DBF_711_SUM_14')
    QBEDefinition.QBEFieldDefs = {
      040000002F00000007000000543035315F49440100000000000E000000543035
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
      494E0100000000000600000053554D5F43420100000000000A00000053554D5F
      43425F5553440100000000000700000042414C5F4E554D010000000000090000
      004B4F4456414C5F4342010000000000040000004E5F53540100000000000600
      00004B4F4C5F4342010000000000070000004B4F445F56494401000000000009
      00000042414C5F53544F494D010000000000030000004E4B4401000000000009
      0000005045525F4D494E5553010000000000080000005045525F504C55530100
      00000000090000005352435F4C4556454C010000000000080000004341544547
      4F525901000000000006000000524553455256010000000000}
    BeforeOpen = odsListBeforeOpen
    Top = 195
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
    object odsListSUM_CB: TFloatField
      FieldName = 'SUM_CB'
    end
    object odsListSUM_CB_USD: TFloatField
      FieldName = 'SUM_CB_USD'
    end
    object odsListBAL_NUM: TStringField
      FieldName = 'BAL_NUM'
      Size = 50
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
    object odsListKOD_VID: TStringField
      FieldName = 'KOD_VID'
      Size = 3
    end
    object odsListBAL_STOIM: TFloatField
      FieldName = 'BAL_STOIM'
    end
    object odsListNKD: TFloatField
      FieldName = 'NKD'
    end
    object odsListPER_MINUS: TFloatField
      FieldName = 'PER_MINUS'
    end
    object odsListPER_PLUS: TFloatField
      FieldName = 'PER_PLUS'
    end
    object odsListSRC_LEVEL: TStringField
      FieldName = 'SRC_LEVEL'
      Size = 3
    end
    object odsListCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 3
    end
    object odsListRESERV: TFloatField
      FieldName = 'RESERV'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 189
  end
  inherited oqAdd: TOracleQuery
    Top = 198
  end
  inherited oqUpdate: TOracleQuery
    Top = 234
  end
  inherited oqDelete: TOracleQuery
    Top = 274
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 256
  end
end
