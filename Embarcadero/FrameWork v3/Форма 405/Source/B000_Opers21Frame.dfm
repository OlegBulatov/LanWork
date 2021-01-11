inherited B000_Opers21: TB000_Opers21
  Width = 1186
  inherited xxxDBGrid: TxxxDBGrid
    Top = 118
    Width = 1186
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
            LastCol = 12
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 13
            LastCol = 27
            Caption = 'Вексель'
          end
          item
            FirstCol = 30
            LastCol = 33
            Caption = 'Контрагент по покупке'
          end
          item
            FirstCol = 35
            LastCol = 40
            Caption = 'Место нахождения векселя'
          end
          item
            FirstCol = 44
            LastCol = 48
            Caption = 'Контрагент по продаже'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 16
            LastCol = 18
            Caption = 'Срок и условия платежа'
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
        FieldName = 'T227_PRIZ_VEKSDAT_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода векселедателя нерезидента'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_OGRNVEKDAT'
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
        FieldName = 'T227_VEKSSERIAL'
        PickList.Strings = ()
        Title.Caption = 'Серия'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSBLANK'
        PickList.Strings = ()
        Title.Caption = 'Номер бланка'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSDTSOST'
        PickList.Strings = ()
        Title.Caption = 'Дата составления'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_SROKPLAT'
        PickList.Strings = ()
        Title.Caption = 'Условия платежа'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_DATE_1'
        PickList.Strings = ()
        Title.Caption = 'Дата 1'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_DATE_2'
        PickList.Strings = ()
        Title.Caption = 'Дата 2'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSRATE'
        PickList.Strings = ()
        Title.Caption = 'Ставка, % годовых'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSSUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма вал.ном.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSCODVAL'
        PickList.Strings = ()
        Title.Caption = 'Валюта ном.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSSUM_USD'
        PickList.Strings = ()
        Title.Caption = 'Сумма в $'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_BALSTOIM_1'
        PickList.Strings = ()
        Title.Caption = 'Покупная стоимость, руб'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_BALSTOIM'
        PickList.Strings = ()
        Title.Caption = 'Балансовая стоимость'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_NAKDISKONT'
        PickList.Strings = ()
        Title.Caption = 'Накопленный дисконт, руб'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_CATEGORY'
        PickList.Strings = ()
        Title.Caption = 'Категория качества'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_RESERV'
        PickList.Strings = ()
        Title.Caption = 'Резерв, руб'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSDTBAL'
        PickList.Strings = ()
        Title.Caption = 'Дата принятия на баланс'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSOSNPRI'
        PickList.Strings = ()
        Title.Caption = 'Основание'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_KONTRAGENT'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_INNKONTR'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_OGRNKONTR'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_COUNTR_KA'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_BALUCHETA'
        PickList.Strings = ()
        Title.Caption = 'Номер бал. счета'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_MESTOVEKS'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_INNVEKSHRA'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_PRIZ_VEKSHRAN_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода векселедержателя - нерезидента'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_OGRNVEKHRA'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_COUNTR_HR'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_OSNOV'
        PickList.Strings = ()
        Title.Caption = 'Основание'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_REALSTOIM'
        PickList.Strings = ()
        Title.Caption = 'Стоимость реализации, руб'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_SPIS_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата списания с баланса'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_VEKSOSNSPIS'
        PickList.Strings = ()
        Title.Caption = 'Основание  списания'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_KONTRAGENT_1'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_INNKONTR_1'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_PRIZ_KONTR_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода контрагента - нерезидента'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_OGRNKONTR_1'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_COUNTR_KA_1'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_PEREOC'
        PickList.Strings = ()
        Title.Caption = 
          'Переоценка векселей - отрицательная (положительная) разница, руб' +
          '.'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_CORR'
        PickList.Strings = ()
        Title.Caption = 
          'Корректировки, увеличивающие (уменьшающие) стоимость векселя, ру' +
          'б.'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_RESERV_CORR'
        PickList.Strings = ()
        Title.Caption = 'Корректировка резервов на возможные потери, руб'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_PRIZ_ORG_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода организации нерезидента'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T227_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 123
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
    Width = 1186
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
      Width = 124
      ButtonHeight = 22
      ButtonWidth = 93
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actInfo
        AutoSize = True
      end
    end
  end
  inherited paFilters: TPanel
    Width = 1186
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
    Width = 1186
    inherited Panel1: TPanel
      Left = 1159
    end
  end
  inherited actList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Top = 304
    object actInfo: TAction
      Caption = 'Информация'
      Hint = 'Источник записи'
      ImageIndex = 21
      OnExecute = actInfoExecute
      OnUpdate = actInfoUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 243
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
      '  T227_ID,'
      '  T227_TINVEKSDAT,'
      '  T227_OGRNVEKDAT,'
      '  T227_VEKSSERIAL,'
      '  T227_VEKSBLANK,'
      '  T227_VEKSDTSOST,'
      '  T227_SROKPLAT,'
      '  T227_VEKSCODVAL,'
      '  T227_VEKSSUM,'
      '  T227_VEKSDTBAL,'
      '  T227_VEKSOSNPRI,'
      '  T227_KONTRAGENT,'
      '  T227_INNKONTR,'
      '  T227_TINKONTR,'
      '  T227_OGRNKONTR,'
      '  T227_COUNTR_KA,'
      '  T227_BALSTOIM,'
      '  T227_NAKDISKONT,'
      '  T227_BALUCHETA,'
      '  T227_MESTOVEKS,'
      '  T227_INNVEKSHRA,'
      '  T227_TINVEKSHRA,'
      '  T227_OGRNVEKHRA,'
      '  T227_COUNTR_HR,'
      '  T227_OSNOV,'
      '  T227_VEKSSUM_USD,'
      '  T227_DATE_1,'
      '  T227_DATE_2,'
      '  T227_VEKSRATE,'
      '  T227_BALSTOIM_1,'
      '  T227_CATEGORY,'
      '  T227_RESERV,'
      '  T227_REALSTOIM,'
      '  T227_SPIS_DATE,'
      '  T227_VEKSOSNSPIS,'
      '  T227_KONTRPRIZ_1,'
      '  T227_INNKONTR_1,'
      '  T227_TINKONTR_1,'
      '  T227_KONTRAGENT_1,'
      '  T227_OGRNKONTR_1,'
      '  T227_COUNTR_KA_1,'
      '  T227_COMMENT,'
      '  T227_PEREOC,'
      '  T227_CORR,'
      '  T227_RESERV_CORR,'
      '  T227_PRIZ_VEKSDAT_NREZ,'
      '  T227_PRIZ_ORG_NREZ,'
      '  T227_PRIZ_VEKSHRAN_NREZ,'
      '  T227_PRIZ_KONTR_NREZ'
      'from V_405_711_SUM_21')
    QBEDefinition.QBEFieldDefs = {
      040000004D00000007000000543035315F49440100000000000E000000543035
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
      4E414D455F4D41494E01000000000007000000543232375F4944010000000000
      0F000000543232375F54494E56454B534441540100000000000F000000543232
      375F4F47524E56454B4441540100000000000F000000543232375F56454B5353
      455249414C0100000000000E000000543232375F56454B53424C414E4B010000
      0000000F000000543232375F56454B534454534F53540100000000000D000000
      543232375F53524F4B504C41540100000000000F000000543232375F56454B53
      434F4456414C0100000000000C000000543232375F56454B5353554D01000000
      00000E000000543232375F56454B53445442414C0100000000000F0000005432
      32375F56454B534F534E5052490100000000000F000000543232375F4B4F4E54
      524147454E540100000000000D000000543232375F494E4E4B4F4E5452010000
      0000000D000000543232375F54494E4B4F4E54520100000000000E0000005432
      32375F4F47524E4B4F4E54520100000000000E000000543232375F434F554E54
      525F4B410100000000000D000000543232375F42414C53544F494D0100000000
      000F000000543232375F4E414B4449534B4F4E540100000000000E0000005432
      32375F42414C5543484554410100000000000E000000543232375F4D4553544F
      56454B530100000000000F000000543232375F494E4E56454B53485241010000
      0000000F000000543232375F54494E56454B534852410100000000000F000000
      543232375F4F47524E56454B4852410100000000000E000000543232375F434F
      554E54525F48520100000000000A000000543232375F4F534E4F560100000000
      0010000000543232375F56454B5353554D5F5553440100000000000B00000054
      3232375F444154455F310100000000000B000000543232375F444154455F3201
      00000000000D000000543232375F56454B53524154450100000000000F000000
      543232375F42414C53544F494D5F310100000000000D000000543232375F4341
      5445474F52590100000000000B000000543232375F5245534552560100000000
      000E000000543232375F5245414C53544F494D0100000000000E000000543232
      375F535049535F4441544501000000000010000000543232375F56454B534F53
      4E5350495301000000000010000000543232375F4B4F4E54525052495A5F3101
      00000000000F000000543232375F494E4E4B4F4E54525F310100000000000F00
      0000543232375F54494E4B4F4E54525F3101000000000011000000543232375F
      4B4F4E54524147454E545F3101000000000010000000543232375F4F47524E4B
      4F4E54525F3101000000000010000000543232375F434F554E54525F4B415F31
      0100000000000C000000543232375F434F4D4D454E540100000000000B000000
      543232375F504552454F4301000000000009000000543232375F434F52520100
      0000000010000000543232375F5245534552565F434F52520100000000001600
      0000543232375F5052495A5F56454B534441545F4E52455A0100000000001200
      0000543232375F5052495A5F4F52475F4E52455A010000000000170000005432
      32375F5052495A5F56454B534852414E5F4E52455A0100000000001400000054
      3232375F5052495A5F4B4F4E54525F4E52455A010000000000}
    Top = 241
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
    object odsListT227_ID: TFloatField
      FieldName = 'T227_ID'
    end
    object odsListT227_TINVEKSDAT: TStringField
      FieldName = 'T227_TINVEKSDAT'
      Size = 50
    end
    object odsListT227_OGRNVEKDAT: TStringField
      FieldName = 'T227_OGRNVEKDAT'
      Size = 50
    end
    object odsListT227_VEKSSERIAL: TStringField
      FieldName = 'T227_VEKSSERIAL'
      Size = 255
    end
    object odsListT227_VEKSBLANK: TStringField
      FieldName = 'T227_VEKSBLANK'
      Size = 255
    end
    object odsListT227_VEKSDTSOST: TDateTimeField
      FieldName = 'T227_VEKSDTSOST'
    end
    object odsListT227_SROKPLAT: TStringField
      FieldName = 'T227_SROKPLAT'
      Size = 255
    end
    object odsListT227_VEKSCODVAL: TIntegerField
      FieldName = 'T227_VEKSCODVAL'
    end
    object odsListT227_VEKSSUM: TFloatField
      FieldName = 'T227_VEKSSUM'
    end
    object odsListT227_VEKSDTBAL: TDateTimeField
      FieldName = 'T227_VEKSDTBAL'
    end
    object odsListT227_VEKSOSNPRI: TStringField
      FieldName = 'T227_VEKSOSNPRI'
      Size = 255
    end
    object odsListT227_KONTRAGENT: TStringField
      FieldName = 'T227_KONTRAGENT'
      Size = 255
    end
    object odsListT227_INNKONTR: TStringField
      FieldName = 'T227_INNKONTR'
      Size = 255
    end
    object odsListT227_TINKONTR: TStringField
      FieldName = 'T227_TINKONTR'
      Size = 50
    end
    object odsListT227_OGRNKONTR: TStringField
      FieldName = 'T227_OGRNKONTR'
      Size = 50
    end
    object odsListT227_COUNTR_KA: TIntegerField
      FieldName = 'T227_COUNTR_KA'
    end
    object odsListT227_BALSTOIM: TFloatField
      FieldName = 'T227_BALSTOIM'
    end
    object odsListT227_NAKDISKONT: TFloatField
      FieldName = 'T227_NAKDISKONT'
    end
    object odsListT227_BALUCHETA: TStringField
      FieldName = 'T227_BALUCHETA'
      Size = 50
    end
    object odsListT227_MESTOVEKS: TStringField
      FieldName = 'T227_MESTOVEKS'
      Size = 255
    end
    object odsListT227_INNVEKSHRA: TStringField
      FieldName = 'T227_INNVEKSHRA'
      Size = 255
    end
    object odsListT227_TINVEKSHRA: TStringField
      FieldName = 'T227_TINVEKSHRA'
      Size = 50
    end
    object odsListT227_OGRNVEKHRA: TStringField
      FieldName = 'T227_OGRNVEKHRA'
      Size = 50
    end
    object odsListT227_COUNTR_HR: TIntegerField
      FieldName = 'T227_COUNTR_HR'
    end
    object odsListT227_OSNOV: TStringField
      FieldName = 'T227_OSNOV'
      Size = 255
    end
    object odsListT227_VEKSSUM_USD: TFloatField
      FieldName = 'T227_VEKSSUM_USD'
    end
    object odsListT227_DATE_1: TDateTimeField
      FieldName = 'T227_DATE_1'
    end
    object odsListT227_DATE_2: TDateTimeField
      FieldName = 'T227_DATE_2'
    end
    object odsListT227_VEKSRATE: TFloatField
      FieldName = 'T227_VEKSRATE'
    end
    object odsListT227_BALSTOIM_1: TFloatField
      FieldName = 'T227_BALSTOIM_1'
    end
    object odsListT227_CATEGORY: TStringField
      FieldName = 'T227_CATEGORY'
      Size = 50
    end
    object odsListT227_RESERV: TFloatField
      FieldName = 'T227_RESERV'
    end
    object odsListT227_REALSTOIM: TFloatField
      FieldName = 'T227_REALSTOIM'
    end
    object odsListT227_SPIS_DATE: TDateTimeField
      FieldName = 'T227_SPIS_DATE'
    end
    object odsListT227_VEKSOSNSPIS: TStringField
      FieldName = 'T227_VEKSOSNSPIS'
      Size = 255
    end
    object odsListT227_KONTRPRIZ_1: TIntegerField
      FieldName = 'T227_KONTRPRIZ_1'
    end
    object odsListT227_INNKONTR_1: TStringField
      FieldName = 'T227_INNKONTR_1'
      Size = 255
    end
    object odsListT227_TINKONTR_1: TStringField
      FieldName = 'T227_TINKONTR_1'
      Size = 50
    end
    object odsListT227_KONTRAGENT_1: TStringField
      FieldName = 'T227_KONTRAGENT_1'
      Size = 255
    end
    object odsListT227_OGRNKONTR_1: TStringField
      FieldName = 'T227_OGRNKONTR_1'
      Size = 50
    end
    object odsListT227_COUNTR_KA_1: TIntegerField
      FieldName = 'T227_COUNTR_KA_1'
    end
    object odsListT227_COMMENT: TStringField
      FieldName = 'T227_COMMENT'
      Size = 1024
    end
    object odsListT227_PEREOC: TFloatField
      FieldName = 'T227_PEREOC'
    end
    object odsListT227_CORR: TFloatField
      FieldName = 'T227_CORR'
    end
    object odsListT227_RESERV_CORR: TFloatField
      FieldName = 'T227_RESERV_CORR'
    end
    object odsListT227_PRIZ_VEKSDAT_NREZ: TStringField
      FieldName = 'T227_PRIZ_VEKSDAT_NREZ'
      Size = 3
    end
    object odsListT227_PRIZ_ORG_NREZ: TStringField
      FieldName = 'T227_PRIZ_ORG_NREZ'
      Size = 3
    end
    object odsListT227_PRIZ_VEKSHRAN_NREZ: TStringField
      FieldName = 'T227_PRIZ_VEKSHRAN_NREZ'
      Size = 3
    end
    object odsListT227_PRIZ_KONTR_NREZ: TStringField
      FieldName = 'T227_PRIZ_KONTR_NREZ'
      Size = 3
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 48
    Top = 235
  end
  inherited oqAdd: TOracleQuery
    Top = 244
  end
  inherited oqUpdate: TOracleQuery
    Top = 280
  end
  inherited oqDelete: TOracleQuery
    Top = 320
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 302
  end
end
