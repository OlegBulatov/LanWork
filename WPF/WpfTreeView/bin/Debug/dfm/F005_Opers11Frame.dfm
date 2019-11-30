inherited F005_Opers11: TF005_Opers11
  Width = 768
  inherited xxxDBGrid: TxxxDBGrid
    Top = 116
    Width = 768
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
            LastCol = 12
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 13
            LastCol = 16
            Caption = 'Дополнительно'
          end
          item
            FirstCol = 17
            LastCol = 24
            Caption = 'Депозитарий'
          end
          item
            FirstCol = 25
            LastCol = 32
            Caption = 'Вышестоящий депозитарий'
          end
          item
            FirstCol = 33
            LastCol = 34
            Caption = 'Отчитывающаяся организация'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IS_LINKED'
        PickList.Strings = ()
        Title.Caption = 'Распозн.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Рег № ц.б.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_EMIT_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_EMIT_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег № ц.б.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN_TRANSL'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_KODVAL_CB'
        PickList.Strings = ()
        Title.Caption = 'Код вал. ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_N_ST'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_KOL_CB'
        PickList.Strings = ()
        Title.Caption = 'К-во ц.б., шт.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_DEP_PRIZ'
        PickList.Strings = ()
        Title.Caption = 'Признак'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_DEP_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_DEP_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_DEP_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_DEP_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_DEP_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_DEP_LIC'
        PickList.Strings = ()
        Title.Caption = 'Номер лицензии'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_DEP_LORO'
        PickList.Strings = ()
        Title.Caption = 'Номер счета ЛОРО'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_ORG_PRIZ'
        PickList.Strings = ()
        Title.Caption = 'Признак'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_ORG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_ORG_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_ORG_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_ORG_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_ORG_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_ORG_LIC'
        PickList.Strings = ()
        Title.Caption = 'Номер лицензии'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T233_ORG_NOSTRO'
        PickList.Strings = ()
        Title.Caption = 'Номер счета НОСТРО'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T243_REPORTER_SHORT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 120
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
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 70
    Width = 768
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
      object tbGoToLink: TToolButton
        Left = 83
        Top = 0
        Action = actGoToLink
      end
    end
  end
  inherited paFilters: TPanel
    Width = 768
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
    Width = 768
    inherited Panel1: TPanel
      Left = 741
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 264
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход к связыванию'
      ImageIndex = 13
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 203
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '   IS_LINKED,'
      '   T233_ID,'
      '   T243_ID,'
      '   T055_ID,'
      '   T233_ROW_NUM,'
      '   T233_DEP_NAME,'
      '   T233_DEP_CODE,'
      '   T233_DEP_KPP,'
      '   T233_DEP_OGRN,'
      '   T233_DEP_STRAN,'
      '   T233_DEP_LIC,'
      '   T233_DEP_PRIZ,'
      '   T233_DEP_LORO,'
      '   T028_ID,'
      '   T028_SHOT_NAME,'
      '   T028_INN,'
      '   T233_EMIT_KPP,'
      '   T233_EMIT_OGRN,'
      '   T028_COUNTRY_ID,'
      '   T027_ID,'
      '   T027_SEC_TYPE,'
      '   T026_SEC_REGN,'
      '   T010_ISIN_TRANSL,'
      '   T233_KODVAL_CB,'
      '   T233_N_ST,'
      '   T233_KOL_CB,'
      '   T233_ORG_NAME,'
      '   T233_ORG_PRIZ,'
      '   T233_ORG_CODE,'
      '   T233_ORG_KPP,'
      '   T233_ORG_OGRN,'
      '   T233_ORG_STRAN,'
      '   T233_ORG_LIC,'
      '   T233_ORG_NOSTRO,'
      '   T243_REPORTER_SHORT_NAME,'
      '   T243_REPORTER_INN,'
      '   T030_ID,'
      '   T030_ID_MAIN,'
      '   T027_SEC_TYPE_MAIN,'
      '   T026_SEC_REGN_MAIN,'
      '   T028_ID_MAIN,'
      '   T028_SHOT_NAME_MAIN,'
      '   T028_INN_MAIN,'
      '   T028_COUNTRY_MAIN,'
      '   T055_LONG_NAME'
      'from V_405_415_DATA_11')
    QBEDefinition.QBEFieldDefs = {
      040000002D00000007000000543233335F494401000000000007000000543035
      355F49440100000000000C000000543233335F524F575F4E554D010000000000
      0D000000543233335F4445505F4E414D450100000000000D000000543233335F
      4445505F434F44450100000000000C000000543233335F4445505F4B50500100
      000000000D000000543233335F4445505F4F47524E0100000000000E00000054
      3233335F4445505F535452414E0100000000000C000000543233335F4445505F
      4C49430100000000000D000000543233335F4445505F5052495A010000000000
      0D000000543233335F4445505F4C4F524F0100000000000D000000543233335F
      454D49545F4B50500100000000000E000000543233335F454D49545F4F47524E
      0100000000000E000000543233335F4B4F4456414C5F43420100000000000900
      0000543233335F4E5F53540100000000000B000000543233335F4B4F4C5F4342
      0100000000000D000000543233335F4F52475F4E414D450100000000000D0000
      00543233335F4F52475F5052495A0100000000000D000000543233335F4F5247
      5F434F44450100000000000C000000543233335F4F52475F4B50500100000000
      000D000000543233335F4F52475F4F47524E0100000000000E00000054323333
      5F4F52475F535452414E0100000000000C000000543233335F4F52475F4C4943
      0100000000000F000000543233335F4F52475F4E4F5354524F01000000000007
      000000543033305F49440100000000000C000000543033305F49445F4D41494E
      01000000000012000000543032375F5345435F545950455F4D41494E01000000
      000012000000543032365F5345435F5245474E5F4D41494E0100000000001300
      0000543032385F53484F545F4E414D455F4D41494E0100000000000D00000054
      3032385F494E4E5F4D41494E01000000000011000000543032385F434F554E54
      52595F4D41494E0100000000000900000049535F4C494E4B4544010000000000
      0E000000543035355F4C4F4E475F4E414D450100000000000700000054323433
      5F494401000000000018000000543234335F5245504F525445525F53484F5254
      5F4E414D4501000000000011000000543234335F5245504F525445525F494E4E
      0100000000000E000000543032385F53484F545F4E414D450100000000000800
      0000543032385F494E4E0100000000000F000000543032385F434F554E545259
      5F49440100000000000D000000543032375F5345435F54595045010000000000
      0D000000543032365F5345435F5245474E01000000000007000000543032375F
      49440100000000000C000000543032385F49445F4D41494E0100000000000700
      0000543032385F494401000000000010000000543031305F4953494E5F545241
      4E534C010000000000}
    Top = 201
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT233_ID: TFloatField
      FieldName = 'T233_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT233_ROW_NUM: TFloatField
      FieldName = 'T233_ROW_NUM'
    end
    object odsListT233_DEP_NAME: TStringField
      FieldName = 'T233_DEP_NAME'
      Size = 255
    end
    object odsListT233_DEP_CODE: TStringField
      FieldName = 'T233_DEP_CODE'
      Size = 255
    end
    object odsListT233_DEP_KPP: TStringField
      FieldName = 'T233_DEP_KPP'
      Size = 255
    end
    object odsListT233_DEP_OGRN: TStringField
      FieldName = 'T233_DEP_OGRN'
      Size = 255
    end
    object odsListT233_DEP_STRAN: TStringField
      FieldName = 'T233_DEP_STRAN'
      Size = 3
    end
    object odsListT233_DEP_LIC: TStringField
      FieldName = 'T233_DEP_LIC'
      Size = 255
    end
    object odsListT233_DEP_PRIZ: TStringField
      FieldName = 'T233_DEP_PRIZ'
      Size = 1
    end
    object odsListT233_DEP_LORO: TStringField
      FieldName = 'T233_DEP_LORO'
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT233_EMIT_KPP: TStringField
      FieldName = 'T233_EMIT_KPP'
      Size = 255
    end
    object odsListT233_EMIT_OGRN: TStringField
      FieldName = 'T233_EMIT_OGRN'
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
    object odsListT233_KODVAL_CB: TStringField
      FieldName = 'T233_KODVAL_CB'
      Size = 3
    end
    object odsListT233_N_ST: TFloatField
      FieldName = 'T233_N_ST'
    end
    object odsListT233_KOL_CB: TFloatField
      FieldName = 'T233_KOL_CB'
    end
    object odsListT233_ORG_NAME: TStringField
      FieldName = 'T233_ORG_NAME'
      Size = 255
    end
    object odsListT233_ORG_PRIZ: TStringField
      FieldName = 'T233_ORG_PRIZ'
      Size = 1
    end
    object odsListT233_ORG_CODE: TStringField
      FieldName = 'T233_ORG_CODE'
      Size = 255
    end
    object odsListT233_ORG_KPP: TStringField
      FieldName = 'T233_ORG_KPP'
      Size = 255
    end
    object odsListT233_ORG_OGRN: TStringField
      FieldName = 'T233_ORG_OGRN'
      Size = 255
    end
    object odsListT233_ORG_STRAN: TStringField
      FieldName = 'T233_ORG_STRAN'
      Size = 3
    end
    object odsListT233_ORG_LIC: TStringField
      FieldName = 'T233_ORG_LIC'
      Size = 255
    end
    object odsListT233_ORG_NOSTRO: TStringField
      FieldName = 'T233_ORG_NOSTRO'
      Size = 255
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
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
    object odsListT028_COUNTRY_MAIN: TStringField
      FieldName = 'T028_COUNTRY_MAIN'
      Size = 255
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListT243_ID: TFloatField
      FieldName = 'T243_ID'
    end
    object odsListT243_REPORTER_SHORT_NAME: TStringField
      FieldName = 'T243_REPORTER_SHORT_NAME'
      Size = 255
    end
    object odsListT243_REPORTER_INN: TStringField
      FieldName = 'T243_REPORTER_INN'
      Size = 16
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
    Top = 195
  end
  inherited oqAdd: TOracleQuery
    Top = 204
  end
  inherited oqUpdate: TOracleQuery
    Top = 240
  end
  inherited oqDelete: TOracleQuery
    Top = 280
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 262
  end
end
