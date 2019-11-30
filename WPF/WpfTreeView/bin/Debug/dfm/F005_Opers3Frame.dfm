inherited F005_Opers3: TF005_Opers3
  Width = 666
  inherited xxxDBGrid: TxxxDBGrid
    Top = 116
    Width = 666
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
            LastCol = 11
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 17
            LastCol = 25
            Caption = 'Количество ценных бумаг, штук,'
          end
          item
            FirstCol = 27
            LastCol = 28
            Caption = 'Отчитывающаяся организация'
          end>
      end
      item
        Headers = <>
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
        Width = 120
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
        Title.Caption = 'Рег № '
        Width = 95
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
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_EMIT_KPP'
        PickList.Strings = ()
        Title.Caption = 'КПП'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_EMIT_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 90
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
        FieldName = 'T241_EMIT_REGION'
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
        Title.Caption = 'Рег № '
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN_TRANSL'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KODVAL_CB'
        PickList.Strings = ()
        Title.Caption = 'Код вал. ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_N_ST'
        PickList.Strings = ()
        Title.Caption = 'Номинал'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KREPOPR'
        PickList.Strings = ()
        Title.Caption = 'переданных по сделкам прямого репо'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KZAIMPR'
        PickList.Strings = ()
        Title.Caption = 'переданных по сделкам займа'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KOBREPOPL'
        PickList.Strings = ()
        Title.Caption = 'полученных по сделкам обратного репо'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KZAIMPL'
        PickList.Strings = ()
        Title.Caption = 'полученных по сделкам займа'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KDOVUPRPR'
        PickList.Strings = ()
        Title.Caption = 'переданных в доверительное управление'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KDOVUPRPPR'
        PickList.Strings = ()
        Title.Caption = 'права из которых переданы в доверительное управление'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KZALOGOBKO'
        PickList.Strings = ()
        Title.Caption = 'переданных в залог по обязательствам кредитной организации'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KZALOGOBTL'
        PickList.Strings = ()
        Title.Caption = 'переданных в залог по обязательствам третьих лиц'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_KZALOG'
        PickList.Strings = ()
        Title.Caption = 'принятых в залог'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T241_PRIM'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 80
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
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 109
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 70
    Width = 666
  end
  inherited paFilters: TPanel
    Width = 666
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
    Width = 666
    inherited Panel1: TPanel
      Left = 639
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  IS_LINKED,'
      '  T241_ID,'
      '  T243_ID,'
      '  T055_ID,'
      '  T241_ROW_NUM,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T241_EMIT_KPP,'
      '  T241_EMIT_OGRN,'
      '  T028_COUNTRY_ID,'
      '  T027_SEC_TYPE,'
      '  T026_SEC_REGN,'
      '  T010_ISIN_TRANSL,'
      '  T241_KODVAL_CB,'
      '  T241_N_ST,'
      '  T241_KREPOPR,'
      '  T241_KZAIMPR,'
      '  T241_KOBREPOPL,'
      '  T241_KZAIMPL,'
      '  T241_KDOVUPRPR,'
      '  T241_KDOVUPRPPR,'
      '  T241_KZALOGOBKO,'
      '  T241_KZALOGOBTL,'
      '  T241_KZALOG,'
      '  T241_PRIM,'
      '  T241_N_ST_USD,'
      '  T241_EMIT_REGION,'
      '  T243_REPORTER_SHORT_NAME,'
      '  T243_REPORTER_INN,'
      '  T030_ID,'
      '  T030_ID_MAIN,'
      '  T027_ID_MAIN,'
      '  T027_SEC_TYPE_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T028_CODE_MAIN,'
      '  T028_COUNTRY_MAIN,'
      '  T055_LONG_NAME'
      'from V_405_415_DATA_3')
    QBEDefinition.QBEFieldDefs = {
      04000000270000000900000049535F4C494E4B45440100000000000700000054
      3234315F494401000000000007000000543234335F4944010000000000070000
      00543035355F49440100000000000C000000543234315F524F575F4E554D0100
      000000000E000000543032385F53484F545F4E414D4501000000000008000000
      543032385F494E4E0100000000000D000000543234315F454D49545F4B505001
      00000000000E000000543234315F454D49545F4F47524E0100000000000F0000
      00543032385F434F554E5452595F49440100000000000D000000543032375F53
      45435F545950450100000000000D000000543032365F5345435F5245474E0100
      000000000E000000543234315F4B4F4456414C5F434201000000000009000000
      543234315F4E5F53540100000000000C000000543234315F4B5245504F505201
      00000000000C000000543234315F4B5A41494D50520100000000000E00000054
      3234315F4B4F425245504F504C0100000000000C000000543234315F4B5A4149
      4D504C0100000000000E000000543234315F4B444F5655505250520100000000
      000F000000543234315F4B444F565550525050520100000000000F0000005432
      34315F4B5A414C4F474F424B4F0100000000000F000000543234315F4B5A414C
      4F474F42544C0100000000000B000000543234315F4B5A414C4F470100000000
      0009000000543234315F5052494D0100000000000D000000543234315F4E5F53
      545F55534401000000000010000000543234315F454D49545F524547494F4E01
      000000000018000000543234335F5245504F525445525F53484F52545F4E414D
      4501000000000011000000543234335F5245504F525445525F494E4E01000000
      000007000000543033305F49440100000000000C000000543033305F49445F4D
      41494E0100000000000C000000543032375F49445F4D41494E01000000000012
      000000543032375F5345435F545950455F4D41494E0100000000001200000054
      3032365F5345435F5245474E5F4D41494E01000000000013000000543032385F
      53484F545F4E414D455F4D41494E0100000000000D000000543032385F494E4E
      5F4D41494E0100000000000E000000543032385F434F44455F4D41494E010000
      00000011000000543032385F434F554E5452595F4D41494E0100000000000E00
      0000543035355F4C4F4E475F4E414D4501000000000010000000543031305F49
      53494E5F5452414E534C010000000000}
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT241_ID: TFloatField
      FieldName = 'T241_ID'
    end
    object odsListT243_ID: TFloatField
      FieldName = 'T243_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT241_ROW_NUM: TFloatField
      FieldName = 'T241_ROW_NUM'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT241_EMIT_KPP: TStringField
      FieldName = 'T241_EMIT_KPP'
      Size = 255
    end
    object odsListT241_EMIT_OGRN: TStringField
      FieldName = 'T241_EMIT_OGRN'
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
    object odsListT241_KODVAL_CB: TStringField
      FieldName = 'T241_KODVAL_CB'
      Size = 3
    end
    object odsListT241_N_ST: TFloatField
      FieldName = 'T241_N_ST'
    end
    object odsListT241_KREPOPR: TFloatField
      FieldName = 'T241_KREPOPR'
    end
    object odsListT241_KZAIMPR: TFloatField
      FieldName = 'T241_KZAIMPR'
    end
    object odsListT241_KOBREPOPL: TFloatField
      FieldName = 'T241_KOBREPOPL'
    end
    object odsListT241_KZAIMPL: TFloatField
      FieldName = 'T241_KZAIMPL'
    end
    object odsListT241_KDOVUPRPR: TFloatField
      FieldName = 'T241_KDOVUPRPR'
    end
    object odsListT241_KDOVUPRPPR: TFloatField
      FieldName = 'T241_KDOVUPRPPR'
    end
    object odsListT241_KZALOGOBKO: TFloatField
      FieldName = 'T241_KZALOGOBKO'
    end
    object odsListT241_KZALOGOBTL: TFloatField
      FieldName = 'T241_KZALOGOBTL'
    end
    object odsListT241_KZALOG: TFloatField
      FieldName = 'T241_KZALOG'
    end
    object odsListT241_PRIM: TStringField
      FieldName = 'T241_PRIM'
      Size = 512
    end
    object odsListT241_N_ST_USD: TFloatField
      FieldName = 'T241_N_ST_USD'
    end
    object odsListT241_EMIT_REGION: TStringField
      FieldName = 'T241_EMIT_REGION'
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
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Size = 255
    end
  end
end
