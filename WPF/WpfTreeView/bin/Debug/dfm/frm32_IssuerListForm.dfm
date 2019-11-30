inherited frm32_IssuerList: Tfrm32_IssuerList
  Left = 115
  Top = 244
  Width = 736
  Height = 532
  Caption = '\.\, '
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 725
    Height = 446
  end
  inherited paRight: TPanel
    Left = 728
    Height = 446
  end
  inherited paMain: TPanel
    Width = 725
    Height = 446
    inherited ToolBar2: TToolBar
      Width = 725
      inherited ToolButton4: TToolButton
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 597
        Top = 0
        Action = actInnExport
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 725
      Height = 381
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 1
              Caption = 'Наименование'
            end
            item
              FirstCol = 4
              LastCol = 5
              Caption = 'Страна'
            end
            item
              FirstCol = 6
              LastCol = 7
              Caption = 'Регион'
            end
            item
              FirstCol = 8
              LastCol = 10
              Caption = 'Отрасль'
            end
            item
              FirstCol = 26
              LastCol = 29
              Caption = 'Тикеры Bloomberg'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сокращенное'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_FULL_NAME'
          PickList.Strings = ()
          Title.Caption = 'Полное'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_COUNTRY_ID'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_REGION_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_REGION'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T112_GROUP_NAME'
          PickList.Strings = ()
          Title.Caption = 'Международная'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SECTOR_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сектор'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_REG_NUMBER'
          PickList.Strings = ()
          Title.Caption = 'ОГРН'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_OKPO'
          PickList.Strings = ()
          Title.Caption = 'ОКПО'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_KPP'
          PickList.Strings = ()
          Title.Caption = 'КПП'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_OKFS'
          PickList.Strings = ()
          Title.Caption = 'ОКФС'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_OKOGU'
          PickList.Strings = ()
          Title.Caption = 'ОКОГУ'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_TICKER_SKRIN'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T037_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'ОКОПФ'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_ISBANK'
          PickList.Strings = ()
          Title.Caption = 'Признак Банк'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Для связывания эмиссий'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_IS_MC'
          PickList.Strings = ()
          Title.Caption = 'Управляющая компания'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_IS_RSN'
          PickList.Strings = ()
          Title.Caption = 'Подтв. лицензии от РСН и ФСФР'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_NOT_FP'
          PickList.Strings = ()
          Title.Caption = 'Признак - не ФП для ПБ'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_SPARK_ID'
          PickList.Strings = ()
          Title.Caption = 'Код СПАРК'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_SPARK_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комм. СПАРК'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SHS3_T167_NAME'
          PickList.Strings = ()
          Title.Caption = 'SHS3'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SHS3_T167_EXCHANGE'
          PickList.Strings = ()
          Title.Caption = 'Биржа'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SHS4_T167_NAME'
          PickList.Strings = ()
          Title.Caption = 'SHS4'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SHS4_T167_EXCHANGE'
          PickList.Strings = ()
          Title.Caption = 'Биржа'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_COMPANY_HEAD'
          PickList.Strings = ()
          Title.Caption = 'Руководитель'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_MAIL_ADDRESS'
          PickList.Strings = ()
          Title.Caption = 'Адрес'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ISSUER_LAST_UPDATE'
          PickList.Strings = ()
          Title.Caption = 'Дата изменения'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_COMMENTS'
          PickList.Strings = ()
          Title.Caption = 'Примечание ДС'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 725
      inherited Panel1: TPanel
        Left = 698
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 725
      inherited Panel1: TPanel
        Left = 698
      end
      inherited chbType: TCheckBox
        Checked = True
        State = cbChecked
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 479
    Width = 728
  end
  inherited pnlButtons: TPanel
    Top = 446
    Width = 728
    inherited OKBtn: TButton
      Left = 1281
    end
    inherited CancelBtn: TButton
      Left = 1361
    end
  end
  inherited ActionList: TActionList
    object actClearSelect: TAction
      Caption = 'Исключить'
      Hint = 'Исключить эмитент из реестра'
      ImageIndex = 19
      OnExecute = actClearSelectExecute
      OnUpdate = actClearSelectUpdate
    end
    object actInnExport: TAction
      Caption = 'Экспорт ИНН'
      ImageIndex = 5
      OnExecute = actInnExportExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  /*+ FIRST _ROWS */'
      '       T028_ID,'
      '       T036_FULL_NAME,'
      '       T028_SHOT_NAME,'
      '       T036_ISBANK,'
      '       T036_INCLUDE,'
      '       T028_INN,'
      '       T025_ID,'
      '       T025_SHOT_NAME,'
      '       T036_TICKER_SKRIN,'
      '       T036_MAIL_ADDRESS,'
      '       T036_REG_NUMBER,'
      '       T036_COMPANY_HEAD,'
      '       T028_REGION,'
      '       T028_INDUSTRY,'
      '       T112_GROUP_NAME,'
      '       T037_ID,'
      '       T036_ID,'
      '       T028_COUNTRY_ID,'
      '       COUNTRY_NAME,'
      '       T028_CODE,'
      '       T028_REGION_CODE,'
      '       T028_INDUSTRY_CODE,'
      '       T140_ID,'
      '       SECTOR_NAME,'
      '       T036_NOT_FP,'
      '       T036_KPP,'
      '       T036_OKFS,'
      '       T036_OKOGU,'
      '       T036_SPARK_COMMENT,'
      '       T036_SPARK_ID,'
      '       T036_OKPO, '
      '       ISSUER_LAST_UPDATE,'
      '       T036_IS_MC,'
      '       T036_IS_RSN,'
      '       T037_LONG_NAME,'
      '       SHS3_T167_NAME,'
      '       SHS3_T167_EXCHANGE,'
      '       SHS4_T167_NAME,'
      '       SHS4_T167_EXCHANGE,'
      '       T036_COMMENTS,'
      '       T033_ID,'
      '       T036_CR_ID,'
      '       T036_OKATO'
      'FROM   V_405_ISSUER_REGISTRY'
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000002D00000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D4501000000000008000000543032385F494E4E010000
      00000007000000543032355F49440100000000000E000000543032355F53484F
      545F4E414D450100000000000F000000543032385F434F554E5452595F494401
      00000000000C000000434F554E5452595F4E414D450100000000000900000054
      3032385F434F44450100000000000B000000543033365F495342414E4B010000
      0000000C000000543033365F494E434C55444501000000000011000000543033
      365F5449434B45525F534B52494E01000000000011000000543033365F4D4149
      4C5F414444524553530100000000000F000000543033365F5245475F4E554D42
      455201000000000011000000543033365F434F4D50414E595F48454144010000
      00000007000000543033375F49440100000000000D000000543032385F494E44
      555354525901000000000012000000543032385F494E4455535452595F434F44
      450100000000000B000000543032385F524547494F4E01000000000010000000
      543032385F524547494F4E5F434F444501000000000007000000543134305F49
      440100000000000B000000534543544F525F4E414D450100000000000B000000
      543033365F4E4F545F465001000000000008000000543033365F4B5050010000
      00000009000000543033365F4F4B46530100000000000A000000543033365F4F
      4B4F475501000000000012000000543033365F535041524B5F434F4D4D454E54
      0100000000000D000000543033365F535041524B5F4944010000000000090000
      00543033365F4F4B504F010000000000120000004953535545525F4C4153545F
      5550444154450100000000000A000000543033365F49535F4D43010000000000
      0E000000543033365F46554C4C5F4E414D450100000000000E00000054303337
      5F4C4F4E475F4E414D450100000000000B000000543033365F49535F52534E01
      00000000000F000000543131325F47524F55505F4E414D450100000000000C00
      0000534853335F543136375F49440100000000000E000000534853335F543136
      375F4E414D4501000000000012000000534853335F543136375F45584348414E
      47450100000000000C000000534853345F543136375F49440100000000000E00
      0000534853345F543136375F4E414D4501000000000012000000534853345F54
      3136375F45584348414E47450100000000000D000000543033365F434F4D4D45
      4E545301000000000007000000543033335F49440100000000000A0000005430
      33365F43525F49440100000000000A000000543033365F4F4B41544F01000000
      000007000000543033365F4944010000000000}
    UpdatingTable = ' V_405_ISSUER_PARENT'
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT036_ISBANK: TStringField
      FieldName = 'T036_ISBANK'
      Size = 1
    end
    object odsListT036_INCLUDE: TStringField
      FieldName = 'T036_INCLUDE'
      Size = 1
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT036_TICKER_SKRIN: TStringField
      FieldName = 'T036_TICKER_SKRIN'
      Size = 30
    end
    object odsListT036_MAIL_ADDRESS: TStringField
      FieldName = 'T036_MAIL_ADDRESS'
      Size = 255
    end
    object odsListT036_REG_NUMBER: TStringField
      FieldName = 'T036_REG_NUMBER'
      Size = 255
    end
    object odsListT036_COMPANY_HEAD: TStringField
      FieldName = 'T036_COMPANY_HEAD'
      Size = 355
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT028_INDUSTRY: TStringField
      FieldName = 'T028_INDUSTRY'
      Size = 255
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT028_REGION: TStringField
      FieldName = 'T028_REGION'
      Size = 250
    end
    object odsListT028_REGION_CODE: TFloatField
      FieldName = 'T028_REGION_CODE'
    end
    object odsListT140_ID: TIntegerField
      FieldName = 'T140_ID'
      Required = True
    end
    object odsListSECTOR_NAME: TStringField
      FieldName = 'SECTOR_NAME'
      Required = True
      Size = 512
    end
    object odsListT036_NOT_FP: TStringField
      FieldName = 'T036_NOT_FP'
      Size = 1
    end
    object odsListT036_KPP: TFloatField
      FieldName = 'T036_KPP'
    end
    object odsListT036_OKFS: TStringField
      FieldName = 'T036_OKFS'
      Size = 255
    end
    object odsListT036_OKOGU: TStringField
      FieldName = 'T036_OKOGU'
      Size = 255
    end
    object odsListT036_SPARK_COMMENT: TStringField
      FieldName = 'T036_SPARK_COMMENT'
      Size = 255
    end
    object odsListT036_SPARK_ID: TFloatField
      FieldName = 'T036_SPARK_ID'
    end
    object odsListT036_OKPO: TStringField
      FieldName = 'T036_OKPO'
      Size = 255
    end
    object odsListISSUER_LAST_UPDATE: TDateTimeField
      FieldName = 'ISSUER_LAST_UPDATE'
    end
    object odsListT036_IS_MC: TStringField
      FieldName = 'T036_IS_MC'
      Size = 1
    end
    object odsListT036_FULL_NAME: TStringField
      FieldName = 'T036_FULL_NAME'
      Size = 255
    end
    object odsListT037_LONG_NAME: TStringField
      FieldName = 'T037_LONG_NAME'
      Size = 255
    end
    object odsListT036_IS_RSN: TStringField
      FieldName = 'T036_IS_RSN'
      Size = 1
    end
    object odsListT112_GROUP_NAME: TStringField
      FieldName = 'T112_GROUP_NAME'
      Size = 255
    end
    object odsListSHS3_T167_NAME: TStringField
      FieldName = 'SHS3_T167_NAME'
      Required = True
      Size = 50
    end
    object odsListSHS3_T167_EXCHANGE: TStringField
      FieldName = 'SHS3_T167_EXCHANGE'
      Required = True
      Size = 2
    end
    object odsListSHS4_T167_NAME: TStringField
      FieldName = 'SHS4_T167_NAME'
      Required = True
      Size = 50
    end
    object odsListSHS4_T167_EXCHANGE: TStringField
      FieldName = 'SHS4_T167_EXCHANGE'
      Required = True
      Size = 2
    end
    object odsListT036_COMMENTS: TStringField
      FieldName = 'T036_COMMENTS'
      Size = 255
    end
    object odsListT033_ID: TFloatField
      FieldName = 'T033_ID'
      Required = True
    end
    object odsListT036_CR_ID: TStringField
      FieldName = 'T036_CR_ID'
      Size = 3
    end
    object odsListT036_OKATO: TFloatField
      FieldName = 'T036_OKATO'
    end
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers. p_issuer_add('
      '    :T028_ID,'
      '    :T028_SHOT_NAME,'
      '    :T028_INN,'
      '    :T025_ID,'
      '    :T028_COUNTRY_ID,'
      '    :T028_INDUSTRY_CODE,'
      '    :T028_REGION_CODE,'
      '    :T140_ID,'
      '    :T033_ID,'
      '    :T037_ID,'
      '    NULL -- T028_CODE'
      '    );'
      ''
      ' Pk_405_Issuers.p_issuer_inf_add('
      '    :T036_ID,'
      '    :T036_FULL_NAME,'
      '    :T036_ISBANK,'
      '    :T036_INCLUDE,'
      '    :T036_TICKER_SKRIN,'
      '    :T036_MAIL_ADDRESS,'
      '    :T036_REG_NUMBER,'
      '    :T036_COMPANY_HEAD,'
      '    :T036_CR_ID,'
      '    :T036_NOT_FP,'
      '    :T028_ID,'
      '    :T036_KPP,'
      '    :T036_OKFS,'
      '    :T036_OKOGU,'
      '    :T036_SPARK_COMMENT,'
      '    :T036_SPARK_ID,'
      '    :T036_OKPO,'
      '    :T036_OKATO,'
      '    :T036_IS_MC,'
      '    :T036_IS_RSN,'
      '    :T036_COMMENTS'
      '    );'
      ''
      '  Pk_405_Tickers.p_set_issuer_tickers('
      '    :SHS3_T167_NAME,'
      '    :SHS3_T167_EXCHANGE,'
      '    :T028_ID,'
      '    3'
      '    );'
      ''
      '  Pk_405_Tickers.p_set_issuer_tickers('
      '    :SHS4_T167_NAME,'
      '    :SHS4_T167_EXCHANGE,'
      '    :T028_ID,'
      '    4'
      '    );'
      ''
      'END;'
      ' ')
    Variables.Data = {
      03000000220000000F0000003A543032385F53484F545F4E414D450500000000
      00000000000000080000003A543032355F494404000000000000000000000009
      0000003A543032385F494E4E050000000000000000000000100000003A543032
      385F434F554E5452595F49440400000000000000000000000C0000003A543033
      365F495342414E4B0500000000000000000000000D0000003A543033365F494E
      434C554445050000000000000000000000120000003A543033365F5449434B45
      525F534B52494E050000000000000000000000120000003A543033365F4D4149
      4C5F41444452455353050000000000000000000000100000003A543033365F52
      45475F4E554D424552050000000000000000000000120000003A543033365F43
      4F4D50414E595F48454144050000000000000000000000130000003A54303238
      5F494E4455535452595F434F4445050000000000000000000000080000003A54
      3032385F4944040000000000000000000000080000003A543033375F49440400
      00000000000000000000110000003A543032385F524547494F4E5F434F444504
      0000000000000000000000080000003A543134305F4944040000000000000000
      0000000C0000003A543033365F4E4F545F46500500000000000000000000000E
      0000003A543033365F535041524B5F49440400000000000000000000000F0000
      003A543033365F46554C4C5F4E414D450500000000000000000000000A000000
      3A543033365F4F4B504F050000000000000000000000090000003A543033365F
      4B50500400000000000000000000000A0000003A543033365F4F4B4653050000
      0000000000000000000B0000003A543033365F4F4B4F47550500000000000000
      000000000B0000003A543033365F49535F4D430500000000000000000000000C
      0000003A543033365F49535F52534E050000000000000000000000130000003A
      543033365F535041524B5F434F4D4D454E540500000000000000000000001300
      00003A534853335F543136375F45584348414E47450500000000000000000000
      000F0000003A534853345F543136375F4E414D45050000000000000000000000
      130000003A534853345F543136375F45584348414E4745050000000000000000
      0000000F0000003A534853335F543136375F4E414D4505000000000000000000
      0000080000003A543033365F49440500000000000000000000000B0000003A54
      3033365F43525F49440500000000000000000000000B0000003A543033365F4F
      4B41544F0500000000000000000000000E0000003A543033365F434F4D4D454E
      5453050000000000000000000000080000003A543033335F4944050000000000
      000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers. p_issuer_update('
      '    :T028_ID,'
      '    :T028_SHOT_NAME,'
      '    :T028_INN,'
      '    :T025_ID,'
      '    :T028_COUNTRY_ID,'
      '    :T028_INDUSTRY_CODE,'
      '    :T028_REGION_CODE,'
      '    :T140_ID,'
      '    :T033_ID,'
      '    :T037_ID'
      '    );'
      ''
      ' Pk_405_Issuers.p_issuer_inf_update('
      '    :T036_ID,'
      '    :T036_FULL_NAME,'
      '    :T036_ISBANK,'
      '    :T036_INCLUDE,'
      '    :T036_TICKER_SKRIN,'
      '    :T036_MAIL_ADDRESS,'
      '    :T036_REG_NUMBER,'
      '    :T036_COMPANY_HEAD,'
      '    :T036_CR_ID,'
      '    :T036_NOT_FP,'
      '    :T028_ID,'
      '    :T036_KPP,'
      '    :T036_OKFS,'
      '    :T036_OKOGU,'
      '    :T036_SPARK_COMMENT,'
      '    :T036_SPARK_ID,'
      '    :T036_OKPO,'
      '    :T036_OKATO,'
      '    :T036_IS_MC,'
      '    :T036_IS_RSN,'
      '    :T036_COMMENTS'
      '    );'
      ''
      '  Pk_405_Tickers.p_set_issuer_tickers('
      '    :SHS3_T167_NAME,'
      '    :SHS3_T167_EXCHANGE,'
      '    :T028_ID,'
      '    3'
      '    );'
      ''
      '  Pk_405_Tickers.p_set_issuer_tickers('
      '    :SHS4_T167_NAME,'
      '    :SHS4_T167_EXCHANGE,'
      '    :T028_ID,'
      '    4'
      '    );'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000022000000080000003A543032385F4944040000000000000000000000
      0F0000003A543032385F53484F545F4E414D4505000000000000000000000008
      0000003A543032355F4944040000000000000000000000090000003A54303238
      5F494E4E050000000000000000000000100000003A543032385F434F554E5452
      595F49440400000000000000000000000C0000003A543033365F495342414E4B
      0500000000000000000000000D0000003A543033365F494E434C554445050000
      000000000000000000120000003A543033365F5449434B45525F534B52494E05
      0000000000000000000000120000003A543033365F4D41494C5F414444524553
      53050000000000000000000000100000003A543033365F5245475F4E554D4245
      52050000000000000000000000120000003A543033365F434F4D50414E595F48
      454144050000000000000000000000130000003A543032385F494E4455535452
      595F434F4445050000000000000000000000080000003A543033375F49440400
      00000000000000000000110000003A543032385F524547494F4E5F434F444504
      0000000000000000000000080000003A543134305F4944040000000000000000
      0000000C0000003A543033365F4E4F545F46500500000000000000000000000E
      0000003A543033365F535041524B5F49440400000000000000000000000F0000
      003A543033365F46554C4C5F4E414D450500000000000000000000000A000000
      3A543033365F4F4B504F050000000000000000000000090000003A543033365F
      4B50500400000000000000000000000A0000003A543033365F4F4B4653050000
      0000000000000000000B0000003A543033365F4F4B4F47550500000000000000
      000000000B0000003A543033365F49535F4D430500000000000000000000000C
      0000003A543033365F49535F52534E050000000000000000000000130000003A
      543033365F535041524B5F434F4D4D454E540500000000000000000000001300
      00003A534853335F543136375F45584348414E47450500000000000000000000
      000F0000003A534853345F543136375F4E414D45050000000000000000000000
      130000003A534853345F543136375F45584348414E4745050000000000000000
      0000000F0000003A534853335F543136375F4E414D4505000000000000000000
      00000B0000003A543033365F43525F49440500000000000000000000000B0000
      003A543033365F4F4B41544F0500000000000000000000000E0000003A543033
      365F434F4D4D454E5453050000000000000000000000080000003A543033335F
      4944040000000000000000000000080000003A543033365F4944040000000000
      000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_405_Issuers.p_issuer_delete(:T028_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  :o_result := Pk_405_Issuers.f_issuer_check('
      '    :T028_ID,'
      '    :T028_SHOT_NAME,'
      '    :T025_ID,'
      '    :T033_ID,'
      '    :T028_INN,'
      '    :T028_COUNTRY_ID,'
      '    :T037_ID'
      '    );'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      03000000080000000F0000003A543032385F53484F545F4E414D450500000000
      00000000000000080000003A543032355F494404000000000000000000000009
      0000003A543032385F494E4E050000000000000000000000100000003A543032
      385F434F554E5452595F4944050000000000000000000000090000003A4F5F52
      4553554C54040000000000000000000000080000003A543032385F4944040000
      000000000000000000080000003A543033335F49440400000000000000000000
      00080000003A543033375F4944040000000000000000000000}
  end
  object oqClear: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:i_ID);'
      'COMMIT;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000050000003A495F4944040000000000000000000000}
    Left = 376
    Top = 192
  end
  object odsINN: TOracleDataSet
    Session = dmMain.OracleSession
    Left = 376
    Top = 232
  end
end
