inherited F005_Opers22: TF005_Opers22
  Width = 677
  inherited xxxDBGrid: TxxxDBGrid
    Top = 116
    Width = 677
    Height = 287
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 6
            Caption = 'Вексель'
          end
          item
            FirstCol = 7
            LastCol = 11
            Caption = 'Первый векселедержатель'
          end
          item
            FirstCol = 14
            LastCol = 18
            Caption = 'Векселедержатель (собственник)'
          end
          item
            FirstCol = 20
            LastCol = 21
            Caption = 'Отчитывающаяся организация'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T239_VEKS_SERIAL'
        PickList.Strings = ()
        Title.Caption = 'Серия'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKS_NUM'
        PickList.Strings = ()
        Title.Caption = 'Номер'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKS_BLANK'
        PickList.Strings = ()
        Title.Caption = 'Номер бланка'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKS_DTSOST'
        PickList.Strings = ()
        Title.Caption = 'Дата составления'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKS_SROKPOGASH'
        PickList.Strings = ()
        Title.Caption = 'Дата и условия погашения'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKS_KODVAL'
        PickList.Strings = ()
        Title.Caption = 'Валюта ном.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKS_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма вал.ном.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ1_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ1_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ1_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ1_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ1_REGION'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKS_SOST'
        PickList.Strings = ()
        Title.Caption = 'Состояние векселя'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKS_DTFAKTPOG'
        PickList.Strings = ()
        Title.Caption = 'Дата факт. погашения'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_VEKSDERJ_REGION'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T239_PRIM'
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
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 105
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 70
    Width = 677
  end
  inherited paFilters: TPanel
    Width = 677
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
    Width = 677
    inherited Panel1: TPanel
      Left = 650
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '  T239_ID,'
      '  T243_ID,'
      '  T055_ID,'
      '  T239_ROW_NUM,'
      '  T239_VEKS_SERIAL,'
      '  T239_VEKS_NUM,'
      '  T239_VEKS_BLANK,'
      '  T239_VEKS_DTSOST,'
      '  T239_VEKS_KODVAL,'
      '  T239_VEKS_SROKPOGASH,'
      '  T239_VEKS_SUM,'
      '  T239_VEKSDERJ1_NAME,'
      '  T239_VEKSDERJ1_CODE,'
      '  T239_VEKSDERJ1_OGRN,'
      '  T239_VEKSDERJ1_STRAN,  '
      '  T239_VEKS_SOST,'
      '  T239_VEKS_DTFAKTPOG,'
      '  T239_VEKSDERJ_NAME,'
      '  T239_VEKSDERJ_CODE,'
      '  T239_VEKSDERJ_OGRN,'
      '  T239_VEKSDERJ_STRAN,'
      '  T239_PRIM,'
      '  T239_VEKSDERJ1_REGION,'
      '  T239_VEKSDERJ_REGION,'
      '  T243_REPORTER_SHORT_NAME,'
      '  T243_REPORTER_INN,'
      '  T055_LONG_NAME'
      'from V_405_415_DATA_22')
    QBEDefinition.QBEFieldDefs = {
      040000001B00000007000000543233395F494401000000000007000000543234
      335F494401000000000007000000543035355F49440100000000000C00000054
      3233395F524F575F4E554D01000000000010000000543233395F56454B535F53
      455249414C0100000000000D000000543233395F56454B535F4E554D01000000
      00000F000000543233395F56454B535F424C414E4B0100000000001000000054
      3233395F56454B535F4454534F535401000000000010000000543233395F5645
      4B535F4B4F4456414C01000000000014000000543233395F56454B535F53524F
      4B504F474153480100000000000D000000543233395F56454B535F53554D0100
      0000000013000000543233395F56454B534445524A315F4E414D450100000000
      0013000000543233395F56454B534445524A315F434F44450100000000001300
      0000543233395F56454B534445524A315F4F47524E0100000000001400000054
      3233395F56454B534445524A315F535452414E0100000000000E000000543233
      395F56454B535F534F535401000000000013000000543233395F56454B535F44
      5446414B54504F4701000000000012000000543233395F56454B534445524A5F
      4E414D4501000000000012000000543233395F56454B534445524A5F434F4445
      01000000000012000000543233395F56454B534445524A5F4F47524E01000000
      000013000000543233395F56454B534445524A5F535452414E01000000000009
      000000543233395F5052494D01000000000015000000543233395F56454B5344
      45524A315F524547494F4E01000000000014000000543233395F56454B534445
      524A5F524547494F4E01000000000018000000543234335F5245504F52544552
      5F53484F52545F4E414D4501000000000011000000543234335F5245504F5254
      45525F494E4E0100000000000E000000543035355F4C4F4E475F4E414D450100
      00000000}
    object odsListT239_ID: TFloatField
      FieldName = 'T239_ID'
    end
    object odsListT243_ID: TFloatField
      FieldName = 'T243_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT239_ROW_NUM: TFloatField
      FieldName = 'T239_ROW_NUM'
    end
    object odsListT239_VEKS_SERIAL: TStringField
      FieldName = 'T239_VEKS_SERIAL'
      Size = 255
    end
    object odsListT239_VEKS_NUM: TStringField
      FieldName = 'T239_VEKS_NUM'
      Size = 255
    end
    object odsListT239_VEKS_BLANK: TStringField
      FieldName = 'T239_VEKS_BLANK'
      Size = 255
    end
    object odsListT239_VEKS_DTSOST: TDateTimeField
      FieldName = 'T239_VEKS_DTSOST'
    end
    object odsListT239_VEKS_KODVAL: TStringField
      FieldName = 'T239_VEKS_KODVAL'
      Size = 3
    end
    object odsListT239_VEKS_SROKPOGASH: TStringField
      FieldName = 'T239_VEKS_SROKPOGASH'
      Size = 255
    end
    object odsListT239_VEKS_SUM: TFloatField
      FieldName = 'T239_VEKS_SUM'
    end
    object odsListT239_VEKSDERJ1_NAME: TStringField
      FieldName = 'T239_VEKSDERJ1_NAME'
      Size = 255
    end
    object odsListT239_VEKSDERJ1_CODE: TStringField
      FieldName = 'T239_VEKSDERJ1_CODE'
      Size = 255
    end
    object odsListT239_VEKSDERJ1_OGRN: TStringField
      FieldName = 'T239_VEKSDERJ1_OGRN'
      Size = 255
    end
    object odsListT239_VEKSDERJ1_STRAN: TStringField
      FieldName = 'T239_VEKSDERJ1_STRAN'
      Size = 3
    end
    object odsListT239_VEKS_SOST: TStringField
      FieldName = 'T239_VEKS_SOST'
      Size = 255
    end
    object odsListT239_VEKS_DTFAKTPOG: TDateTimeField
      FieldName = 'T239_VEKS_DTFAKTPOG'
    end
    object odsListT239_VEKSDERJ_NAME: TStringField
      FieldName = 'T239_VEKSDERJ_NAME'
      Size = 255
    end
    object odsListT239_VEKSDERJ_CODE: TStringField
      FieldName = 'T239_VEKSDERJ_CODE'
      Size = 255
    end
    object odsListT239_VEKSDERJ_OGRN: TStringField
      FieldName = 'T239_VEKSDERJ_OGRN'
      Size = 255
    end
    object odsListT239_VEKSDERJ_STRAN: TStringField
      FieldName = 'T239_VEKSDERJ_STRAN'
      Size = 3
    end
    object odsListT239_PRIM: TStringField
      FieldName = 'T239_PRIM'
      Size = 512
    end
    object odsListT239_VEKSDERJ1_REGION: TStringField
      FieldName = 'T239_VEKSDERJ1_REGION'
      Size = 3
    end
    object odsListT239_VEKSDERJ_REGION: TStringField
      FieldName = 'T239_VEKSDERJ_REGION'
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
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
  end
end
