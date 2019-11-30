inherited frm85_StrOwnForNrezList: Tfrm85_StrOwnForNrezList
  Left = 21
  Top = 52
  Width = 1110
  Height = 423
  Caption = 'Структура собственности'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1099
    Height = 337
  end
  inherited Panel2: TPanel
    Top = 337
    Width = 1102
    inherited Panel3: TPanel
      Left = 937
    end
  end
  inherited paRight: TPanel
    Left = 1102
    Height = 337
  end
  inherited paMain: TPanel
    Width = 1099
    Height = 337
    inherited ToolBar2: TToolBar
      Width = 1099
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
      inherited tlbSearch: TToolBar
        Visible = False
        inherited tbSearch: TToolButton
          Enabled = False
          Visible = False
        end
      end
      inherited ToolButton13: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1099
      Height = 251
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 3
              Caption = 'Структура'
            end
            item
              FirstCol = 4
              LastCol = 8
              Caption = 'Ожидаем'
            end
            item
              FirstCol = 9
              LastCol = 12
              Caption = 'Выплачено'
            end
            item
              FirstCol = 13
              LastCol = 16
              Caption = 'Прочие'
            end
            item
              FirstCol = 17
              LastCol = 21
              Caption = 'Непогашенный остаток'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'M050_PROC_DIFF'
          PickList.Strings = ()
          Title.Caption = 'Процент непогаш.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_BUY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Собственник'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_PRC'
          PickList.Strings = ()
          Title.Caption = 'Процент'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип инвестир.'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Ставка налога'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во бумаг'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_PAY'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_SUM'
          PickList.Strings = ()
          Title.Caption = 'Налог ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во бумаг'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_SUM'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_SUM_PAY'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_TAX_SUM'
          PickList.Strings = ()
          Title.Caption = 'Налог ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_OTH'
          PickList.Strings = ()
          Title.Caption = 'Кол-во бумаг'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_OTH'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_PAY_OTH'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_OTH'
          PickList.Strings = ()
          Title.Caption = 'Налог ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_DIFF'
          PickList.Strings = ()
          Title.Caption = 'Кол-во бумаг'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_DIFF'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_PAY_DIFF'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_DIFF'
          PickList.Strings = ()
          Title.Caption = 'Налог ($)'
          Width = 100
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1099
      inherited Panel1: TPanel
        Left = 1072
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1099
      inherited Panel1: TPanel
        Left = 1072
      end
    end
    inherited Panel1: TPanel
      Width = 1099
    end
  end
  inherited StatusBar: TStatusBar
    Top = 370
    Width = 1102
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT V1.NOT_PAY_PRC,'
      '       V1.T028_SHOT_NAME_BUY,'
      '       V1.M030_PRC,'
      '       V1.M050_TYPE_DESC,'
      '       -- ВХОДЯЩИЙ ОСТАТОК'
      '       SUM('
      '           CASE WHEN V1.T055_ID = :T055_ID_BEG THEN'
      '             V1.M009_COUNT_IN'
      '           ELSE'
      '             0'
      '           END'
      '          ) AS M009_COUNT_IN,'
      '       SUM('
      '           CASE WHEN V1.T055_ID = :T055_ID_BEG THEN'
      '             V1.M009_SUM_IN'
      '           ELSE'
      '             0'
      '           END'
      '          ) AS M009_SUM_IN,'
      '       SUM('
      '           CASE WHEN V1.T055_ID = :T055_ID_BEG THEN'
      '             V1.M009_CLEAN_IN'
      '           ELSE'
      '             0'
      '           END'
      '          ) AS M009_CLEAN_IN,'
      '       SUM('
      '           CASE WHEN V1.T055_ID = :T055_ID_BEG THEN'
      '             V1.M009_SUM_IN_TAX'
      '           ELSE'
      '             0'
      '           END'
      '          ) AS M009_SUM_IN_TAX,'
      '       -- РОСТ'
      '       SUM(V1.M009_COUNT_UP) AS M009_COUNT_UP,'
      '       SUM(V1.M009_SUM_UP) AS M009_SUM_UP,'
      '       SUM(V1.M009_CLEAN_UP) AS M009_CLEAN_UP,'
      '       SUM(V1.M009_SUM_UP_TAX) AS M009_SUM_UP_TAX,'
      '       -- ВЫПЛАЧЕНО'
      '       SUM(V1.M009_COUNT_PAYS) AS M009_COUNT_PAYS,'
      '       SUM(V1.M009_PAYS) AS M009_PAYS,'
      '       SUM(V1.M009_CLEAN_PAYS) AS M009_CLEAN_PAYS,'
      '       SUM(V1.M009_PAYS_TAX) AS M009_PAYS_TAX,'
      '       -- ПРОЧИЕ'
      '       SUM(V1.M009_COUNT_OTHER) AS M009_COUNT_OTHER,'
      '       SUM(V1.M009_OTHER) AS M009_OTHER,'
      '       SUM(V1.M009_CLEAN_OTHER) AS M009_CLEAN_OTHER,'
      '       SUM(V1.M009_OTHER_TAX) AS M009_OTHER_TAX,'
      '       -- ПЕРЕОЦЕНКА'
      '       SUM(V1.M009_OVERRATE) AS M009_OVERRATE,'
      '       SUM(V1.M009_CLEAN_OVERRATE) AS M009_CLEAN_OVERRATE,'
      '       SUM(V1.M009_OVERRATE_TAX) AS M009_OVERRATE_TAX,'
      '       -- ИСХОДЯЩИЙ ОСТАТОК'
      '       SUM('
      '           CASE WHEN V1.T055_ID = :T055_ID_END THEN'
      '             V1.M009_COUNT_OUT'
      '           ELSE'
      '             0'
      '           END'
      '          ) AS M009_COUNT_OUT,'
      '       SUM('
      '           CASE WHEN V1.T055_ID = :T055_ID_END THEN'
      '             V1.M009_SUM_OUT'
      '           ELSE'
      '             0'
      '           END'
      '          ) AS M009_SUM_OUT,'
      '       SUM('
      '           CASE WHEN V1.T055_ID = :T055_ID_END THEN'
      '             V1.M009_CLEAN_OUT'
      '           ELSE'
      '             0'
      '           END'
      '          ) AS M009_CLEAN_OUT,'
      '       SUM('
      '           CASE WHEN V1.T055_ID = :T055_ID_END THEN'
      '             V1.M009_SUM_OUT_TAX'
      '           ELSE'
      '             0'
      '           END'
      '          ) AS M009_SUM_OUT_TAX'
      'FROM   V_NR_ISS_STR_FOR_BIND V1'
      'WHERE  V1.T055_ID BETWEEN :T055_ID_BEG AND :T055_ID_END'
      'AND    V1.M050_ID = :m050_id'
      'GROUP BY V1.NOT_PAY_PRC,'
      '         V1.T028_SHOT_NAME_BUY,'
      '         V1.M030_PRC,'
      '         V1.M050_TYPE_DESC')
    Variables.Data = {
      0300000003000000080000003A4D3035305F4944040000000000000000000000
      0C0000003A543035355F49445F4245470400000000000000000000000C000000
      3A543035355F49445F454E44040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000200000000D0000004D3033305F4255595F4E414D4501000000000008
      0000004D3033305F505243010000000000090000004D3035305F545950450100
      00000000070000004D3033305F494401000000000007000000543032385F4944
      0100000000000E0000004D3035305F545950455F444553430100000000000700
      00004D3033315F4944010000000000090000004D3033315F4E414D4501000000
      00000C0000004D3033305F434F4D4D454E540100000000000E00000054303235
      5F53484F545F4E414D45010000000000070000004D3031315F49440100000000
      000A0000004D3033305F434F554E540100000000000F0000004D3033305F454E
      5445525F50524F430100000000000F0000004D3033305F454E5445525F444553
      43010000000000080000004D3035305F53554D0100000000000C0000004D3035
      305F53554D5F5041590100000000000C0000004D3035305F5441585F53554D01
      00000000000E0000004D3035305F5441585F56414C5545010000000000080000
      004D3037395F53554D0100000000000C0000004D3037395F53554D5F50415901
      00000000000C0000004D3037395F5441585F53554D0100000000000D0000004D
      3035305F53554D5F444946460100000000000D0000004D3035305F5041595F44
      4946460100000000000D0000004D3035305F5441585F44494646010000000000
      0E0000004D3035305F50524F435F44494646010000000000070000004D303530
      5F49440100000000000D000000543030315F4F505F434F554E54010000000000
      12000000543030315F4F505F434F554E545F444946460100000000000C000000
      4D3035305F53554D5F4F54480100000000000C0000004D3035305F5041595F4F
      54480100000000000C0000004D3035305F5441585F4F54480100000000001100
      0000543030315F4F505F434F554E545F4F5448010000000000}
    inherited odsListM030_COUNT: TFloatField
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_SUM: TFloatField
      FieldName = 'M050_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_SUM_PAY: TFloatField
      FieldName = 'M050_SUM_PAY'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_TAX_SUM: TFloatField
      FieldName = 'M050_TAX_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_TAX_VALUE: TFloatField
      FieldName = 'M050_TAX_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_SUM: TFloatField
      FieldName = 'M079_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM079_SUM_PAY: TFloatField
      FieldName = 'M079_SUM_PAY'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM079_TAX_SUM: TFloatField
      FieldName = 'M079_TAX_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_SUM_DIFF: TFloatField
      FieldName = 'M050_SUM_DIFF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_PAY_DIFF: TFloatField
      FieldName = 'M050_PAY_DIFF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_TAX_DIFF: TFloatField
      FieldName = 'M050_TAX_DIFF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_PROC_DIFF: TFloatField
      FieldName = 'M050_PROC_DIFF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_ID: TFloatField
      FieldName = 'M050_ID'
      Required = True
    end
    object odsListT001_OP_COUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT001_OP_COUNT_DIFF: TFloatField
      FieldName = 'T001_OP_COUNT_DIFF'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListM050_SUM_OTH: TFloatField
      FieldName = 'M050_SUM_OTH'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_PAY_OTH: TFloatField
      FieldName = 'M050_PAY_OTH'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TAX_OTH: TFloatField
      FieldName = 'M050_TAX_OTH'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_COUNT_OTH: TFloatField
      FieldName = 'T001_OP_COUNT_OTH'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
  end
  inherited odsVersion: TOracleDataSet
    Left = 64
    Top = 65535
  end
  inherited dsVersion: TDataSource
    Left = 104
    Top = 0
  end
  inherited oqAddVer: TOracleQuery
    Left = 376
    Top = 7
  end
  inherited oqDeleteVer: TOracleQuery
    Left = 408
    Top = 7
  end
  inherited oqMakeActive: TOracleQuery
    Left = 440
    Top = 7
  end
end
