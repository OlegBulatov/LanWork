inherited frm38_NewReportsOpGCI: Tfrm38_NewReportsOpGCI
  Left = 2
  Top = 1
  Width = 1022
  Height = 726
  Caption = 'Операции ДИТ'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1011
    Height = 643
  end
  inherited paRight: TPanel
    Left = 1014
    Height = 643
  end
  inherited paMain: TPanel
    Width = 1011
    Height = 643
    inherited ToolBar2: TToolBar
      Width = 1011
      inherited ToolButton17: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1011
      Height = 578
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 16
              Caption = 'Параметры расчетов по операциям с ценными бумагами'
            end
            item
              FirstCol = 17
              LastCol = 21
              Caption = 'Характеристика ценной бумаги'
            end
            item
              FirstCol = 26
              LastCol = 29
              Caption = 'Контрагент'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 11
              LastCol = 13
              Caption = 'Резидент'
            end
            item
              FirstCol = 14
              LastCol = 16
              Caption = 'Нерезидент'
            end
            item
              FirstCol = 26
              LastCol = 27
              Caption = 'Банк-нерезидента'
            end
            item
              FirstCol = 28
              LastCol = 29
              Caption = 'Нерезидент'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
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
          FieldName = 'T001_OP_CR_ID'
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
          FieldName = 'SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROC_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Проценты ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_ID'
          PickList.Strings = ()
          Title.Caption = 'ID типа'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_ID'
          PickList.Strings = ()
          Title.Caption = 'ID типа'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_CODE'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C10'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код типа эмитента (ДИТ)'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Код типа ц.б.'
          Width = 50
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
          FieldName = 'T001_CR_ID'
          PickList.Strings = ()
          Title.Caption = 'Код вал. ц.б.'
          Width = 50
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
          Width = 70
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
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1011
      inherited paLeft02: TPanel
        inherited edSearchText: TEdit
          Height = 29
        end
      end
      inherited paLeft04: TPanel
        inherited edKeyField: TEdit
          Height = 29
        end
      end
      inherited Panel1: TPanel
        Left = 984
        inherited SpeedButton1: TSpeedButton
          Left = 9
        end
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1011
      inherited paLeft02: TPanel
        inherited edSearchText: TEdit
          Height = 29
        end
      end
      inherited paLeft04: TPanel
        inherited edKeyField: TEdit
          Height = 29
        end
      end
      inherited Panel1: TPanel
        Left = 984
        inherited SpeedButton1: TSpeedButton
          Left = 9
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 643
    Width = 1014
  end
  inherited pnlButtons: TPanel
    Top = 662
    Width = 1014
    inherited OKBtn: TButton
      Left = 856
    end
    inherited CancelBtn: TButton
      Left = 936
    end
  end
  inherited dsList: TDataSource
    Top = 230
  end
  inherited ActionList: TActionList
    Top = 230
  end
  inherited PopupMenu: TPopupMenu
    Top = 262
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      ' ID,'
      ' IDENTIFIER,'
      ' N_GR,'
      ' T033_ID,'
      ' T034_ID, '
      ' T025_CODE,'
      ' T011_TYPE_ID,'
      ' T001_OP_COUNT,'
      ' T001_OP_SUM,'
      ' T001_OP_PROC, '
      ' --T001_ROW_PREFIX,'
      ' T001_ROW_PRFX,'
      ' T001_ROW_NUM,'
      ' T001_DATE_OP,'
      ' T027_SEC_TYPE,'
      ' T006_NAME,'
      ' T001_OP_CR_ID, '
      ' T012_NAME,'
      ' T012_CODE,'
      ' T013_NAME,'
      ' T013_CODE, '
      'T001_C10,'
      ' T001_C11,'
      ' T001_C12,'
      ' T001_DATE_ON,'
      ' T001_DATE_OFF,'
      ' T001_CR_ID, '
      ' T001_C16,'
      ' T001_C17,'
      ' T001_C18,'
      ' T001_C19,'
      ' T001_C20, '
      ' T001_N8,'
      ' T001_N9,'
      ' T001_10,'
      ' SUM_CROSS,'
      ' PROC_CROSS'
      'FROM   V_405_OPERATIONS_GCI'
      'WHERE ID = :ID'
      '')
    Variables.Data = {0300000001000000030000003A4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000002400000002000000494401000000000007000000543033335F494401
      000000000007000000543033345F494401000000000009000000543032355F43
      4F44450100000000000C000000543031315F545950455F49440100000000000D
      000000543030315F4F505F434F554E540100000000000B000000543030315F4F
      505F53554D0100000000000C000000543030315F4F505F50524F430100000000
      000C000000543030315F524F575F4E554D0100000000000C000000543030315F
      444154455F4F500100000000000D000000543032375F5345435F545950450100
      0000000009000000543030365F4E414D450100000000000D000000543030315F
      4F505F43525F494401000000000009000000543031325F4E414D450100000000
      0009000000543031325F434F444501000000000009000000543031335F4E414D
      4501000000000009000000543031335F434F4445010000000000080000005430
      30315F43313101000000000008000000543030315F4331320100000000000C00
      0000543030315F444154455F4F4E0100000000000D000000543030315F444154
      455F4F46460100000000000A000000543030315F43525F494401000000000008
      000000543030315F43313601000000000008000000543030315F433137010000
      00000008000000543030315F43313801000000000008000000543030315F4331
      3901000000000008000000543030315F43323001000000000007000000543030
      315F4E3801000000000007000000543030315F4E390100000000000700000054
      3030315F31300100000000000900000053554D5F43524F53530100000000000A
      00000050524F435F43524F53530100000000000A0000004944454E5449464945
      52010000000000040000004E5F475201000000000008000000543030315F4331
      300100000000000D000000543030315F524F575F50524658010000000000}
    Top = 230
    object odsListID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object odsListN_GR: TIntegerField
      FieldName = 'N_GR'
      Required = True
    end
    object odsListT033_ID: TIntegerField
      FieldName = 'T033_ID'
    end
    object odsListT034_ID: TIntegerField
      FieldName = 'T034_ID'
    end
    object odsListT025_CODE: TIntegerField
      FieldName = 'T025_CODE'
    end
    object odsListT011_TYPE_ID: TIntegerField
      FieldName = 'T011_TYPE_ID'
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
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
    object odsListT001_ROW_NUM: TFloatField
      FieldName = 'T001_ROW_NUM'
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Size = 255
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 255
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Size = 255
    end
    object odsListT013_CODE: TStringField
      FieldName = 'T013_CODE'
      Size = 255
    end
    object odsListT001_C11: TStringField
      FieldName = 'T001_C11'
      Size = 255
    end
    object odsListT001_C12: TStringField
      FieldName = 'T001_C12'
      Size = 255
    end
    object odsListT001_DATE_ON: TDateTimeField
      FieldName = 'T001_DATE_ON'
    end
    object odsListT001_DATE_OFF: TDateTimeField
      FieldName = 'T001_DATE_OFF'
    end
    object odsListT001_CR_ID: TStringField
      FieldName = 'T001_CR_ID'
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
    object odsListT001_N8: TFloatField
      FieldName = 'T001_N8'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_10: TFloatField
      FieldName = 'T001_10'
    end
    object odsListSUM_CROSS: TFloatField
      FieldName = 'SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPROC_CROSS: TFloatField
      FieldName = 'PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_C10: TStringField
      FieldName = 'T001_C10'
      Size = 255
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 255
    end
  end
  inherited pkList: TOraclePackage
    Top = 262
  end
  inherited oqAdd: TOracleQuery
    Top = 299
  end
  inherited oqUpdate: TOracleQuery
    Top = 299
  end
  inherited oqDelete: TOracleQuery
    Top = 299
  end
  inherited oqDupl: TOracleQuery
    Top = 299
  end
  inherited pmFilter: TPopupMenu
    Top = 211
  end
end
