inherited F005_Opers21: TF005_Opers21
  Width = 684
  inherited xxxDBGrid: TxxxDBGrid
    Top = 116
    Width = 684
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
            LastCol = 12
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 13
            LastCol = 20
            Caption = 'Вексель'
          end
          item
            FirstCol = 21
            LastCol = 25
            Caption = 'Контрагент по сделке'
          end
          item
            FirstCol = 29
            LastCol = 34
            Caption = 'Место нахождения векселя'
          end
          item
            FirstCol = 36
            LastCol = 37
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
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_MAIN'
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
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKSDAT_OGRN'
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKS_REGION'
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
        FieldName = 'T238_VEKS_SERIAL'
        PickList.Strings = ()
        Title.Caption = 'Серия'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKS_BLANK'
        PickList.Strings = ()
        Title.Caption = 'Номер бланка'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKS_DTSOST'
        PickList.Strings = ()
        Title.Caption = 'Дата составления'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKS_SROKPLAT'
        PickList.Strings = ()
        Title.Caption = 'Срок платежа'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKS_KODVAL'
        PickList.Strings = ()
        Title.Caption = 'Валюта ном.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKS_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма вал.ном.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKS_DTBAL'
        PickList.Strings = ()
        Title.Caption = 'Дата принятия на баланс'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKS_OSNPRI'
        PickList.Strings = ()
        Title.Caption = 'Основание'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_KONTR_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_KONTR_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_KONTR_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_KONTR_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_KONTR_REGION'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_BALSTOIM'
        PickList.Strings = ()
        Title.Caption = 'Балансовая стоимость'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_NAKDISKONT'
        PickList.Strings = ()
        Title.Caption = 'Накопленный дисконт'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_BALUCHETA'
        PickList.Strings = ()
        Title.Caption = 'Номер бал. счета'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_MESTOVEKS'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKSHRA_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKSHRA_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKSHRA_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_VEKSHRA_REGION'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_OSNOV'
        PickList.Strings = ()
        Title.Caption = 'Основание'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T238_PRIM'
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
    Width = 684
  end
  inherited paFilters: TPanel
    Width = 684
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
    Width = 684
    inherited Panel1: TPanel
      Left = 657
    end
  end
  inherited actList: TActionList
    Top = 272
  end
  inherited dsList: TDataSource
    Top = 211
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  IS_LINKED,'
      '  T238_ID,'
      '  T243_ID,'
      '  T055_ID,'
      '  T238_ROW_NUM,'
      '  T028_SHOT_NAME,'
      '  T028_INN,'
      '  T238_VEKSDAT_OGRN,'
      '  T028_COUNTRY_ID,'
      '  T027_SEC_TYPE,'
      '  T026_SEC_REGN,'
      '  T238_VEKS_SERIAL,'
      '  T238_VEKS_BLANK,'
      '  T238_VEKS_DTSOST,'
      '  T238_VEKS_SROKPLAT,'
      '  T238_VEKS_KODVAL,'
      '  T238_VEKS_SUM,'
      '  T238_VEKS_DTBAL,'
      '  T238_VEKS_OSNPRI,'
      '  T238_KONTR_NAME,'
      '  T238_KONTR_CODE,'
      '  T238_KONTR_OGRN,'
      '  T238_KONTR_STRAN,'
      '  T238_BALSTOIM,'
      '  T238_NAKDISKONT,'
      '  T238_BALUCHETA,'
      '  T238_MESTOVEKS,'
      '  T238_VEKSHRA_INN,'
      '  T238_VEKSHRA_OGRN,'
      '  T238_VEKSHRA_STRAN,'
      '  T238_OSNOV,'
      '  T238_PRIM,'
      '  T238_VEKS_REGION,'
      '  T238_KONTR_REGION,'
      '  T238_VEKSHRA_REGION,'
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
      'from V_405_415_DATA_21')
    QBEDefinition.QBEFieldDefs = {
      040000002F0000000900000049535F4C494E4B45440100000000000700000054
      3233385F494401000000000007000000543234335F4944010000000000070000
      00543035355F49440100000000000C000000543233385F524F575F4E554D0100
      000000000E000000543032385F53484F545F4E414D4501000000000008000000
      543032385F494E4E01000000000011000000543233385F56454B534441545F4F
      47524E0100000000000F000000543032385F434F554E5452595F494401000000
      00000D000000543032375F5345435F545950450100000000000D000000543032
      365F5345435F5245474E01000000000010000000543233385F56454B535F5345
      5249414C0100000000000F000000543233385F56454B535F424C414E4B010000
      00000010000000543233385F56454B535F4454534F5354010000000000120000
      00543233385F56454B535F53524F4B504C415401000000000010000000543233
      385F56454B535F4B4F4456414C0100000000000D000000543233385F56454B53
      5F53554D0100000000000F000000543233385F56454B535F445442414C010000
      00000010000000543233385F56454B535F4F534E5052490100000000000F0000
      00543233385F4B4F4E54525F4E414D450100000000000F000000543233385F4B
      4F4E54525F434F44450100000000000F000000543233385F4B4F4E54525F4F47
      524E01000000000010000000543233385F4B4F4E54525F535452414E01000000
      00000D000000543233385F42414C53544F494D0100000000000F000000543233
      385F4E414B4449534B4F4E540100000000000E000000543233385F42414C5543
      484554410100000000000E000000543233385F4D4553544F56454B5301000000
      000010000000543233385F56454B534852415F494E4E01000000000011000000
      543233385F56454B534852415F4F47524E01000000000012000000543233385F
      56454B534852415F535452414E0100000000000A000000543233385F4F534E4F
      5601000000000009000000543233385F5052494D010000000000100000005432
      33385F56454B535F524547494F4E01000000000011000000543233385F4B4F4E
      54525F524547494F4E01000000000013000000543233385F56454B534852415F
      524547494F4E01000000000018000000543234335F5245504F525445525F5348
      4F52545F4E414D4501000000000011000000543234335F5245504F525445525F
      494E4E01000000000007000000543033305F49440100000000000C0000005430
      33305F49445F4D41494E0100000000000C000000543032375F49445F4D41494E
      01000000000012000000543032375F5345435F545950455F4D41494E01000000
      000012000000543032365F5345435F5245474E5F4D41494E0100000000000C00
      0000543032385F49445F4D41494E01000000000013000000543032385F53484F
      545F4E414D455F4D41494E0100000000000D000000543032385F494E4E5F4D41
      494E01000000000011000000543032385F434F554E5452595F4D41494E010000
      0000000E000000543035355F4C4F4E475F4E414D45010000000000}
    Top = 209
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT238_ID: TFloatField
      FieldName = 'T238_ID'
    end
    object odsListT243_ID: TFloatField
      FieldName = 'T243_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT238_ROW_NUM: TFloatField
      FieldName = 'T238_ROW_NUM'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT238_VEKSDAT_OGRN: TStringField
      FieldName = 'T238_VEKSDAT_OGRN'
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
    object odsListT238_VEKS_SERIAL: TStringField
      FieldName = 'T238_VEKS_SERIAL'
      Size = 255
    end
    object odsListT238_VEKS_BLANK: TStringField
      FieldName = 'T238_VEKS_BLANK'
      Size = 255
    end
    object odsListT238_VEKS_DTSOST: TDateTimeField
      FieldName = 'T238_VEKS_DTSOST'
    end
    object odsListT238_VEKS_SROKPLAT: TStringField
      FieldName = 'T238_VEKS_SROKPLAT'
      Size = 255
    end
    object odsListT238_VEKS_KODVAL: TStringField
      FieldName = 'T238_VEKS_KODVAL'
      Size = 3
    end
    object odsListT238_VEKS_SUM: TFloatField
      FieldName = 'T238_VEKS_SUM'
    end
    object odsListT238_VEKS_DTBAL: TDateTimeField
      FieldName = 'T238_VEKS_DTBAL'
    end
    object odsListT238_VEKS_OSNPRI: TStringField
      FieldName = 'T238_VEKS_OSNPRI'
      Size = 255
    end
    object odsListT238_KONTR_NAME: TStringField
      FieldName = 'T238_KONTR_NAME'
      Size = 255
    end
    object odsListT238_KONTR_CODE: TStringField
      FieldName = 'T238_KONTR_CODE'
      Size = 255
    end
    object odsListT238_KONTR_OGRN: TStringField
      FieldName = 'T238_KONTR_OGRN'
      Size = 255
    end
    object odsListT238_KONTR_STRAN: TStringField
      FieldName = 'T238_KONTR_STRAN'
      Size = 3
    end
    object odsListT238_BALSTOIM: TFloatField
      FieldName = 'T238_BALSTOIM'
    end
    object odsListT238_NAKDISKONT: TFloatField
      FieldName = 'T238_NAKDISKONT'
    end
    object odsListT238_BALUCHETA: TStringField
      FieldName = 'T238_BALUCHETA'
      Size = 255
    end
    object odsListT238_MESTOVEKS: TStringField
      FieldName = 'T238_MESTOVEKS'
      Size = 255
    end
    object odsListT238_VEKSHRA_INN: TStringField
      FieldName = 'T238_VEKSHRA_INN'
      Size = 255
    end
    object odsListT238_VEKSHRA_OGRN: TStringField
      FieldName = 'T238_VEKSHRA_OGRN'
      Size = 255
    end
    object odsListT238_VEKSHRA_STRAN: TStringField
      FieldName = 'T238_VEKSHRA_STRAN'
      Size = 3
    end
    object odsListT238_OSNOV: TStringField
      FieldName = 'T238_OSNOV'
      Size = 255
    end
    object odsListT238_PRIM: TStringField
      FieldName = 'T238_PRIM'
      Size = 512
    end
    object odsListT238_VEKS_REGION: TStringField
      FieldName = 'T238_VEKS_REGION'
      Size = 3
    end
    object odsListT238_KONTR_REGION: TStringField
      FieldName = 'T238_KONTR_REGION'
      Size = 3
    end
    object odsListT238_VEKSHRA_REGION: TStringField
      FieldName = 'T238_VEKSHRA_REGION'
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
  end
  inherited PopupMenu: TPopupMenu
    Top = 203
  end
  inherited oqAdd: TOracleQuery
    Top = 212
  end
  inherited oqUpdate: TOracleQuery
    Top = 248
  end
  inherited oqDelete: TOracleQuery
    Top = 288
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 270
  end
end
