inherited F005_Opers14: TF005_Opers14
  Width = 706
  inherited xxxDBGrid: TxxxDBGrid
    Top = 116
    Width = 706
    Height = 287
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
            LastCol = 14
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 16
            LastCol = 17
            Caption = 'Отчитывающаяся организация'
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
        Width = 72
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
        Width = 104
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
        FieldName = 'T237_EMIT_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T237_EMIT_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 92
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
        FieldName = 'T237_EMIT_REGION'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 42
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
        Width = 106
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
        FieldName = 'T237_SUM_CB'
        PickList.Strings = ()
        Title.Caption = 'Объем вложений, тыс.руб.'
        Width = 66
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
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 102
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 70
    Width = 706
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
    Width = 706
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
    Width = 706
    inherited Panel1: TPanel
      Left = 679
    end
  end
  inherited actList: TActionList
    Top = 280
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход  к связыванию'
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 219
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  IS_LINKED,'
      '  T237_ID,'
      '  T243_ID,'
      '  T055_ID,'
      '  T237_ROW_NUM,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T237_EMIT_KPP,'
      '  T237_EMIT_OGRN,'
      '  T028_COUNTRY_ID,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T026_SEC_REGN,'
      '  T010_ISIN_TRANSL,'
      '  T237_SUM_CB,'
      '  T237_EMIT_REGION,'
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
      'from V_405_415_DATA_14')
    QBEDefinition.QBEFieldDefs = {
      040000001E0000000900000049535F4C494E4B45440100000000000700000054
      3233375F494401000000000007000000543234335F4944010000000000070000
      00543035355F49440100000000000C000000543233375F524F575F4E554D0100
      000000000D000000543233375F454D49545F4B50500100000000000E00000054
      3233375F454D49545F4F47524E0100000000000B000000543233375F53554D5F
      434201000000000010000000543233375F454D49545F524547494F4E01000000
      000018000000543234335F5245504F525445525F53484F52545F4E414D450100
      0000000011000000543234335F5245504F525445525F494E4E01000000000007
      000000543033305F49440100000000000C000000543033305F49445F4D41494E
      0100000000000C000000543032375F49445F4D41494E01000000000012000000
      543032375F5345435F545950455F4D41494E0100000000001200000054303236
      5F5345435F5245474E5F4D41494E01000000000013000000543032385F53484F
      545F4E414D455F4D41494E0100000000000D000000543032385F494E4E5F4D41
      494E0100000000000E000000543032385F434F44455F4D41494E010000000000
      11000000543032385F434F554E5452595F4D41494E0100000000000E00000054
      3035355F4C4F4E475F4E414D450100000000000E000000543032385F53484F54
      5F4E414D4501000000000008000000543032385F494E4E0100000000000F0000
      00543032385F434F554E5452595F49440100000000000D000000543032375F53
      45435F545950450100000000000D000000543032365F5345435F5245474E0100
      0000000007000000543032375F49440100000000000C000000543032385F4944
      5F4D41494E01000000000007000000543032385F494401000000000010000000
      543031305F4953494E5F5452414E534C010000000000}
    Top = 217
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT237_ID: TFloatField
      FieldName = 'T237_ID'
    end
    object odsListT243_ID: TFloatField
      FieldName = 'T243_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT237_ROW_NUM: TFloatField
      FieldName = 'T237_ROW_NUM'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT237_EMIT_KPP: TStringField
      FieldName = 'T237_EMIT_KPP'
      Size = 255
    end
    object odsListT237_EMIT_OGRN: TStringField
      FieldName = 'T237_EMIT_OGRN'
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
    object odsListT237_SUM_CB: TFloatField
      FieldName = 'T237_SUM_CB'
    end
    object odsListT237_EMIT_REGION: TStringField
      FieldName = 'T237_EMIT_REGION'
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
    Top = 211
  end
  inherited oqAdd: TOracleQuery
    Top = 220
  end
  inherited oqUpdate: TOracleQuery
    Top = 256
  end
  inherited oqDelete: TOracleQuery
    Top = 296
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 278
  end
end
