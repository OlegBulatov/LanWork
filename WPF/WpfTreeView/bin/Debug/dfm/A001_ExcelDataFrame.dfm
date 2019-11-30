inherited A001_ExcelData: TA001_ExcelData
  Width = 1238
  Height = 532
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1238
    Height = 487
    AdvSettings.Indexes = <
      item
        FieldName = 'T201_ID'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 8
            LastCol = 10
            Caption = 'Суммы в $'
          end
          item
            FirstCol = 18
            LastCol = 24
            Caption = 'Наличие ошибок'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T201_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T100_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T201_REGION_ID'
        PickList.Strings = ()
        Title.Caption = 'Код региона'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_REGION_NAME'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T201_INDUSTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Код отрасли'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_INDUSTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Отрасль'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T201_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_COUNTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_SALDO'
        PickList.Strings = ()
        Title.Caption = 'Сальдо'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_SUM_IN'
        PickList.Strings = ()
        Title.Caption = 'Поступило'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T201_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Изъято'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SALDO'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_IN'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_OUT'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T200_REGION_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T200_INDUSTRY_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T200_COUNTRY_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T200_REGION_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_INDUSTRY_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Отасль'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_COUNTRY_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SALDO_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Сальдо'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_IN_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Поступило'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_OUT_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Проверка'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_CHECK_ERROR'
        PickList.Strings = ()
        Title.Caption = 'Проверка'
        Width = 50
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1238
    Enabled = False
    Visible = False
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 512
    Width = 1238
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object DBText1: TDBText
      Left = 71
      Top = 4
      Width = 70
      Height = 17
      DataField = 'ROW_COUNT'
      DataSource = dsCount
    end
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 65
      Height = 13
      Caption = 'Всего строк:'
    end
    object Label2: TLabel
      Left = 140
      Top = 4
      Width = 97
      Height = 13
      Caption = 'Строк с ошибками:'
    end
    object DBText2: TDBText
      Left = 241
      Top = 4
      Width = 70
      Height = 17
      DataField = 'ERR_COUNT'
      DataSource = dsCount
    end
    object Label3: TLabel
      Left = 319
      Top = 4
      Width = 40
      Height = 13
      Caption = 'Сальдо:'
    end
    object DBText3: TDBText
      Left = 361
      Top = 4
      Width = 70
      Height = 17
      DataField = 'T200_SALDO'
      DataSource = dsCount
    end
    object Label4: TLabel
      Left = 446
      Top = 4
      Width = 57
      Height = 13
      Caption = 'Поступило:'
    end
    object DBText4: TDBText
      Left = 505
      Top = 4
      Width = 70
      Height = 17
      DataField = 'T200_SUM_IN'
      DataSource = dsCount
    end
    object Label5: TLabel
      Left = 591
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Изъято:'
    end
    object DBText5: TDBText
      Left = 633
      Top = 4
      Width = 65
      Height = 17
      DataField = 'T200_SUM_OUT'
      DataSource = dsCount
    end
    object Label6: TLabel
      Left = 708
      Top = 4
      Width = 71
      Height = 13
      Caption = 'Расхождение:'
    end
    object DBText6: TDBText
      Left = 779
      Top = 4
      Width = 70
      Height = 17
      DataField = 'T200_SUM_CHECK'
      DataSource = dsCount
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      'T201_ID, T100_ID, T201_REGION_ID, '
      '   T201_REGION_NAME, T201_INDUSTRY_ID, T201_INDUSTRY_NAME, '
      '   T201_COUNTRY_ID, T201_COUNTRY_NAME, T201_SALDO, '
      '   T201_SUM_IN, T201_SUM_OUT, T200_SALDO, '
      '   T200_SUM_IN, T200_SUM_OUT, T200_REGION_ID, '
      '   T200_INDUSTRY_ID, T200_COUNTRY_ID, T055_ID,'
      '  T200_REGION_ERROR,'
      '  T200_INDUSTRY_ERROR,'
      '  T200_COUNTRY_ERROR,'
      '  T200_SALDO_ERROR,'
      '  T200_SUM_IN_ERROR,'
      '  T200_SUM_OUT_ERROR,'
      '  T200_CHECK_ERROR'
      'FROM DS_BOP_BOSS.VS_BOP_SUM_EXCEL')
    QBEDefinition.QBEFieldDefs = {
      040000001900000007000000543230315F494401000000000007000000543130
      305F49440100000000000E000000543230315F524547494F4E5F494401000000
      000010000000543230315F524547494F4E5F4E414D4501000000000010000000
      543230315F494E4455535452595F494401000000000012000000543230315F49
      4E4455535452595F4E414D450100000000000F000000543230315F434F554E54
      52595F494401000000000011000000543230315F434F554E5452595F4E414D45
      0100000000000A000000543230315F53414C444F0100000000000B0000005432
      30315F53554D5F494E0100000000000C000000543230315F53554D5F4F555401
      00000000000A000000543230305F53414C444F0100000000000B000000543230
      305F53554D5F494E0100000000000C000000543230305F53554D5F4F55540100
      000000000E000000543230305F524547494F4E5F494401000000000010000000
      543230305F494E4455535452595F49440100000000000F000000543230305F43
      4F554E5452595F494401000000000007000000543035355F4944010000000000
      11000000543230305F524547494F4E5F4552524F520100000000001300000054
      3230305F494E4455535452595F4552524F520100000000001200000054323030
      5F434F554E5452595F4552524F5201000000000010000000543230305F53414C
      444F5F4552524F5201000000000011000000543230305F53554D5F494E5F4552
      524F5201000000000012000000543230305F53554D5F4F55545F4552524F5201
      000000000010000000543230305F434845434B5F4552524F52010000000000}
    object odsListT201_ID: TFloatField
      FieldName = 'T201_ID'
    end
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
    object odsListT201_REGION_ID: TStringField
      FieldName = 'T201_REGION_ID'
      Size = 255
    end
    object odsListT201_REGION_NAME: TStringField
      FieldName = 'T201_REGION_NAME'
      Size = 255
    end
    object odsListT201_INDUSTRY_ID: TStringField
      FieldName = 'T201_INDUSTRY_ID'
      Size = 255
    end
    object odsListT201_INDUSTRY_NAME: TStringField
      FieldName = 'T201_INDUSTRY_NAME'
      Size = 255
    end
    object odsListT201_COUNTRY_ID: TStringField
      FieldName = 'T201_COUNTRY_ID'
      Size = 255
    end
    object odsListT201_COUNTRY_NAME: TStringField
      FieldName = 'T201_COUNTRY_NAME'
      Size = 255
    end
    object odsListT200_SALDO: TFloatField
      FieldName = 'T200_SALDO'
    end
    object odsListT200_SUM_IN: TFloatField
      FieldName = 'T200_SUM_IN'
    end
    object odsListT200_SUM_OUT: TFloatField
      FieldName = 'T200_SUM_OUT'
    end
    object odsListT200_REGION_ID: TIntegerField
      FieldName = 'T200_REGION_ID'
    end
    object odsListT200_INDUSTRY_ID: TStringField
      FieldName = 'T200_INDUSTRY_ID'
      Size = 3
    end
    object odsListT200_COUNTRY_ID: TIntegerField
      FieldName = 'T200_COUNTRY_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT201_SALDO: TStringField
      Alignment = taRightJustify
      FieldName = 'T201_SALDO'
      Size = 255
    end
    object odsListT201_SUM_IN: TStringField
      Alignment = taRightJustify
      FieldName = 'T201_SUM_IN'
      Size = 255
    end
    object odsListT201_SUM_OUT: TStringField
      Alignment = taRightJustify
      FieldName = 'T201_SUM_OUT'
      Size = 255
    end
    object odsListT200_REGION_ERROR: TStringField
      FieldName = 'T200_REGION_ERROR'
      Size = 19
    end
    object odsListT200_INDUSTRY_ERROR: TStringField
      FieldName = 'T200_INDUSTRY_ERROR'
      Size = 21
    end
    object odsListT200_COUNTRY_ERROR: TStringField
      FieldName = 'T200_COUNTRY_ERROR'
    end
    object odsListT200_SALDO_ERROR: TStringField
      FieldName = 'T200_SALDO_ERROR'
      Size = 29
    end
    object odsListT200_SUM_IN_ERROR: TStringField
      FieldName = 'T200_SUM_IN_ERROR'
      Size = 29
    end
    object odsListT200_SUM_OUT_ERROR: TStringField
      FieldName = 'T200_SUM_OUT_ERROR'
      Size = 29
    end
    object odsListT200_CHECK_ERROR: TStringField
      FieldName = 'T200_CHECK_ERROR'
      Size = 50
    end
  end
  object odsCount: TOracleDataSet
    SQL.Strings = (
      'SELECT ROW_COUNT,'
      '  ERR_COUNT,'
      '  T200_SALDO,'
      '  T200_SUM_IN,'
      '  T200_SUM_OUT,'
      'T200_SUM_CHECK'
      'FROM   DS_BOP_BOSS.VS_BOP_SUM_EXCEL_COUNT'
      '  ')
    QBEDefinition.QBEFieldDefs = {
      040000000600000009000000524F575F434F554E540100000000000900000045
      52525F434F554E540100000000000A000000543230305F53414C444F01000000
      00000B000000543230305F53554D5F494E0100000000000C000000543230305F
      53554D5F4F55540100000000000E000000543230305F53554D5F434845434B01
      0000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 232
    object odsCountROW_COUNT: TFloatField
      Alignment = taLeftJustify
      FieldName = 'ROW_COUNT'
      DisplayFormat = '### ### ### ###'
    end
    object odsCountERR_COUNT: TFloatField
      Alignment = taLeftJustify
      FieldName = 'ERR_COUNT'
      DisplayFormat = '### ### ### ###'
    end
    object odsCountT200_SALDO: TFloatField
      Alignment = taLeftJustify
      FieldName = 'T200_SALDO'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCountT200_SUM_IN: TFloatField
      Alignment = taLeftJustify
      FieldName = 'T200_SUM_IN'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCountT200_SUM_OUT: TFloatField
      Alignment = taLeftJustify
      FieldName = 'T200_SUM_OUT'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCountT200_SUM_CHECK: TFloatField
      FieldName = 'T200_SUM_CHECK'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object dsCount: TDataSource
    DataSet = odsCount
    Left = 232
    Top = 232
  end
  object oqSaveData: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DS_BOP_BOSS.PK_BOP_LOAD.P_SAVE_DATA;'
      '  COMMIT; '
      'END;')
    Session = dmMain.OracleSession
    Left = 192
    Top = 280
  end
end
