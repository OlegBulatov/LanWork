inherited frm83_DefaultRemainsList: Tfrm83_DefaultRemainsList
  Left = 364
  Top = 179
  Width = 733
  Height = 725
  Caption = 'frm83_DefaultRemainsList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 366
    Width = 725
  end
  inherited spRight: TSplitter
    Left = 722
    Height = 366
  end
  inherited paRight: TPanel
    Left = 725
    Height = 366
  end
  inherited paMain: TPanel
    Width = 722
    Height = 366
    inherited ToolBar2: TToolBar
      Width = 722
      inherited ToolButton7: TToolButton
        Caption = 'Операции'
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 722
      Height = 301
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 11
              Caption = 'В валюте номинала'
            end
            item
              FirstCol = 12
              LastCol = 19
              Caption = 'В долларах США'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 6
              LastCol = 10
              Caption = 'Операции'
            end
            item
              FirstCol = 13
              LastCol = 17
              Caption = 'Операции'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 7
              LastCol = 8
              Caption = 'Погашения'
            end
            item
              FirstCol = 9
              LastCol = 10
              Caption = 'Прочие изменения'
            end
            item
              FirstCol = 14
              LastCol = 15
              Caption = 'Погашения'
            end
            item
              FirstCol = 16
              LastCol = 17
              Caption = 'Прочие изменения'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEF_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEF_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата выплаты'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CURRENCY'
          PickList.Strings = ()
          Title.Caption = 'Валюта'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_IN'
          PickList.Strings = ()
          Title.Caption = 'Остаток на начало периода'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_DEF'
          PickList.Strings = ()
          Title.Caption = 'Дефолт'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_CBONS'
          PickList.Strings = ()
          Title.Caption = 'CBONS'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_405'
          PickList.Strings = ()
          Title.Caption = '405'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_YEAR'
          PickList.Strings = ()
          Title.Caption = 'Списание 1 год'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_BALANCE'
          PickList.Strings = ()
          Title.Caption = 'Ошибки погашений'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_NOM_OUT'
          PickList.Strings = ()
          Title.Caption = 'Остаток на конец периода'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_IN'
          PickList.Strings = ()
          Title.Caption = 'Остаток на начало периода'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_DEF'
          PickList.Strings = ()
          Title.Caption = 'Дефолт'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_CBONS'
          PickList.Strings = ()
          Title.Caption = 'CBONS'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_405'
          PickList.Strings = ()
          Title.Caption = '405'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_YEAR'
          PickList.Strings = ()
          Title.Caption = 'Списание 1 год'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_BALANCE'
          PickList.Strings = ()
          Title.Caption = 'Ошибки погашений'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM_USD_OUT'
          PickList.Strings = ()
          Title.Caption = 'Остаток на конец периода'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USD_COURSE_REVALUATION'
          PickList.Strings = ()
          Title.Caption = 'Переоценка'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAYS_PRC_OUT'
          PickList.Strings = ()
          Title.Caption = 'Процент погашения'
          Width = 60
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 722
      inherited Panel1: TPanel
        Left = 695
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 722
      inherited Panel1: TPanel
        Left = 695
      end
    end
  end
  inherited Panel1: TPanel
    Top = 369
    Width = 725
    Height = 270
    inherited pc01: TPageControl
      Width = 723
      Height = 268
      inherited ts01: TTabSheet
        Caption = 'Погашения'
      end
      object ts02: TTabSheet
        Caption = 'Операции 405ф'
        ImageIndex = 1
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 672
    Width = 725
  end
  inherited pnlButtons: TPanel
    Top = 639
    Width = 725
    inherited OKBtn: TButton
      Left = 1071
    end
    inherited CancelBtn: TButton
      Left = 1151
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
      'SELECT T150_ID,'
      '       T030_ID,'
      '       T028_SHOT_NAME,'
      '       T027_ID,'
      '       T026_SEC_REGN,'
      '       DEF_TYPE_DESC,'
      '       DEF_DATE,'
      '       T031_CURRENCY,'
      '       T055_ID,'
      '       T055_START_DATE,'
      '       T055_END_DATE,'
      '       SUM_NOM_IN,'
      '       SUM_NOM_DEF,'
      '       SUM_NOM_405,'
      '       SUM_NOM_CBONS,'
      '       SUM_NOM_YEAR,'
      '       SUM_NOM_BALANCE,'
      '       SUM_NOM_OUT,'
      '       SUM_USD_IN,'
      '       SUM_USD_DEF,'
      '       SUM_USD_405,'
      '       SUM_USD_CBONS,'
      '       SUM_USD_YEAR,'
      '       SUM_USD_BALANCE,'
      '       SUM_USD_OUT,'
      '       USD_COURSE_REVALUATION,'
      '       REPAYS_PRC_OUT'
      'FROM   V_405_DEFAULTS_BY_PERIOD'
      'WHERE  T055_ID = :T055_ID'
      'AND    T027_ID = :T027_ID')
    Variables.Data = {
      0300000002000000080000003A543032375F4944030000000000000000000000
      080000003A543035355F4944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001B0000000D000000543032365F5345435F5245474E0100000000000E
      000000543032385F53484F545F4E414D4501000000000007000000543032375F
      494401000000000007000000543035355F49440100000000000D000000543033
      315F43555252454E435901000000000007000000543135305F49440100000000
      000D0000004445465F545950455F44455343010000000000080000004445465F
      444154450100000000000A00000053554D5F4E4F4D5F494E0100000000000B00
      000053554D5F4E4F4D5F4445460100000000000B00000053554D5F4E4F4D5F34
      30350100000000000D00000053554D5F4E4F4D5F43424F4E530100000000000C
      00000053554D5F4E4F4D5F594541520100000000000F00000053554D5F4E4F4D
      5F42414C414E43450100000000000B00000053554D5F4E4F4D5F4F5554010000
      0000000A00000053554D5F5553445F494E0100000000000B00000053554D5F55
      53445F4445460100000000000B00000053554D5F5553445F3430350100000000
      000D00000053554D5F5553445F43424F4E530100000000000C00000053554D5F
      5553445F594541520100000000000F00000053554D5F5553445F42414C414E43
      450100000000000B00000053554D5F5553445F4F555401000000000016000000
      5553445F434F555253455F524556414C554154494F4E0100000000000E000000
      5245504159535F5052435F4F555401000000000007000000543033305F494401
      00000000000F000000543035355F53544152545F444154450100000000000D00
      0000543035355F454E445F44415445010000000000}
    AfterScroll = odsListAfterScroll
    object odsListT150_ID: TFloatField
      FieldName = 'T150_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListDEF_TYPE_DESC: TStringField
      FieldName = 'DEF_TYPE_DESC'
      Size = 6
    end
    object odsListDEF_DATE: TDateTimeField
      FieldName = 'DEF_DATE'
    end
    object odsListT031_CURRENCY: TStringField
      FieldName = 'T031_CURRENCY'
      Size = 3
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListSUM_NOM_IN: TFloatField
      FieldName = 'SUM_NOM_IN'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_DEF: TFloatField
      FieldName = 'SUM_NOM_DEF'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_405: TFloatField
      FieldName = 'SUM_NOM_405'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_CBONS: TFloatField
      FieldName = 'SUM_NOM_CBONS'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_YEAR: TFloatField
      FieldName = 'SUM_NOM_YEAR'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_BALANCE: TFloatField
      FieldName = 'SUM_NOM_BALANCE'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_NOM_OUT: TFloatField
      FieldName = 'SUM_NOM_OUT'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_IN: TFloatField
      FieldName = 'SUM_USD_IN'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_DEF: TFloatField
      FieldName = 'SUM_USD_DEF'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_405: TFloatField
      FieldName = 'SUM_USD_405'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_CBONS: TFloatField
      FieldName = 'SUM_USD_CBONS'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_YEAR: TFloatField
      FieldName = 'SUM_USD_YEAR'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_BALANCE: TFloatField
      FieldName = 'SUM_USD_BALANCE'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListSUM_USD_OUT: TFloatField
      FieldName = 'SUM_USD_OUT'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListUSD_COURSE_REVALUATION: TFloatField
      FieldName = 'USD_COURSE_REVALUATION'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListREPAYS_PRC_OUT: TFloatField
      FieldName = 'REPAYS_PRC_OUT'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
  end
  inherited pmFilter: TPopupMenu
    Left = 408
    Top = 80
  end
end
