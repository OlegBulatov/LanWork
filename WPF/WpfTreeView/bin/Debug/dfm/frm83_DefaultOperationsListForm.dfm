inherited frm83_DefaultOperationsList: Tfrm83_DefaultOperationsList
  Left = 34
  Top = 398
  Width = 1292
  Height = 434
  Caption = 'График погашения дефолта'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1281
    Height = 351
  end
  inherited paRight: TPanel
    Left = 1284
    Height = 351
  end
  inherited paMain: TPanel
    Width = 1281
    Height = 351
    inherited ToolBar2: TToolBar
      Width = 1281
      object ToolButton5: TToolButton
        Left = 591
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1281
      Height = 286
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 19
              Caption = 'Параметры расчетов по операциям с ценными бумагами'
            end
            item
              FirstCol = 20
              LastCol = 27
              Caption = 'Характеристика ценной бумаги'
            end
            item
              FirstCol = 47
              LastCol = 50
              Caption = 'Контрагент'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 8
              LastCol = 11
              Caption = 'Сумма платежа'
            end
            item
              FirstCol = 12
              LastCol = 15
              Caption = 'Резидент'
            end
            item
              FirstCol = 16
              LastCol = 19
              Caption = 'Нерезидент'
            end
            item
              FirstCol = 20
              LastCol = 22
              Caption = 'Эмитент'
            end
            item
              FirstCol = 47
              LastCol = 48
              Caption = 'Банк-нерезидента'
            end
            item
              FirstCol = 49
              LastCol = 50
              Caption = 'Нерезидент'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_SELECTED'
          PickList.Strings = ()
          Title.Caption = 'Выбран'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ROW_PRFX'
          PickList.Strings = ()
          Title.Caption = '№ раз.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ROW_NUM'
          PickList.Strings = ()
          Title.Caption = 'Стр.'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          PickList.Strings = ()
          Title.Caption = 'Дата операции'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T011_TYPE_ID'
          PickList.Strings = ()
          Title.Caption = 'Код опер.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_NAME'
          PickList.Strings = ()
          Title.Caption = 'Код н. пл.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во бумаг'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_CR_DESC'
          PickList.Strings = ()
          Title.Caption = 'Код вал. плат.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM'
          PickList.Strings = ()
          Title.Caption = 'Всего'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC'
          PickList.Strings = ()
          Title.Caption = 'Проценты'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Проценты ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_CO_ID'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Фиктивный'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Фиктивный'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REG_NUM'
          PickList.Strings = ()
          Title.Caption = 'Регистр. номер'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_TYPE_ID'
          PickList.Strings = ()
          Title.Caption = 'Код типа ц.б.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_ON'
          PickList.Strings = ()
          Title.Caption = 'Дата регистр.'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OFF'
          PickList.Strings = ()
          Title.Caption = 'Дата погашения'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_CR_DESC'
          PickList.Strings = ()
          Title.Caption = 'Код валюты ц.б.'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N8'
          PickList.Strings = ()
          Title.Caption = 'МЕНА'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N9'
          PickList.Strings = ()
          Title.Caption = 'РАССРОЧКА'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_10'
          PickList.Strings = ()
          Title.Caption = 'ПАКЕТ'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_11'
          PickList.Strings = ()
          Title.Caption = 'БРОКЕР'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N99'
          PickList.Strings = ()
          Title.Caption = 'ИМУЩЕСТВО'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комментарий'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_IS_RANSOM'
          PickList.Strings = ()
          Title.Caption = 'Выкуп эмитентом'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ID'
          PickList.Strings = ()
          Title.Caption = 'Код операции'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Отчетный период'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер КО'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование КО'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Title.Caption = 'Код эмиссии'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Title.Caption = 'Код отчетного периода'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_YEAR_OP'
          PickList.Strings = ()
          Title.Caption = 'Год'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T035_NAME'
          PickList.Strings = ()
          Title.Caption = 'Фиктив.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_MODIF'
          PickList.Strings = ()
          Title.Caption = 'Цена (в $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_RUB'
          PickList.Strings = ()
          Title.Caption = 'Цена (в руб.)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIRECTION_DESC'
          PickList.Strings = ()
          Title.Caption = 'Направление'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_MOD_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Сумма платежа (в млн. $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C11'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C12'
          PickList.Strings = ()
          Title.Caption = 'Код страны'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C16'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C17'
          PickList.Strings = ()
          Title.Caption = 'Код страны'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C18'
          PickList.Strings = ()
          Title.Caption = 'BIC уполномоченного банка'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C19'
          PickList.Strings = ()
          Title.Caption = 'SWIFT банка-нерезидента'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C20'
          PickList.Strings = ()
          Title.Caption = 'Цифр. код страны банка-нерезидента'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Title.Caption = 'ID типа ценной бумаги'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_PROCESSED_DESC'
          PickList.Strings = ()
          Title.Caption = 'К учёту (Участие нерез.)'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DPB_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комментарий ДПБ'
          Width = 150
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1281
      inherited Panel1: TPanel
        Left = 1254
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1281
      inherited Panel1: TPanel
        Left = 1254
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 384
    Width = 1284
  end
  inherited pnlButtons: TPanel
    Top = 351
    Width = 1284
    inherited OKBtn: TButton
      Left = 1651
    end
    inherited CancelBtn: TButton
      Left = 1731
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T150_ID,'
      '         T152_ID,'
      '         IS_SELECTED,'
      '         T001_PART_ID,'
      '         T001_ROW_PRFX,'
      '         T055_ID,'
      '         T002_BANK_CODE,'
      '         T002_BANK_NAME,'
      '         T002_NUMB_IN_YEA_DESC,'
      '         T001_ID,'
      '         T001_ROW_NUM,'
      '         T001_DATE_OP,'
      '         T001_YEAR_OP,'
      '         T027_ID,'
      '         T001_TYPE_ID,'
      '         T011_TYPE_ID,'
      '         T006_NAME,'
      '         T006_DIRECTION_DESC,'
      '         T001_OP_COUNT,'
      '         T001_OP_CR_DESC,'
      '         T001_OP_SUM,'
      '         T001_OP_PROC,'
      '         T001_MOD_OP_SUM_CROSS,'
      '         T001_OP_SUM_CROSS,'
      '         T001_OP_PROC_CROSS,'
      '         T001_OP_MODIF,'
      '         T001_OP_SUM_RUB,'
      '         T001_REZID_NAME,'
      '         T001_REZID_CO_ID,'
      '         T033_NAME,'
      '         T012_FICT_STATE_DESC,'
      '         T001_NREZID_NAME,'
      '         T001_NREZID_COUNTRY,'
      '         T034_NAME,'
      '         T013_FICT_STATE_DESC,'
      '         T028_SHOT_NAME,'
      '         T028_CODE,'
      '         T025_SHOT_NAME,'
      '         T001_REG_NUM,'
      '         T001_DATE_ON,'
      '         T001_DATE_OFF,'
      '         T001_CR_DESC,'
      '         T001_IS_RANSOM,'
      '         T030_ID,'
      '         T001_N8,'
      '         T001_N9,'
      '         T001_10,'
      '         T001_11,'
      '         T001_N99,'
      '         T001_COMMENT,'
      '         T035_NAME,'
      '         T001_C11,'
      '         T001_C12,'
      '         T001_C16,'
      '         T001_C17,'
      '         T001_C18,'
      '         T001_C19,'
      '         T001_C20,'
      '         T001_PROCESSED_DESC,'
      '         T001_DPB_COMMENT'
      'from     V_405_DEFAULT_405_REPAYS V1'
      'where    V1.MONTH_ID_BY_OPDATE = :T055_ID'
      'AND      V1.T030_PARENT_ID = :T030_ID'
      'AND T001_DATE_OP >= :DEF_DATE')
    Variables.Data = {
      0300000003000000080000003A543033305F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000090000003A444546
      5F444154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000003C0000000C000000543030315F504152545F49440100000000000700
      0000543035355F49440100000000000E000000543030325F42414E4B5F434F44
      450100000000000E000000543030325F42414E4B5F4E414D4501000000000015
      000000543030325F4E554D425F494E5F5945415F444553430100000000000700
      0000543030315F49440100000000000C000000543030315F524F575F4E554D01
      00000000000C000000543030315F444154455F4F500100000000000C00000054
      3030315F594541525F4F5001000000000007000000543032375F494401000000
      00000C000000543030315F545950455F49440100000000000C00000054303131
      5F545950455F494401000000000009000000543030365F4E414D450100000000
      0013000000543030365F444952454354494F4E5F444553430100000000000D00
      0000543030315F4F505F434F554E540100000000000F000000543030315F4F50
      5F43525F444553430100000000000B000000543030315F4F505F53554D010000
      0000000C000000543030315F4F505F50524F4301000000000015000000543030
      315F4D4F445F4F505F53554D5F43524F53530100000000001100000054303031
      5F4F505F53554D5F43524F535301000000000012000000543030315F4F505F50
      524F435F43524F53530100000000000D000000543030315F4F505F4D4F444946
      0100000000000F000000543030315F4F505F53554D5F5255420100000000000F
      000000543030315F52455A49445F4E414D450100000000001000000054303031
      5F52455A49445F434F5F494401000000000009000000543033335F4E414D4501
      000000000010000000543030315F4E52455A49445F4E414D4501000000000013
      000000543030315F4E52455A49445F434F554E54525901000000000009000000
      543033345F4E414D450100000000000E000000543032385F53484F545F4E414D
      4501000000000009000000543032385F434F44450100000000000E0000005430
      32355F53484F545F4E414D450100000000000C000000543030315F5245475F4E
      554D0100000000000C000000543030315F444154455F4F4E0100000000000D00
      0000543030315F444154455F4F46460100000000000C000000543030315F4352
      5F444553430100000000000E000000543030315F49535F52414E534F4D010000
      00000007000000543033305F494401000000000007000000543030315F4E3801
      000000000007000000543030315F4E3901000000000007000000543030315F31
      3001000000000007000000543030315F31310100000000000800000054303031
      5F4E39390100000000000C000000543030315F434F4D4D454E54010000000000
      09000000543033355F4E414D4501000000000008000000543030315F43313101
      000000000008000000543030315F43313201000000000008000000543030315F
      43313601000000000008000000543030315F4331370100000000000800000054
      3030315F43313801000000000008000000543030315F43313901000000000008
      000000543030315F43323001000000000013000000543030315F50524F434553
      5345445F4445534301000000000010000000543030315F4450425F434F4D4D45
      4E5401000000000014000000543031325F464943545F53544154455F44455343
      01000000000014000000543031335F464943545F53544154455F444553430100
      0000000007000000543135305F494401000000000007000000543135325F4944
      0100000000000B00000049535F53454C45435445440100000000000D00000054
      3030315F524F575F50524658010000000000}
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT002_BANK_NAME: TStringField
      FieldName = 'T002_BANK_NAME'
      Size = 250
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_YEAR_OP: TStringField
      FieldName = 'T001_YEAR_OP'
      Size = 4
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT001_TYPE_ID: TStringField
      FieldName = 'T001_TYPE_ID'
      Required = True
      Size = 255
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object odsListT006_DIRECTION_DESC: TStringField
      FieldName = 'T006_DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT001_OP_CR_DESC: TStringField
      FieldName = 'T001_OP_CR_DESC'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC: TFloatField
      FieldName = 'T001_OP_PROC'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_MOD_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_MOD_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_MODIF: TFloatField
      FieldName = 'T001_OP_MODIF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_SUM_RUB: TFloatField
      FieldName = 'T001_OP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_REZID_NAME: TStringField
      FieldName = 'T001_REZID_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REZID_CO_ID: TStringField
      FieldName = 'T001_REZID_CO_ID'
      Size = 255
    end
    object odsListT033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
      Size = 50
    end
    object odsListT001_NREZID_NAME: TStringField
      FieldName = 'T001_NREZID_NAME'
      Size = 255
    end
    object odsListT001_NREZID_COUNTRY: TStringField
      FieldName = 'T001_NREZID_COUNTRY'
      Size = 250
    end
    object odsListT034_NAME: TStringField
      FieldName = 'T034_NAME'
      Required = True
      Size = 50
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REG_NUM: TStringField
      FieldName = 'T001_REG_NUM'
      Required = True
      Size = 265
    end
    object odsListT001_DATE_ON: TDateTimeField
      FieldName = 'T001_DATE_ON'
    end
    object odsListT001_DATE_OFF: TDateTimeField
      FieldName = 'T001_DATE_OFF'
    end
    object odsListT001_CR_DESC: TStringField
      FieldName = 'T001_CR_DESC'
      Size = 255
    end
    object odsListT001_IS_RANSOM: TStringField
      FieldName = 'T001_IS_RANSOM'
      Size = 1
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT001_N8: TFloatField
      FieldName = 'T001_N8'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_10: TFloatField
      FieldName = 'T001_10'
    end
    object odsListT001_11: TFloatField
      FieldName = 'T001_11'
    end
    object odsListT001_N99: TFloatField
      FieldName = 'T001_N99'
    end
    object odsListT001_COMMENT: TStringField
      FieldName = 'T001_COMMENT'
      Size = 255
    end
    object odsListT035_NAME: TStringField
      FieldName = 'T035_NAME'
      Required = True
      Size = 50
    end
    object odsListT001_C11: TStringField
      FieldName = 'T001_C11'
      Size = 255
    end
    object odsListT001_C12: TStringField
      FieldName = 'T001_C12'
      Size = 255
    end
    object odsListT001_C16: TStringField
      FieldName = 'T001_C16'
      Size = 255
    end
    object odsListT001_C17: TStringField
      FieldName = 'T001_C17'
      Size = 255
    end
    object odsListT001_C18: TStringField
      FieldName = 'T001_C18'
      Size = 255
    end
    object odsListT001_C19: TStringField
      FieldName = 'T001_C19'
      Size = 255
    end
    object odsListT001_C20: TStringField
      FieldName = 'T001_C20'
      Size = 255
    end
    object odsListT001_PROCESSED_DESC: TStringField
      FieldName = 'T001_PROCESSED_DESC'
      Size = 3
    end
    object odsListT001_DPB_COMMENT: TStringField
      FieldName = 'T001_DPB_COMMENT'
      Size = 255
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT150_ID: TFloatField
      FieldName = 'T150_ID'
    end
    object odsListT152_ID: TFloatField
      FieldName = 'T152_ID'
    end
    object odsListIS_SELECTED: TFloatField
      FieldName = 'IS_SELECTED'
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  pk_405_default.p_operation_add(:T127_ID, :T001_ID);'
      '  pk_405_default.p_calc_default(:T127_ID, :T055_ID);'
      'END;'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A543132375F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000080000003A543030
      315F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  pk_405_default.p_operation_delete(:T127_ID, :T001_ID);'
      '  pk_405_default.p_calc_default(:T127_ID, :T055_ID);'
      'END;'
      ' ')
    Variables.Data = {
      0300000003000000080000003A543132375F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000080000003A543030
      315F4944040000000000000000000000}
  end
  object oq405RepayAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Default_NEW.p_repay_405_add(:T150_ID, :T001_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543135305F4944040000000000000000000000
      080000003A543030315F4944040000000000000000000000}
    Left = 408
    Top = 160
  end
  object oq405RepayDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Default_NEW.p_repay_405_delete(:T152_ID);'
      'END;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543135325F4944040000000000000000000000}
    Left = 408
    Top = 200
  end
end
