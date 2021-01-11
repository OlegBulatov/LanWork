inherited frm32_IssuerEdit: Tfrm32_IssuerEdit
  Left = 101
  Top = 115
  ClientHeight = 603
  ClientWidth = 496
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 570
    Width = 496
    inherited Panel3: TPanel
      Left = 331
    end
  end
  object PageControl1: TPageControl [1]
    Left = 8
    Top = 8
    Width = 481
    Height = 561
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Основные данные'
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 76
        Height = 13
        Caption = 'Наименование'
      end
      object Label11: TLabel
        Left = 8
        Top = 25
        Width = 79
        Height = 26
        Caption = 'Наименование (полное)'
        WordWrap = True
      end
      object Label4: TLabel
        Left = 8
        Top = 56
        Width = 19
        Height = 13
        Caption = 'Тип'
      end
      object Label5: TLabel
        Left = 8
        Top = 81
        Width = 24
        Height = 13
        Caption = 'ИНН'
      end
      object Label2: TLabel
        Left = 8
        Top = 106
        Width = 36
        Height = 13
        Caption = 'Страна'
      end
      object Label7: TLabel
        Left = 8
        Top = 132
        Width = 36
        Height = 13
        Caption = 'Регион'
      end
      object Label6: TLabel
        Left = 8
        Top = 155
        Width = 42
        Height = 13
        Caption = 'ОКОПФ'
      end
      object Label3: TLabel
        Left = 8
        Top = 180
        Width = 29
        Height = 13
        Caption = 'ОГРН'
      end
      object Label9: TLabel
        Left = 275
        Top = 180
        Width = 31
        Height = 13
        Caption = 'Тикер'
      end
      object Label10: TLabel
        Left = 8
        Top = 407
        Width = 71
        Height = 13
        Caption = 'Руководитель'
      end
      object Label8: TLabel
        Left = 8
        Top = 334
        Width = 58
        Height = 13
        Caption = 'Код СПАРК'
      end
      object Label13: TLabel
        Left = 8
        Top = 204
        Width = 31
        Height = 13
        Caption = 'ОКПО'
      end
      object Label14: TLabel
        Left = 275
        Top = 204
        Width = 23
        Height = 13
        Caption = 'КПП'
      end
      object lb1: TLabel
        Left = 8
        Top = 229
        Width = 33
        Height = 13
        Caption = 'ОКФС'
      end
      object lb2: TLabel
        Left = 275
        Top = 229
        Width = 37
        Height = 13
        Caption = 'ОКОГУ'
      end
      object Label15: TLabel
        Left = 270
        Top = 327
        Width = 36
        Height = 26
        Caption = 'Комм. СПАРК'
        WordWrap = True
      end
      object Label16: TLabel
        Left = 8
        Top = 359
        Width = 44
        Height = 26
        Caption = 'Тикеры Blomberg'
        WordWrap = True
      end
      object Label18: TLabel
        Left = 98
        Top = 359
        Width = 28
        Height = 13
        Caption = 'SHS3'
      end
      object Label17: TLabel
        Left = 98
        Top = 382
        Width = 33
        Height = 13
        Caption = 'Биржа'
      end
      object Label19: TLabel
        Left = 270
        Top = 359
        Width = 28
        Height = 13
        Caption = 'SHS4'
      end
      object Label20: TLabel
        Left = 270
        Top = 382
        Width = 33
        Height = 13
        Caption = 'Биржа'
      end
      object Label22: TLabel
        Left = 8
        Top = 508
        Width = 37
        Height = 13
        Caption = 'ОКАТО'
      end
      object Label23: TLabel
        Left = 275
        Top = 56
        Width = 19
        Height = 13
        Caption = 'Вид'
      end
      object ed01: TDBEdit
        Left = 98
        Top = 4
        Width = 367
        Height = 21
        DataField = 'T028_SHOT_NAME'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 0
      end
      object ed06: TDBEdit
        Left = 98
        Top = 28
        Width = 367
        Height = 21
        DataField = 'T036_FULL_NAME'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 1
      end
      object lcb01: TDBLookupComboBox
        Left = 98
        Top = 53
        Width = 147
        Height = 21
        DataField = 'T025_ID'
        DataSource = frm32_IssuerList.dsList
        KeyField = 'T025_ID'
        ListField = 'T025_LONG_NAME'
        ListSource = ds01
        TabOrder = 2
      end
      object ed02: TDBEdit
        Left = 98
        Top = 78
        Width = 367
        Height = 21
        DataField = 'T028_INN'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 3
      end
      object lcb02: TDBLookupComboBox
        Left = 98
        Top = 103
        Width = 367
        Height = 21
        DataField = 'T028_COUNTRY_ID'
        DataSource = frm32_IssuerList.dsList
        KeyField = 'T028_COUNTRY_ID'
        ListField = 'FULL_NAME'
        ListSource = ds02
        TabOrder = 4
      end
      object lcbSelectRgn: TDBLookupComboBox
        Left = 98
        Top = 128
        Width = 367
        Height = 21
        Anchors = [akLeft, akTop, akBottom]
        DataField = 'T028_REGION_CODE'
        DataSource = frm32_IssuerList.dsList
        DropDownRows = 10
        KeyField = 'REGION_CODE'
        ListField = 'REGION_NAME'
        ListSource = dsSelectRgn
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object lcb03: TDBLookupComboBox
        Left = 98
        Top = 152
        Width = 367
        Height = 21
        DataField = 'T037_ID'
        DataSource = frm32_IssuerList.dsList
        KeyField = 'T037_ID'
        ListField = 'T037_LONG_NAME'
        ListSource = ds03
        TabOrder = 6
      end
      object ed03: TDBEdit
        Left = 98
        Top = 177
        Width = 147
        Height = 21
        DataField = 'T036_REG_NUMBER'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 7
      end
      object cb01: TDBCheckBox
        Left = 98
        Top = 257
        Width = 119
        Height = 17
        Caption = 'Признак Банк'
        DataField = 'T036_ISBANK'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 8
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object cb02: TDBCheckBox
        Left = 257
        Top = 257
        Width = 147
        Height = 17
        Hint = 'Отображать при связвании эмиссий'
        Caption = 'Связывать'
        DataField = 'T036_INCLUDE'
        DataSource = frm32_IssuerList.dsList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object ed04: TDBEdit
        Left = 318
        Top = 177
        Width = 148
        Height = 21
        DataField = 'T036_TICKER_SKRIN'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 10
      end
      object ed05: TDBEdit
        Left = 98
        Top = 404
        Width = 367
        Height = 21
        DataField = 'T036_COMPANY_HEAD'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 11
      end
      object chNotFP: TDBCheckBox
        Left = 98
        Top = 305
        Width = 279
        Height = 17
        Caption = 'Не является финансовым посредником'
        DataField = 'T036_NOT_FP'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 12
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object edSparkID: TDBEdit
        Left = 98
        Top = 331
        Width = 147
        Height = 21
        DataField = 'T036_SPARK_ID'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 13
      end
      object ed07: TDBEdit
        Left = 98
        Top = 202
        Width = 147
        Height = 21
        DataField = 'T036_OKPO'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 14
      end
      object ed08: TDBEdit
        Left = 318
        Top = 202
        Width = 148
        Height = 21
        DataField = 'T036_KPP'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 15
      end
      object ed09: TDBEdit
        Left = 98
        Top = 227
        Width = 147
        Height = 21
        DataField = 'T036_OKFS'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 16
      end
      object ed10: TDBEdit
        Left = 318
        Top = 227
        Width = 148
        Height = 21
        DataField = 'T036_OKOGU'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 17
      end
      object cb03: TDBCheckBox
        Left = 98
        Top = 281
        Width = 159
        Height = 17
        Caption = 'Управляющая компания'
        DataField = 'T036_IS_MC'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 18
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object cb04: TDBCheckBox
        Left = 257
        Top = 281
        Width = 204
        Height = 17
        Hint = 'Отображать при связвании эмиссий'
        Caption = 'Подтв. лицензии от РСН и ФСФР'
        DataField = 'T036_IS_RSN'
        DataSource = frm32_IssuerList.dsList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object ed11: TDBEdit
        Left = 318
        Top = 331
        Width = 147
        Height = 21
        DataField = 'T036_SPARK_COMMENT'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 20
      end
      object ed12: TDBEdit
        Left = 148
        Top = 355
        Width = 99
        Height = 21
        DataField = 'SHS3_T167_NAME'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 21
      end
      object ed13: TDBEdit
        Left = 148
        Top = 379
        Width = 99
        Height = 21
        DataField = 'SHS3_T167_EXCHANGE'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 22
      end
      object ed14: TDBEdit
        Left = 318
        Top = 355
        Width = 99
        Height = 21
        DataField = 'SHS4_T167_NAME'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 23
      end
      object ed15: TDBEdit
        Left = 318
        Top = 379
        Width = 99
        Height = 21
        DataField = 'SHS4_T167_EXCHANGE'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 24
      end
      inline fm42_Industry: Tfm42_Industry
        Top = 429
        Height = 72
        TabOrder = 25
        inherited lcbSelect: TDBLookupComboBox
          Width = 369
          DataField = 'T028_INDUSTRY_CODE'
          DataSource = frm32_IssuerList.dsList
        end
        inherited ed01: TDBEdit
          Width = 367
          Enabled = True
          ReadOnly = True
        end
        inherited fm43_Sectors1: Tfm43_Sectors
          Height = 22
          inherited lcbSelect: TDBLookupComboBox
            Width = 369
            DataField = 'T140_ID'
            DataSource = frm32_IssuerList.dsList
          end
        end
        inherited odsSelect: TOracleDataSet
          SQL.Strings = (
            'SELECT CODE,'
            '  INDUSTRY,'
            ' T112_GROUP_NAME'
            'FROM V_405_INDUSTRY_ADV'
            'ORDER BY CODE')
        end
      end
      object ed16: TDBEdit
        Left = 98
        Top = 503
        Width = 147
        Height = 21
        DataField = 'T036_OKATO'
        DataSource = frm32_IssuerList.dsList
        TabOrder = 26
      end
      object lcb04: TDBLookupComboBox
        Left = 318
        Top = 53
        Width = 147
        Height = 21
        DataField = 'T033_ID'
        DataSource = frm32_IssuerList.dsList
        KeyField = 'T033_ID'
        ListField = 'T033_SHORT_NAME'
        ListSource = ds04
        TabOrder = 27
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Доп. информация'
      ImageIndex = 1
      object Label21: TLabel
        Left = 8
        Top = 84
        Width = 63
        Height = 13
        Caption = 'Примечание'
      end
      object Label12: TLabel
        Left = 8
        Top = 10
        Width = 31
        Height = 13
        Caption = 'Адрес'
      end
      object m03: TDBMemo
        Left = 98
        Top = 77
        Width = 367
        Height = 225
        DataField = 'T036_COMMENTS'
        DataSource = frm32_IssuerList.dsList
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object m02: TDBMemo
        Left = 98
        Top = 7
        Width = 367
        Height = 63
        DataField = 'T036_MAIL_ADDRESS'
        DataSource = frm32_IssuerList.dsList
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 16
    Top = 772
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select T025_ID, T025_LONG_NAME'
      'from     V_405_ISSUER_TYPE'
      'order by T025_LONG_NAME'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032355F49440100000000000E000000543032
      355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 144
    Top = 72
    object ods01T025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object ods01T025_LONG_NAME: TStringField
      FieldName = 'T025_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    OnDataChange = ds01DataChange
    Left = 184
    Top = 72
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select * from V_405_COUNTRY')
    QBEDefinition.QBEFieldDefs = {
      04000000050000000200000049440100000000000700000049534F5F44494701
      00000000000A00000053484F52545F4E414D450100000000000900000046554C
      4C5F4E414D450100000000000F000000543032385F434F554E5452595F494401
      0000000000}
    Session = dmMain.OracleSession
    Left = 368
    Top = 136
    object ods02ID: TFloatField
      FieldName = 'ID'
    end
    object ods02ISO_DIG: TFloatField
      FieldName = 'ISO_DIG'
      Required = True
    end
    object ods02SHORT_NAME: TStringField
      FieldName = 'SHORT_NAME'
      Size = 250
    end
    object ods02FULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 293
    end
    object ods02T028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 43
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 408
    Top = 136
  end
  object odsSelectRgn: TOracleDataSet
    SQL.Strings = (
      'SELECT REGION_CODE,'
      '  REGION_NAME'
      'FROM V_405_REGIONS_ADV'
      'ORDER BY REGION_NAME'
      '')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000B000000524547494F4E5F434F44450100000000000B0000
      00524547494F4E5F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 160
    object odsSelectRgnREGION_CODE: TFloatField
      FieldName = 'REGION_CODE'
    end
    object odsSelectRgnREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 250
    end
  end
  object dsSelectRgn: TDataSource
    DataSet = odsSelectRgn
    Left = 232
    Top = 160
  end
  object ods03: TOracleDataSet
    SQL.Strings = (
      'select T037_ID, '
      '       '#39'('#39'||T037_SHOT_NAME||'#39') '#39'||T037_LONG_NAME T037_LONG_NAME '
      'from V_405_ISSUER_INF_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033375F49440100000000000E000000543033
      375F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 368
    Top = 184
    object ods03T037_ID: TFloatField
      FieldName = 'T037_ID'
      Required = True
    end
    object ods03T037_LONG_NAME: TStringField
      FieldName = 'T037_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object ds03: TDataSource
    DataSet = ods03
    Left = 408
    Top = 184
  end
  object ods04: TOracleDataSet
    SQL.Strings = (
      'select T033_ID,'
      '       T033_SHORT_NAME'
      'from   V_405_REZID_TYPE'
      'order by T033_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033335F49440100000000000F000000543033
      335F53484F52545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 388
    Top = 72
  end
  object DataSource1: TDataSource
    Left = 232
    Top = 288
  end
  object ds04: TDataSource
    DataSet = ods04
    Left = 420
    Top = 72
  end
end
