inherited F005_Opers13: TF005_Opers13
  Width = 698
  inherited xxxDBGrid: TxxxDBGrid
    Top = 116
    Width = 698
    Height = 287
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 1
            LastCol = 5
            Caption = 'Главная эмиссия'
          end
          item
            FirstCol = 6
            LastCol = 16
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 17
            LastCol = 24
            Caption = 'Ценные бумаги, принадлежащие КО на правах собственности'
          end
          item
            FirstCol = 25
            LastCol = 28
            Caption = 'Кол-во ц.б. на иных счетах КО'
          end
          item
            FirstCol = 29
            LastCol = 35
            Caption = 'Организация, ведущая учет прав организации на ценные бумаги'
          end
          item
            FirstCol = 36
            LastCol = 37
            Caption = 'Отчитывающаяся организация'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 18
            LastCol = 23
            Caption = 'Из них кол-во, вложения в которые отсутствуют'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'IS_LINKED'
        PickList.Strings = ()
        Title.Caption = 'Распозн'
        Width = 48
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
        FieldName = 'T028_COUNTRY_MAIN'
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
        Width = 105
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
        FieldName = 'T236_EMIT_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_EMIT_OGRN'
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
        FieldName = 'T236_EMIT_REGION'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 44
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
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN_TRANSL'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_KODVAL_CB'
        PickList.Strings = ()
        Title.Caption = 'Код вал. ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_N_ST'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_CB_KOL'
        PickList.Strings = ()
        Title.Caption = 'Кол-во ц.б. всего'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_CB_KOL_OB'
        PickList.Strings = ()
        Title.Caption = 'Кол-во ц.б. основного баланса'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_CB_REPO'
        PickList.Strings = ()
        Title.Caption = 'Приобр. по сделке РЕПО'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_CB_ZAJM'
        PickList.Strings = ()
        Title.Caption = 'Получ. по сделкам займа'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_NOT_OBZ'
        PickList.Strings = ()
        Title.Caption = 'Обязательства отсутствуют'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_BEZNAD'
        PickList.Strings = ()
        Title.Caption = 'Безнадежные долги'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_CB_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Зачислены ошибочно'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_INOE'
        PickList.Strings = ()
        Title.Caption = 'По другим причинам'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_DEPO_UP'
        PickList.Strings = ()
        Title.Caption = 'На счетах ДЕПО доверит. управл.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_DEPO_EM'
        PickList.Strings = ()
        Title.Caption = 'На казнач. счетах ДЕПО эмитента'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_ZALOGD'
        PickList.Strings = ()
        Title.Caption = 'На счетах залогодержат.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_CB_EMIS'
        PickList.Strings = ()
        Title.Caption = 'На эмиссионных счетах'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_ORG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_ORG_PRIZ'
        PickList.Strings = ()
        Title.Caption = 'Признак'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_ORG_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_ORG_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_ORG_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_ORG_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T236_ORG_LIC'
        PickList.Strings = ()
        Title.Caption = 'Лицензия'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T243_REPORTER_SHORT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T243_REPORTER_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 105
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 70
    Width = 698
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
    Width = 698
    Height = 70
    inherited GroupBox1: TGroupBox
      Width = 541
      Height = 65
      inline PeriodFilter: TF005_DataPeriodFilter
        Left = 12
        Top = 14
      end
      inline ReporterFilter: TF005_ReporterFilter
        Left = 12
        Top = 38
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
    end
    inherited Button1: TButton
      Left = 560
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 95
    Width = 698
    inherited Panel1: TPanel
      Left = 671
    end
  end
  inherited actList: TActionList
    Top = 260
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход к связыванию'
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 192
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  IS_LINKED,'
      '  T236_ID,'
      '  T243_ID,'
      '  T055_ID,'
      '  T236_ROW_NUM,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T236_EMIT_KPP,'
      '  T236_EMIT_OGRN,'
      '  T028_COUNTRY_ID,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T026_SEC_REGN,'
      '  T010_ISIN_TRANSL,'
      '  T236_KODVAL_CB,'
      '  T236_N_ST,'
      '  T236_CB_KOL,'
      '  T236_CB_KOL_OB,'
      '  T236_CB_REPO,'
      '  T236_CB_ZAJM,'
      '  T236_NOT_OBZ,'
      '  T236_BEZNAD,'
      '  T236_CB_ERROR,'
      '  T236_INOE,'
      '  T236_DEPO_UP,'
      '  T236_DEPO_EM,'
      '  T236_ZALOGD,'
      '  T236_CB_EMIS,'
      '  T236_ORG_NAME,'
      '  T236_ORG_PRIZ,'
      '  T236_ORG_CODE,'
      '  T236_ORG_KPP,'
      '  T236_ORG_OGRN,'
      '  T236_ORG_STRAN,'
      '  T236_ORG_LIC,'
      '  T236_EMIT_REGION,'
      '  T243_REPORTER_SHORT_NAME,'
      '  T243_REPORTER_INN,'
      '  T030_ID,'
      '  T030_ID_MAIN,'
      '  T027_ID_MAIN,'
      '  T027_SEC_TYPE_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T028_CODE_MAIN,'
      '  T028_COUNTRY_MAIN,'
      '  T055_LONG_NAME'
      'from V_405_415_DATA_13')
    QBEDefinition.QBEFieldDefs = {
      04000000320000000900000049535F4C494E4B45440100000000000700000054
      3233365F494401000000000007000000543234335F4944010000000000070000
      00543035355F49440100000000000C000000543233365F524F575F4E554D0100
      000000000D000000543233365F454D49545F4B50500100000000000E00000054
      3233365F454D49545F4F47524E0100000000000E000000543233365F4B4F4456
      414C5F434201000000000009000000543233365F4E5F53540100000000000B00
      0000543233365F43425F4B4F4C0100000000000E000000543233365F43425F4B
      4F4C5F4F420100000000000C000000543233365F43425F5245504F0100000000
      000C000000543233365F43425F5A414A4D0100000000000C000000543233365F
      4E4F545F4F425A0100000000000B000000543233365F42455A4E414401000000
      00000D000000543233365F43425F4552524F5201000000000009000000543233
      365F494E4F450100000000000C000000543233365F4445504F5F555001000000
      00000C000000543233365F4445504F5F454D0100000000000B00000054323336
      5F5A414C4F47440100000000000C000000543233365F43425F454D4953010000
      0000000D000000543233365F4F52475F4E414D450100000000000D0000005432
      33365F4F52475F5052495A0100000000000D000000543233365F4F52475F434F
      44450100000000000C000000543233365F4F52475F4B50500100000000000D00
      0000543233365F4F52475F4F47524E0100000000000E000000543233365F4F52
      475F535452414E0100000000000C000000543233365F4F52475F4C4943010000
      00000010000000543233365F454D49545F524547494F4E010000000000180000
      00543234335F5245504F525445525F53484F52545F4E414D4501000000000011
      000000543234335F5245504F525445525F494E4E010000000000070000005430
      33305F49440100000000000C000000543033305F49445F4D41494E0100000000
      000C000000543032375F49445F4D41494E01000000000012000000543032375F
      5345435F545950455F4D41494E01000000000012000000543032365F5345435F
      5245474E5F4D41494E01000000000013000000543032385F53484F545F4E414D
      455F4D41494E0100000000000D000000543032385F494E4E5F4D41494E010000
      0000000E000000543032385F434F44455F4D41494E0100000000001100000054
      3032385F434F554E5452595F4D41494E0100000000000E000000543035355F4C
      4F4E475F4E414D450100000000000E000000543032385F53484F545F4E414D45
      01000000000008000000543032385F494E4E0100000000000F00000054303238
      5F434F554E5452595F49440100000000000D000000543032375F5345435F5459
      50450100000000000D000000543032365F5345435F5245474E01000000000007
      000000543032375F49440100000000000C000000543032385F49445F4D41494E
      01000000000007000000543032385F494401000000000010000000543031305F
      4953494E5F5452414E534C010000000000}
    Top = 190
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT236_ID: TFloatField
      FieldName = 'T236_ID'
    end
    object odsListT243_ID: TFloatField
      FieldName = 'T243_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT236_ROW_NUM: TFloatField
      FieldName = 'T236_ROW_NUM'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT236_EMIT_KPP: TStringField
      FieldName = 'T236_EMIT_KPP'
      Size = 255
    end
    object odsListT236_EMIT_OGRN: TStringField
      FieldName = 'T236_EMIT_OGRN'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT236_KODVAL_CB: TStringField
      FieldName = 'T236_KODVAL_CB'
      Size = 3
    end
    object odsListT236_N_ST: TFloatField
      FieldName = 'T236_N_ST'
    end
    object odsListT236_CB_KOL: TFloatField
      FieldName = 'T236_CB_KOL'
    end
    object odsListT236_CB_KOL_OB: TFloatField
      FieldName = 'T236_CB_KOL_OB'
    end
    object odsListT236_CB_REPO: TFloatField
      FieldName = 'T236_CB_REPO'
    end
    object odsListT236_CB_ZAJM: TFloatField
      FieldName = 'T236_CB_ZAJM'
    end
    object odsListT236_NOT_OBZ: TFloatField
      FieldName = 'T236_NOT_OBZ'
    end
    object odsListT236_BEZNAD: TFloatField
      FieldName = 'T236_BEZNAD'
    end
    object odsListT236_CB_ERROR: TFloatField
      FieldName = 'T236_CB_ERROR'
    end
    object odsListT236_INOE: TFloatField
      FieldName = 'T236_INOE'
    end
    object odsListT236_DEPO_UP: TFloatField
      FieldName = 'T236_DEPO_UP'
    end
    object odsListT236_DEPO_EM: TFloatField
      FieldName = 'T236_DEPO_EM'
    end
    object odsListT236_ZALOGD: TFloatField
      FieldName = 'T236_ZALOGD'
    end
    object odsListT236_CB_EMIS: TFloatField
      FieldName = 'T236_CB_EMIS'
    end
    object odsListT236_ORG_NAME: TStringField
      FieldName = 'T236_ORG_NAME'
      Size = 255
    end
    object odsListT236_ORG_PRIZ: TStringField
      FieldName = 'T236_ORG_PRIZ'
      Size = 1
    end
    object odsListT236_ORG_CODE: TStringField
      FieldName = 'T236_ORG_CODE'
      Size = 255
    end
    object odsListT236_ORG_KPP: TStringField
      FieldName = 'T236_ORG_KPP'
      Size = 255
    end
    object odsListT236_ORG_OGRN: TStringField
      FieldName = 'T236_ORG_OGRN'
      Size = 255
    end
    object odsListT236_ORG_STRAN: TStringField
      FieldName = 'T236_ORG_STRAN'
      Size = 3
    end
    object odsListT236_ORG_LIC: TStringField
      FieldName = 'T236_ORG_LIC'
      Size = 255
    end
    object odsListT236_EMIT_REGION: TStringField
      FieldName = 'T236_EMIT_REGION'
      Size = 3
    end
    object odsListT243_REPORTER_SHORT_NAME: TStringField
      FieldName = 'T243_REPORTER_SHORT_NAME'
      Size = 255
    end
    object odsListT243_REPORTER_INN: TStringField
      FieldName = 'T243_REPORTER_INN'
      Size = 16
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
    end
    object odsListT027_ID_MAIN: TFloatField
      FieldName = 'T027_ID_MAIN'
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Size = 255
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Size = 265
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT028_INN_MAIN: TStringField
      FieldName = 'T028_INN_MAIN'
      Size = 255
    end
    object odsListT028_CODE_MAIN: TStringField
      FieldName = 'T028_CODE_MAIN'
      Size = 255
    end
    object odsListT028_COUNTRY_MAIN: TStringField
      FieldName = 'T028_COUNTRY_MAIN'
      Size = 255
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Size = 255
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 183
  end
  inherited oqAdd: TOracleQuery
    Top = 193
  end
  inherited oqUpdate: TOracleQuery
    Top = 229
  end
  inherited oqDelete: TOracleQuery
    Top = 269
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 251
  end
end
