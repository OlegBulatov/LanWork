inherited F005_Opers121: TF005_Opers121
  Width = 722
  inherited xxxDBGrid: TxxxDBGrid
    Top = 116
    Width = 722
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
            LastCol = 15
            Caption = 'Дополнительно'
          end
          item
            FirstCol = 19
            LastCol = 20
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
        FieldName = 'T235_EMIT_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T235_EMIT_OGRN'
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
        FieldName = 'T235_KODVAL_CB'
        PickList.Strings = ()
        Title.Caption = 'Код вал. ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T235_N_ST'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T235_CNT_IN'
        PickList.Strings = ()
        Title.Caption = 'Принято на хранение и учет, шт.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T235_CNT_OUT'
        PickList.Strings = ()
        Title.Caption = 'Снято с хранения и учета, шт.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T235_CNT_DEPO'
        PickList.Strings = ()
        Title.Caption = 'Переведено по счетам ДЕПО в депозитарии, шт.'
        Width = 90
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
    Width = 722
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
    Width = 722
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
    Width = 722
    inherited Panel1: TPanel
      Left = 695
    end
  end
  inherited actList: TActionList
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход к связыванию'
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 199
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  IS_LINKED,'
      '  T235_ID,'
      '  T243_ID,'
      '  T055_ID,'
      '  T235_ROW_NUM,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T235_EMIT_KPP,'
      '  T235_EMIT_OGRN,'
      '  T028_COUNTRY_ID,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T026_SEC_REGN,'
      '  T010_ISIN_TRANSL,'
      '  T235_KODVAL_CB,'
      '  T235_N_ST,'
      '  T235_CNT_IN,'
      '  T235_CNT_OUT,'
      '  T235_CNT_DEPO,'
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
      '  T028_COUNTRY_MAIN,'
      '  T055_LONG_NAME'
      'from V_405_415_DATA_121')
    QBEDefinition.QBEFieldDefs = {
      04000000200000000900000049535F4C494E4B45440100000000000700000054
      3233355F494401000000000007000000543234335F4944010000000000070000
      00543035355F49440100000000000C000000543233355F524F575F4E554D0100
      000000000D000000543233355F454D49545F4B50500100000000000E00000054
      3233355F454D49545F4F47524E0100000000000E000000543233355F4B4F4456
      414C5F434201000000000009000000543233355F4E5F53540100000000000B00
      0000543233355F434E545F494E0100000000000C000000543233355F434E545F
      4F55540100000000000D000000543233355F434E545F4445504F010000000000
      18000000543234335F5245504F525445525F53484F52545F4E414D4501000000
      000011000000543234335F5245504F525445525F494E4E010000000000070000
      00543033305F49440100000000000C000000543033305F49445F4D41494E0100
      000000000C000000543032375F49445F4D41494E010000000000120000005430
      32375F5345435F545950455F4D41494E01000000000012000000543032365F53
      45435F5245474E5F4D41494E0100000000000C000000543032385F49445F4D41
      494E01000000000013000000543032385F53484F545F4E414D455F4D41494E01
      00000000000D000000543032385F494E4E5F4D41494E01000000000011000000
      543032385F434F554E5452595F4D41494E0100000000000E000000543035355F
      4C4F4E475F4E414D450100000000000E000000543032385F53484F545F4E414D
      4501000000000008000000543032385F494E4E0100000000000F000000543032
      385F434F554E5452595F49440100000000000D000000543032375F5345435F54
      5950450100000000000D000000543032365F5345435F5245474E010000000000
      07000000543032375F494401000000000007000000543032385F494401000000
      000010000000543031305F4953494E5F5452414E534C010000000000}
    Top = 197
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT235_ID: TFloatField
      FieldName = 'T235_ID'
    end
    object odsListT243_ID: TFloatField
      FieldName = 'T243_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT235_ROW_NUM: TFloatField
      FieldName = 'T235_ROW_NUM'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT235_EMIT_KPP: TStringField
      FieldName = 'T235_EMIT_KPP'
      Size = 255
    end
    object odsListT235_EMIT_OGRN: TStringField
      FieldName = 'T235_EMIT_OGRN'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT235_KODVAL_CB: TStringField
      FieldName = 'T235_KODVAL_CB'
      Size = 3
    end
    object odsListT235_N_ST: TFloatField
      FieldName = 'T235_N_ST'
    end
    object odsListT235_CNT_IN: TFloatField
      FieldName = 'T235_CNT_IN'
    end
    object odsListT235_CNT_OUT: TFloatField
      FieldName = 'T235_CNT_OUT'
    end
    object odsListT235_CNT_DEPO: TFloatField
      FieldName = 'T235_CNT_DEPO'
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
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
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
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Size = 255
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    Top = 200
  end
  inherited oqUpdate: TOracleQuery
    Top = 236
  end
  inherited oqDelete: TOracleQuery
    Top = 276
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 258
  end
end
