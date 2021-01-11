inherited B000_Opers23: TB000_Opers23
  Width = 1126
  inherited xxxDBGrid: TxxxDBGrid
    Top = 117
    Width = 1126
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
            LastCol = 12
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 13
            LastCol = 23
            Caption = 'Вексель'
          end
          item
            FirstCol = 25
            LastCol = 30
            Caption = 'Векселедержатель'
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
        Title.Caption = 'Распознано'
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
        FieldName = 'T229_PRIZ_VEKSDAT_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода векселедателя - нерезидента'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_OGRNVEKDAT'
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
        FieldName = 'T229_VEKSSERIAL'
        PickList.Strings = ()
        Title.Caption = 'Серия'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSBLANK'
        PickList.Strings = ()
        Title.Caption = 'Номер бланка'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSDTSOST'
        PickList.Strings = ()
        Title.Caption = 'Дата составления'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_SROKPLAT'
        PickList.Strings = ()
        Title.Caption = 'Условия платежа'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_DATE_1'
        PickList.Strings = ()
        Title.Caption = 'Дата 1'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_DATE_2'
        PickList.Strings = ()
        Title.Caption = 'Дата 2'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_PERCENT'
        PickList.Strings = ()
        Title.Caption = 'Процентная ставка'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSSUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма вал.ном.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSSUM_USD'
        PickList.Strings = ()
        Title.Caption = 'Сумма в $'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSCODVAL'
        PickList.Strings = ()
        Title.Caption = 'Валюта ном.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSDTBAL'
        PickList.Strings = ()
        Title.Caption = 'Дата поступления'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSOSNPRI'
        PickList.Strings = ()
        Title.Caption = 'Основание'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSDERJ'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSDERJSTAT'
        PickList.Strings = ()
        Title.Caption = 'Статус'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_INNDERJ'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_PRIZ_VEKSDERJ_NREZ'
        PickList.Strings = ()
        Title.Caption = 'Признак кода векселедержателя - нерезидента'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_OGRNDERJKO'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_COUNTR_DR'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T229_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T229_VEKSSTATE'
        PickList.Strings = ()
        Title.Caption = 'Состояние векселя'
        Width = 60
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
    Width = 1126
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
      Width = 289
      ButtonHeight = 22
      ButtonWidth = 101
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton2: TToolButton
        Left = 83
        Top = 0
        Action = actInfo
        AutoSize = True
      end
      object ToolButton3: TToolButton
        Left = 180
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 188
        Top = 0
        Action = actGoToLink
        ImageIndex = 13
      end
    end
  end
  inherited paFilters: TPanel
    Width = 1126
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
        Top = 39
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
    end
    inherited Button1: TButton
      Left = 542
      Top = 9
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 96
    Width = 1126
    inherited Panel1: TPanel
      Left = 1099
    end
  end
  inherited actList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Top = 263
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход к связыванию'
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
    object actInfo: TAction
      Caption = 'Информация'
      Hint = 'Источник записи'
      ImageIndex = 21
      OnExecute = actInfoExecute
      OnUpdate = actInfoUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 202
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
      '  T229_ID,'
      '  T229_VEKSSERIAL,'
      '  T229_VEKSBLANK,'
      '  T229_VEKSDTSOST,'
      '  T229_SROKPLAT,'
      '  T229_VEKSSUM,'
      '  T229_VEKSSUM_USD,'
      '  T229_VEKSCODVAL,'
      '  T229_VEKSDTBAL,'
      '  T229_VEKSOSNPRI,'
      '  T229_VEKSDERJ,'
      '  T229_INNDERJ,'
      '  T229_COUNTR_DR,'
      '  T229_TINVEKSDAT,'
      '  T229_OGRNVEKDAT,'
      '  T229_TINDERJ,'
      '  T229_OGRNDERJKO,'
      '  T229_DATE_1,'
      '  T229_DATE_2,'
      '  T229_VEKSDERJSTAT,'
      '  T229_COMMENT,'
      '  T229_PERCENT,'
      '  T229_VEKSSTATE,'
      '  T229_PRIZ_VEKSDAT_NREZ,'
      '  T229_PRIZ_VEKSDERJ_NREZ   '
      'from V_405_711_SUM_23')
    QBEDefinition.QBEFieldDefs = {
      040000003500000007000000543035315F49440100000000000E000000543035
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
      4E414D455F4D41494E01000000000007000000543232395F4944010000000000
      0F000000543232395F56454B5353455249414C0100000000000E000000543232
      395F56454B53424C414E4B0100000000000F000000543232395F56454B534454
      534F53540100000000000D000000543232395F53524F4B504C41540100000000
      000C000000543232395F56454B5353554D01000000000010000000543232395F
      56454B5353554D5F5553440100000000000F000000543232395F56454B53434F
      4456414C0100000000000E000000543232395F56454B53445442414C01000000
      00000F000000543232395F56454B534F534E5052490100000000000D00000054
      3232395F56454B534445524A0100000000000C000000543232395F494E4E4445
      524A0100000000000E000000543232395F434F554E54525F4452010000000000
      0F000000543232395F54494E56454B534441540100000000000F000000543232
      395F4F47524E56454B4441540100000000000C000000543232395F54494E4445
      524A0100000000000F000000543232395F4F47524E4445524A4B4F0100000000
      000B000000543232395F444154455F310100000000000B000000543232395F44
      4154455F3201000000000011000000543232395F56454B534445524A53544154
      0100000000000C000000543232395F434F4D4D454E540100000000000C000000
      543232395F50455243454E540100000000000E000000543232395F56454B5353
      5441544501000000000016000000543232395F5052495A5F56454B534441545F
      4E52455A01000000000017000000543232395F5052495A5F56454B534445524A
      5F4E52455A010000000000}
    BeforeOpen = odsListBeforeOpen
    Top = 200
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
    object odsListT229_ID: TFloatField
      FieldName = 'T229_ID'
    end
    object odsListT229_VEKSSERIAL: TStringField
      FieldName = 'T229_VEKSSERIAL'
      Size = 255
    end
    object odsListT229_VEKSBLANK: TStringField
      FieldName = 'T229_VEKSBLANK'
      Size = 255
    end
    object odsListT229_VEKSDTSOST: TDateTimeField
      FieldName = 'T229_VEKSDTSOST'
    end
    object odsListT229_SROKPLAT: TStringField
      FieldName = 'T229_SROKPLAT'
      Size = 255
    end
    object odsListT229_VEKSSUM: TFloatField
      FieldName = 'T229_VEKSSUM'
    end
    object odsListT229_VEKSSUM_USD: TFloatField
      FieldName = 'T229_VEKSSUM_USD'
    end
    object odsListT229_VEKSCODVAL: TIntegerField
      FieldName = 'T229_VEKSCODVAL'
    end
    object odsListT229_VEKSDTBAL: TDateTimeField
      FieldName = 'T229_VEKSDTBAL'
    end
    object odsListT229_VEKSOSNPRI: TStringField
      FieldName = 'T229_VEKSOSNPRI'
      Size = 255
    end
    object odsListT229_VEKSDERJ: TStringField
      FieldName = 'T229_VEKSDERJ'
      Size = 255
    end
    object odsListT229_INNDERJ: TStringField
      FieldName = 'T229_INNDERJ'
      Size = 255
    end
    object odsListT229_COUNTR_DR: TIntegerField
      FieldName = 'T229_COUNTR_DR'
    end
    object odsListT229_TINVEKSDAT: TStringField
      FieldName = 'T229_TINVEKSDAT'
      Size = 50
    end
    object odsListT229_OGRNVEKDAT: TStringField
      FieldName = 'T229_OGRNVEKDAT'
      Size = 50
    end
    object odsListT229_TINDERJ: TStringField
      FieldName = 'T229_TINDERJ'
      Size = 50
    end
    object odsListT229_OGRNDERJKO: TStringField
      FieldName = 'T229_OGRNDERJKO'
      Size = 50
    end
    object odsListT229_DATE_1: TDateTimeField
      FieldName = 'T229_DATE_1'
    end
    object odsListT229_DATE_2: TDateTimeField
      FieldName = 'T229_DATE_2'
    end
    object odsListT229_VEKSDERJSTAT: TStringField
      FieldName = 'T229_VEKSDERJSTAT'
      Size = 255
    end
    object odsListT229_COMMENT: TStringField
      FieldName = 'T229_COMMENT'
      Size = 1024
    end
    object odsListT229_PERCENT: TFloatField
      FieldName = 'T229_PERCENT'
    end
    object odsListT229_VEKSSTATE: TStringField
      FieldName = 'T229_VEKSSTATE'
      Size = 50
    end
    object odsListT229_PRIZ_VEKSDAT_NREZ: TStringField
      FieldName = 'T229_PRIZ_VEKSDAT_NREZ'
      Size = 3
    end
    object odsListT229_PRIZ_VEKSDERJ_NREZ: TStringField
      FieldName = 'T229_PRIZ_VEKSDERJ_NREZ'
      Size = 3
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 194
  end
  inherited oqAdd: TOracleQuery
    Top = 203
  end
  inherited oqUpdate: TOracleQuery
    Top = 239
  end
  inherited oqDelete: TOracleQuery
    Top = 279
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 261
  end
end
