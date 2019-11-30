inherited B000_Opers3: TB000_Opers3
  inherited xxxDBGrid: TxxxDBGrid
    Top = 118
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
            FirstCol = 17
            LastCol = 29
            Caption = 'Количество ценных бумаг, штук,'
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
        Title.Caption = 'Рег № '
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
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMIT_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
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
        Title.Caption = 'Рег № '
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
        Title.Caption = 'Номинал'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_ST_USD'
        PickList.Strings = ()
        Title.Caption = 'Номинал в $'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KREPOPR'
        PickList.Strings = ()
        Title.Caption = 'переданных по сделкам прямого репо'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KZAIMPR'
        PickList.Strings = ()
        Title.Caption = 'переданных по сделкам займа'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOBREPOPL'
        PickList.Strings = ()
        Title.Caption = 'полученных по сделкам обратного репо'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KZAIMPL'
        PickList.Strings = ()
        Title.Caption = 'полученных по сделкам займа'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KDOVUPRPR'
        PickList.Strings = ()
        Title.Caption = 'переданных в доверительное управление'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KDOVUPRPPR'
        PickList.Strings = ()
        Title.Caption = 'права из которых переданы в доверительное управление'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KZALOGOBKO'
        PickList.Strings = ()
        Title.Caption = 'переданных в залог по обязательствам кредитной организации'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KZALOGOBTL'
        PickList.Strings = ()
        Title.Caption = 'переданных в залог по обязательствам третьих лиц'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KZALOGPR'
        PickList.Strings = ()
        Title.Caption = 'принятых в залог'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KDEPO'
        PickList.Strings = ()
        Title.Caption = 'учитываемых на торговых счетах ДЕПО'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_CORP'
        PickList.Strings = ()
        Title.Caption = 'ограничено распоряжение в связи с корп. действиями'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_OPER'
        PickList.Strings = ()
        Title.Caption = 'введен запрет на осуществл.  операций'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOP_ARREST'
        PickList.Strings = ()
        Title.Caption = 'под арестом'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T218_COMMENT_3'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Visible = False
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
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Title.Caption = 'Код периода.'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T218_ID'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Top = 72
  end
  inherited paFilters: TPanel
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
      Left = 544
      Top = 10
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 97
  end
  inherited actList: TActionList
    Top = 290
  end
  inherited dsList: TDataSource
    Top = 229
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T218_ID,'
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
      '  EMIT_PRIZ,'
      '  ISIN,'
      '  KODVAL_CB,'
      '  N_ST,'
      '  N_ST_USD,'
      '  KREPOPR,'
      '  KZAIMPR,'
      '  KOBREPOPL,'
      '  KZAIMPL,'
      '  KDOVUPRPR,'
      '  KDOVUPRPPR,'
      '  KZALOGOBKO,'
      '  KZALOGOBTL,'
      '  KZALOGPR,'
      '  PRIM,'
      '  VID_SH,'
      '  SEKTOR,'
      '  KDEPO,'
      '  STOP_CORP,'
      '  STOP_OPER,'
      '  STOP_ARREST,'
      '  --T042_SHORT_NAME,'
      '  T218_COMMENT_3'
      'from V_405_DBF_711_SUM_3')
    QBEDefinition.QBEFieldDefs = {
      040000003700000007000000543231385F494401000000000007000000543035
      315F49440100000000000E000000543035315F42414E4B5F434F444501000000
      00000A000000543035315F4B505F49440100000000000E000000543035315F4C
      4F41445F4441544501000000000007000000543035355F494401000000000010
      000000543035315F4E554D425F494E5F59454101000000000015000000543035
      315F4E554D425F494E5F5945415F444553430100000000001000000054303531
      5F5245504F52545F444154450100000000000700000049535F4D41494E010000
      00000007000000543033305F49440100000000000D000000543032365F534543
      5F5245474E01000000000007000000543032375F49440100000000000D000000
      543032375F5345435F5459504501000000000007000000543032385F49440100
      0000000008000000543032385F494E4E0100000000000F000000543032385F43
      4F554E5452595F49440100000000000E000000543032385F53484F545F4E414D
      450100000000000E000000543032355F53484F545F4E414D450100000000000C
      000000543033305F49445F4D41494E01000000000012000000543032365F5345
      435F5245474E5F4D41494E0100000000000C000000543032375F49445F4D4149
      4E01000000000012000000543032375F5345435F545950455F4D41494E010000
      0000000C000000543032385F49445F4D41494E0100000000000E000000543032
      385F504152454E545F49440100000000000D000000543032385F494E4E5F4D41
      494E01000000000014000000543032385F434F554E5452595F49445F4D41494E
      01000000000013000000543032385F53484F545F4E414D455F4D41494E010000
      00000013000000543032355F53484F545F4E414D455F4D41494E010000000000
      08000000454D49545F54494E01000000000008000000454D49545F4B50500100
      0000000009000000454D49545F4F47524E0100000000000A000000454D49545F
      535452414E01000000000009000000454D49545F5052495A0100000000000400
      00004953494E010000000000090000004B4F4456414C5F434201000000000004
      0000004E5F5354010000000000080000004E5F53545F55534401000000000007
      0000004B5245504F5052010000000000070000004B5A41494D50520100000000
      00090000004B4F425245504F504C010000000000070000004B5A41494D504C01
      0000000000090000004B444F5655505250520100000000000A0000004B444F56
      5550525050520100000000000A0000004B5A414C4F474F424B4F010000000000
      0A0000004B5A414C4F474F42544C010000000000080000004B5A414C4F475052
      010000000000040000005052494D010000000000060000005649445F53480100
      000000000600000053454B544F52010000000000050000004B4445504F010000
      0000000900000053544F505F434F52500100000000000900000053544F505F4F
      5045520100000000000E000000543231385F434F4D4D454E545F330100000000
      000B00000053544F505F415252455354010000000000}
    Top = 227
    object odsListT218_ID: TFloatField
      FieldName = 'T218_ID'
    end
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
    object odsListEMIT_PRIZ: TIntegerField
      FieldName = 'EMIT_PRIZ'
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
    object odsListKREPOPR: TFloatField
      FieldName = 'KREPOPR'
    end
    object odsListKZAIMPR: TFloatField
      FieldName = 'KZAIMPR'
    end
    object odsListKOBREPOPL: TFloatField
      FieldName = 'KOBREPOPL'
    end
    object odsListKZAIMPL: TFloatField
      FieldName = 'KZAIMPL'
    end
    object odsListKDOVUPRPR: TFloatField
      FieldName = 'KDOVUPRPR'
    end
    object odsListKDOVUPRPPR: TFloatField
      FieldName = 'KDOVUPRPPR'
    end
    object odsListKZALOGOBKO: TFloatField
      FieldName = 'KZALOGOBKO'
    end
    object odsListKZALOGOBTL: TFloatField
      FieldName = 'KZALOGOBTL'
    end
    object odsListKZALOGPR: TFloatField
      FieldName = 'KZALOGPR'
    end
    object odsListPRIM: TStringField
      FieldName = 'PRIM'
      Size = 255
    end
    object odsListVID_SH: TStringField
      FieldName = 'VID_SH'
      Size = 1
    end
    object odsListSEKTOR: TStringField
      FieldName = 'SEKTOR'
      Size = 1
    end
    object odsListKDEPO: TFloatField
      FieldName = 'KDEPO'
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
    object odsListT218_COMMENT_3: TStringField
      FieldName = 'T218_COMMENT_3'
      Size = 1024
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 221
  end
  inherited oqAdd: TOracleQuery
    Top = 230
  end
  inherited oqUpdate: TOracleQuery
    Top = 266
  end
  inherited oqDelete: TOracleQuery
    Top = 306
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 288
  end
end
