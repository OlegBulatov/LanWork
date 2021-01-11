inherited B000_Opers22: TB000_Opers22
  Width = 1085
  inherited xxxDBGrid: TxxxDBGrid
    Top = 117
    Width = 1085
    Height = 286
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
            FirstCol = 11
            LastCol = 21
            Caption = 'Вексель'
          end
          item
            FirstCol = 22
            LastCol = 26
            Caption = 'Первый векселедержатель'
          end
          item
            FirstCol = 30
            LastCol = 34
            Caption = 'Векселедержатель (собственник)'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 14
            LastCol = 16
            Caption = 'Срок и условия погашения'
          end>
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
        FieldName = 'T228_VEKSSERIAL'
        PickList.Strings = ()
        Title.Caption = 'Серия'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSBLANK'
        PickList.Strings = ()
        Title.Caption = 'Номер бланка'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSDTSOST'
        PickList.Strings = ()
        Title.Caption = 'Дата составления'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_SROKPOGASH'
        PickList.Strings = ()
        Title.Caption = 'Условия погашения'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_DATE_1'
        PickList.Strings = ()
        Title.Caption = 'Дата 1'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_DATE_2'
        PickList.Strings = ()
        Title.Caption = 'Дата 2'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSRATE'
        PickList.Strings = ()
        Title.Caption = 'Ставка, % годовых'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSSUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма вал.ном.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSSUM_USD'
        PickList.Strings = ()
        Title.Caption = 'Сумма в $'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSCODVAL'
        PickList.Strings = ()
        Title.Caption = 'Валюта ном.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_REALSTOIM_NOM'
        PickList.Strings = ()
        Title.Caption = 'Стоимость реализации, вал. ном'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSDERJ_1'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_INNDERJ_1'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_OGRNDERJ_1'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_COUNTR_DR1'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_PRIZ_VEKSDERJ_1_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода первого векселедержателя нерезидента'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_BALUCHETA'
        PickList.Strings = ()
        Title.Caption = 'Номер бал. счета второго порядка'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSSOST'
        PickList.Strings = ()
        Title.Caption = 'Состояние векселя'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_DTFAKTPOG'
        PickList.Strings = ()
        Title.Caption = 'Дата факт. погашения'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_VEKSDERJ'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_INNDERJ'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_OGRNDERJKO'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_COUNTR_DR'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_PRIZ_VEKSDERJ_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода векселедержателя (собственника) нерезидента'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T228_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 129
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
    Top = 71
    Width = 1085
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
      Width = 180
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
    Width = 1085
    Height = 71
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
    Top = 96
    Width = 1085
    inherited Panel1: TPanel
      Left = 1058
    end
  end
  inherited actList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Top = 257
    object actInfo: TAction
      Caption = 'Информация'
      Hint = 'Источник записи'
      ImageIndex = 21
      OnExecute = actInfoExecute
      OnUpdate = actInfoUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 196
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
      '  T228_ID,'
      '  T228_VEKSSERIAL,'
      '  T228_VEKSBLANK,'
      '  T228_VEKSDTSOST,'
      '  T228_SROKPOGASH,'
      '  T228_VEKSCODVAL,'
      '  T228_VEKSSUM,'
      '  T228_VEKSDERJ_1,'
      '  T228_INNDERJ_1,'
      '  T228_TINDERJ_1,'
      '  T228_OGRNDERJ_1,'
      '  T228_COUNTR_DR1,'
      '  T228_VEKSSOST,'
      '  T228_DTFAKTPOG,'
      '  T228_VEKSDERJ,'
      '  T228_INNDERJ,'
      '  T228_TINDERJ,'
      '  T228_OGRNDERJKO,'
      '  T228_COUNTR_DR,'
      '  T228_VEKSSUM_USD,'
      '  T228_DATE_1,'
      '  T228_DATE_2,'
      '  T228_VEKSRATE,'
      '  T228_REALSTOIM_NOM,'
      '  T228_COMMENT,'
      '  T228_BALUCHETA,'
      '  T228_PRIZ_VEKSDERJ_1_NREZ,'
      '  T228_PRIZ_VEKSDERJ_NREZ'
      'from V_405_711_SUM_22')
    QBEDefinition.QBEFieldDefs = {
      040000003800000007000000543035315F49440100000000000E000000543035
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
      4E414D455F4D41494E01000000000007000000543232385F4944010000000000
      0F000000543232385F56454B5353455249414C0100000000000E000000543232
      385F56454B53424C414E4B0100000000000F000000543232385F56454B534454
      534F53540100000000000F000000543232385F53524F4B504F47415348010000
      0000000F000000543232385F56454B53434F4456414C0100000000000C000000
      543232385F56454B5353554D0100000000000F000000543232385F56454B5344
      45524A5F310100000000000E000000543232385F494E4E4445524A5F31010000
      0000000E000000543232385F54494E4445524A5F310100000000000F00000054
      3232385F4F47524E4445524A5F310100000000000F000000543232385F434F55
      4E54525F4452310100000000000D000000543232385F56454B53534F53540100
      000000000E000000543232385F445446414B54504F470100000000000D000000
      543232385F56454B534445524A0100000000000C000000543232385F494E4E44
      45524A0100000000000C000000543232385F54494E4445524A0100000000000F
      000000543232385F4F47524E4445524A4B4F0100000000000E00000054323238
      5F434F554E54525F445201000000000010000000543232385F56454B5353554D
      5F5553440100000000000B000000543232385F444154455F310100000000000B
      000000543232385F444154455F320100000000000D000000543232385F56454B
      535241544501000000000012000000543232385F5245414C53544F494D5F4E4F
      4D0100000000000C000000543232385F434F4D4D454E540100000000000E0000
      00543232385F42414C55434845544101000000000019000000543232385F5052
      495A5F56454B534445524A5F315F4E52455A0100000000001700000054323238
      5F5052495A5F56454B534445524A5F4E52455A010000000000}
    BeforeOpen = odsListBeforeOpen
    Top = 194
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
    object odsListT228_ID: TFloatField
      FieldName = 'T228_ID'
    end
    object odsListT228_VEKSSERIAL: TStringField
      FieldName = 'T228_VEKSSERIAL'
      Size = 255
    end
    object odsListT228_VEKSBLANK: TStringField
      FieldName = 'T228_VEKSBLANK'
      Size = 255
    end
    object odsListT228_VEKSDTSOST: TDateTimeField
      FieldName = 'T228_VEKSDTSOST'
    end
    object odsListT228_SROKPOGASH: TStringField
      FieldName = 'T228_SROKPOGASH'
      Size = 255
    end
    object odsListT228_VEKSCODVAL: TIntegerField
      FieldName = 'T228_VEKSCODVAL'
    end
    object odsListT228_VEKSSUM: TFloatField
      FieldName = 'T228_VEKSSUM'
    end
    object odsListT228_VEKSDERJ_1: TStringField
      FieldName = 'T228_VEKSDERJ_1'
      Size = 255
    end
    object odsListT228_INNDERJ_1: TStringField
      FieldName = 'T228_INNDERJ_1'
      Size = 255
    end
    object odsListT228_TINDERJ_1: TStringField
      FieldName = 'T228_TINDERJ_1'
      Size = 50
    end
    object odsListT228_OGRNDERJ_1: TStringField
      FieldName = 'T228_OGRNDERJ_1'
      Size = 50
    end
    object odsListT228_COUNTR_DR1: TIntegerField
      FieldName = 'T228_COUNTR_DR1'
    end
    object odsListT228_VEKSSOST: TStringField
      FieldName = 'T228_VEKSSOST'
      Size = 255
    end
    object odsListT228_DTFAKTPOG: TDateTimeField
      FieldName = 'T228_DTFAKTPOG'
    end
    object odsListT228_VEKSDERJ: TStringField
      FieldName = 'T228_VEKSDERJ'
      Size = 255
    end
    object odsListT228_INNDERJ: TStringField
      FieldName = 'T228_INNDERJ'
      Size = 255
    end
    object odsListT228_TINDERJ: TStringField
      FieldName = 'T228_TINDERJ'
      Size = 50
    end
    object odsListT228_OGRNDERJKO: TStringField
      FieldName = 'T228_OGRNDERJKO'
      Size = 50
    end
    object odsListT228_COUNTR_DR: TIntegerField
      FieldName = 'T228_COUNTR_DR'
    end
    object odsListT228_VEKSSUM_USD: TFloatField
      FieldName = 'T228_VEKSSUM_USD'
    end
    object odsListT228_DATE_1: TDateTimeField
      FieldName = 'T228_DATE_1'
    end
    object odsListT228_DATE_2: TDateTimeField
      FieldName = 'T228_DATE_2'
    end
    object odsListT228_VEKSRATE: TFloatField
      FieldName = 'T228_VEKSRATE'
    end
    object odsListT228_REALSTOIM_NOM: TFloatField
      FieldName = 'T228_REALSTOIM_NOM'
    end
    object odsListT228_COMMENT: TStringField
      FieldName = 'T228_COMMENT'
      Size = 1024
    end
    object odsListT228_BALUCHETA: TStringField
      FieldName = 'T228_BALUCHETA'
      Size = 50
    end
    object odsListT228_PRIZ_VEKSDERJ_1_NREZ: TStringField
      FieldName = 'T228_PRIZ_VEKSDERJ_1_NREZ'
      Size = 3
    end
    object odsListT228_PRIZ_VEKSDERJ_NREZ: TStringField
      FieldName = 'T228_PRIZ_VEKSDERJ_NREZ'
      Size = 3
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 188
  end
  inherited oqAdd: TOracleQuery
    Top = 197
  end
  inherited oqUpdate: TOracleQuery
    Top = 233
  end
  inherited oqDelete: TOracleQuery
    Top = 273
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 255
  end
end
