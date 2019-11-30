inherited B000_Opers21: TB000_Opers21
  Width = 736
  inherited xxxDBGrid: TxxxDBGrid
    Top = 118
    Width = 736
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
            LastCol = 11
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 12
            LastCol = 26
            Caption = 'Вексель'
          end
          item
            FirstCol = 29
            LastCol = 32
            Caption = 'Контрагент по покупке'
          end
          item
            FirstCol = 34
            LastCol = 38
            Caption = 'Место нахождения векселя'
          end
          item
            FirstCol = 42
            LastCol = 45
            Caption = 'Контрагент по продаже'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 15
            LastCol = 17
            Caption = 'Срок и условия платежа'
          end>
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
        Title.Caption = 'Векселедатель'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_ID_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Номер векселя'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Векселедатель'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_OGRNVEKDAT'
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Номер векселя'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSSERIAL'
        PickList.Strings = ()
        Title.Caption = 'Серия'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSBLANK'
        PickList.Strings = ()
        Title.Caption = 'Номер бланка'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSDTSOST'
        PickList.Strings = ()
        Title.Caption = 'Дата составления'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_SROKPLAT'
        PickList.Strings = ()
        Title.Caption = 'Условия платежа'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_DATE_1'
        PickList.Strings = ()
        Title.Caption = 'Дата 1'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_DATE_2'
        PickList.Strings = ()
        Title.Caption = 'Дата 2'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSRATE'
        PickList.Strings = ()
        Title.Caption = 'Ставка, % годовых'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSSUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма вал.ном.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSCODVAL'
        PickList.Strings = ()
        Title.Caption = 'Валюта ном.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSSUM_USD'
        PickList.Strings = ()
        Title.Caption = 'Сумма в $'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_BALSTOIM_1'
        PickList.Strings = ()
        Title.Caption = 'Покупная стоимость, руб'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_BALSTOIM'
        PickList.Strings = ()
        Title.Caption = 'Балансовая стоимость'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_NAKDISKONT'
        PickList.Strings = ()
        Title.Caption = 'Накопленный дисконт, руб'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_CATEGORY'
        PickList.Strings = ()
        Title.Caption = 'Категория качества'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_RESERV'
        PickList.Strings = ()
        Title.Caption = 'Резерв, руб'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSDTBAL'
        PickList.Strings = ()
        Title.Caption = 'Дата принятия на баланс'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSOSNPRI'
        PickList.Strings = ()
        Title.Caption = 'Основание'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_KONTRAGENT'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_INNKONTR'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_OGRNKONTR'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_COUNTR_KA'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_BALUCHETA'
        PickList.Strings = ()
        Title.Caption = 'Номер бал. счета'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_MESTOVEKS'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_INNVEKSHRA'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_OGRNVEKHRA'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_COUNTR_HR'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_OSNOV'
        PickList.Strings = ()
        Title.Caption = 'Основание'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_REALSTOIM'
        PickList.Strings = ()
        Title.Caption = 'Стоимость реализации, руб'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_SPIS_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата списания с баланса'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_VEKSOSNSPIS'
        PickList.Strings = ()
        Title.Caption = 'Основание  списания'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_KONTRAGENT_1'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_INNKONTR_1'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_OGRNKONTR_1'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_COUNTR_KA_1'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_COMMENT_21'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 100
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
      end>
  end
  inherited paToolButton: TPanel
    Top = 72
    Width = 736
  end
  inherited paFilters: TPanel
    Width = 736
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
      Left = 543
      Top = 10
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 97
    Width = 736
    inherited Panel1: TPanel
      Left = 709
    end
  end
  inherited actList: TActionList
    Top = 249
  end
  inherited dsList: TDataSource
    Top = 188
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
      '  T201_ID,'
      '  T201_TINVEKSDAT,'
      '  T201_OGRNVEKDAT,'
      '  T201_VEKSSERIAL,'
      '  T201_VEKSBLANK,'
      '  T201_VEKSDTSOST,'
      '  T201_SROKPLAT,'
      '  T201_VEKSCODVAL,'
      '  T201_VEKSSUM,'
      '  T201_VEKSDTBAL,'
      '  T201_VEKSOSNPRI,'
      '  T201_KONTRAGENT,'
      '  T201_INNKONTR,'
      '  T201_TINKONTR,'
      '  T201_OGRNKONTR,'
      '  T201_COUNTR_KA,'
      '  T201_BALSTOIM,'
      '  T201_NAKDISKONT,'
      '  T201_BALUCHETA,'
      '  T201_MESTOVEKS,'
      '  T201_INNVEKSHRA,'
      '  T201_TINVEKSHRA,'
      '  T201_OGRNVEKHRA,'
      '  T201_COUNTR_HR,'
      '  T201_OSNOV,'
      '  T201_PRIM,'
      '  T201_VEKSSUM_USD,'
      '  T201_DATE_1,'
      '  T201_DATE_2,'
      '  T201_VEKSRATE,'
      '  T201_BALSTOIM_1,'
      '  T201_CATEGORY,'
      '  T201_RESERV,'
      '  T201_REALSTOIM,'
      '  T201_SPIS_DATE,'
      '  T201_VEKSOSNSPIS,'
      '  T201_KONTRPRIZ_1,'
      '  T201_INNKONTR_1,'
      '  T201_TINKONTR_1,'
      '  T201_KONTRAGENT_1,'
      '  T201_OGRNKONTR_1,'
      '  T201_COUNTR_KA_1,'
      '  T201_COMMENT_21'
      'from V_405_DBF_711_SUM_2'
      'where T201_PART = 21')
    QBEDefinition.QBEFieldDefs = {
      040000004700000007000000543035315F49440100000000000E000000543035
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
      4E414D455F4D41494E01000000000007000000543230315F4944010000000000
      0F000000543230315F54494E56454B534441540100000000000F000000543230
      315F4F47524E56454B4441540100000000000F000000543230315F56454B5353
      455249414C0100000000000E000000543230315F56454B53424C414E4B010000
      0000000F000000543230315F56454B534454534F53540100000000000D000000
      543230315F53524F4B504C41540100000000000F000000543230315F56454B53
      434F4456414C0100000000000C000000543230315F56454B5353554D01000000
      00000E000000543230315F56454B53445442414C0100000000000F0000005432
      30315F56454B534F534E5052490100000000000F000000543230315F4B4F4E54
      524147454E540100000000000D000000543230315F494E4E4B4F4E5452010000
      0000000D000000543230315F54494E4B4F4E54520100000000000E0000005432
      30315F4F47524E4B4F4E54520100000000000E000000543230315F434F554E54
      525F4B410100000000000D000000543230315F42414C53544F494D0100000000
      000F000000543230315F4E414B4449534B4F4E540100000000000E0000005432
      30315F42414C5543484554410100000000000E000000543230315F4D4553544F
      56454B530100000000000F000000543230315F494E4E56454B53485241010000
      0000000F000000543230315F54494E56454B534852410100000000000F000000
      543230315F4F47524E56454B4852410100000000000E000000543230315F434F
      554E54525F48520100000000000A000000543230315F4F534E4F560100000000
      0009000000543230315F5052494D01000000000010000000543230315F56454B
      5353554D5F5553440100000000000B000000543230315F444154455F31010000
      0000000B000000543230315F444154455F320100000000000D00000054323031
      5F56454B53524154450100000000000F000000543230315F42414C53544F494D
      5F310100000000000D000000543230315F43415445474F52590100000000000B
      000000543230315F5245534552560100000000000E000000543230315F524541
      4C53544F494D0100000000000E000000543230315F535049535F444154450100
      0000000010000000543230315F56454B534F534E535049530100000000001000
      0000543230315F4B4F4E54525052495A5F310100000000000F00000054323031
      5F494E4E4B4F4E54525F310100000000000F000000543230315F54494E4B4F4E
      54525F3101000000000011000000543230315F4B4F4E54524147454E545F3101
      000000000010000000543230315F4F47524E4B4F4E54525F3101000000000010
      000000543230315F434F554E54525F4B415F310100000000000F000000543230
      315F434F4D4D454E545F3231010000000000}
    Top = 186
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
    object odsListT201_ID: TFloatField
      FieldName = 'T201_ID'
    end
    object odsListT201_TINVEKSDAT: TStringField
      FieldName = 'T201_TINVEKSDAT'
      Size = 50
    end
    object odsListT201_OGRNVEKDAT: TStringField
      FieldName = 'T201_OGRNVEKDAT'
      Size = 50
    end
    object odsListT201_VEKSSERIAL: TStringField
      FieldName = 'T201_VEKSSERIAL'
      Size = 255
    end
    object odsListT201_VEKSBLANK: TStringField
      FieldName = 'T201_VEKSBLANK'
      Size = 255
    end
    object odsListT201_VEKSDTSOST: TDateTimeField
      FieldName = 'T201_VEKSDTSOST'
    end
    object odsListT201_SROKPLAT: TStringField
      FieldName = 'T201_SROKPLAT'
      Size = 255
    end
    object odsListT201_VEKSCODVAL: TFloatField
      FieldName = 'T201_VEKSCODVAL'
    end
    object odsListT201_VEKSSUM: TFloatField
      FieldName = 'T201_VEKSSUM'
    end
    object odsListT201_VEKSDTBAL: TDateTimeField
      FieldName = 'T201_VEKSDTBAL'
    end
    object odsListT201_VEKSOSNPRI: TStringField
      FieldName = 'T201_VEKSOSNPRI'
      Size = 255
    end
    object odsListT201_KONTRAGENT: TStringField
      FieldName = 'T201_KONTRAGENT'
      Size = 255
    end
    object odsListT201_INNKONTR: TStringField
      FieldName = 'T201_INNKONTR'
      Size = 255
    end
    object odsListT201_TINKONTR: TStringField
      FieldName = 'T201_TINKONTR'
      Size = 50
    end
    object odsListT201_OGRNKONTR: TStringField
      FieldName = 'T201_OGRNKONTR'
      Size = 50
    end
    object odsListT201_COUNTR_KA: TFloatField
      FieldName = 'T201_COUNTR_KA'
    end
    object odsListT201_BALSTOIM: TFloatField
      FieldName = 'T201_BALSTOIM'
    end
    object odsListT201_NAKDISKONT: TFloatField
      FieldName = 'T201_NAKDISKONT'
    end
    object odsListT201_BALUCHETA: TStringField
      FieldName = 'T201_BALUCHETA'
      Size = 50
    end
    object odsListT201_MESTOVEKS: TStringField
      FieldName = 'T201_MESTOVEKS'
      Size = 255
    end
    object odsListT201_INNVEKSHRA: TStringField
      FieldName = 'T201_INNVEKSHRA'
      Size = 255
    end
    object odsListT201_TINVEKSHRA: TStringField
      FieldName = 'T201_TINVEKSHRA'
      Size = 50
    end
    object odsListT201_OGRNVEKHRA: TStringField
      FieldName = 'T201_OGRNVEKHRA'
      Size = 50
    end
    object odsListT201_COUNTR_HR: TFloatField
      FieldName = 'T201_COUNTR_HR'
    end
    object odsListT201_OSNOV: TStringField
      FieldName = 'T201_OSNOV'
      Size = 255
    end
    object odsListT201_PRIM: TStringField
      FieldName = 'T201_PRIM'
      Size = 255
    end
    object odsListT201_VEKSSUM_USD: TFloatField
      FieldName = 'T201_VEKSSUM_USD'
    end
    object odsListT201_DATE_1: TDateTimeField
      FieldName = 'T201_DATE_1'
    end
    object odsListT201_DATE_2: TDateTimeField
      FieldName = 'T201_DATE_2'
    end
    object odsListT201_VEKSRATE: TFloatField
      FieldName = 'T201_VEKSRATE'
    end
    object odsListT201_BALSTOIM_1: TFloatField
      FieldName = 'T201_BALSTOIM_1'
    end
    object odsListT201_CATEGORY: TStringField
      FieldName = 'T201_CATEGORY'
      Size = 50
    end
    object odsListT201_RESERV: TFloatField
      FieldName = 'T201_RESERV'
    end
    object odsListT201_REALSTOIM: TFloatField
      FieldName = 'T201_REALSTOIM'
    end
    object odsListT201_SPIS_DATE: TDateTimeField
      FieldName = 'T201_SPIS_DATE'
    end
    object odsListT201_VEKSOSNSPIS: TStringField
      FieldName = 'T201_VEKSOSNSPIS'
      Size = 255
    end
    object odsListT201_KONTRPRIZ_1: TIntegerField
      FieldName = 'T201_KONTRPRIZ_1'
    end
    object odsListT201_INNKONTR_1: TStringField
      FieldName = 'T201_INNKONTR_1'
      Size = 255
    end
    object odsListT201_TINKONTR_1: TStringField
      FieldName = 'T201_TINKONTR_1'
      Size = 50
    end
    object odsListT201_KONTRAGENT_1: TStringField
      FieldName = 'T201_KONTRAGENT_1'
      Size = 255
    end
    object odsListT201_OGRNKONTR_1: TStringField
      FieldName = 'T201_OGRNKONTR_1'
      Size = 50
    end
    object odsListT201_COUNTR_KA_1: TFloatField
      FieldName = 'T201_COUNTR_KA_1'
    end
    object odsListT201_COMMENT_21: TStringField
      FieldName = 'T201_COMMENT_21'
      Size = 1024
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 180
  end
  inherited oqAdd: TOracleQuery
    Top = 189
  end
  inherited oqUpdate: TOracleQuery
    Top = 225
  end
  inherited oqDelete: TOracleQuery
    Top = 265
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 247
  end
end
