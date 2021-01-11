inherited frm83_Remains405List: Tfrm83_Remains405List
  Left = 137
  Top = 265
  Width = 995
  Height = 575
  Caption = 'Изменения остатков по данным формы 405'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 984
    Height = 492
  end
  inherited paRight: TPanel
    Left = 987
    Height = 492
  end
  inherited paMain: TPanel
    Width = 984
    Height = 492
    inherited ToolBar2: TToolBar
      Width = 984
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
      object ToolButton6: TToolButton
        Left = 591
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 599
        Top = 0
        Action = actSetMainType
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 660
        Top = 0
        Action = actSetOthType
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 984
      Height = 427
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 12
              Caption = 'Параметры расчетов по операциям с ценными бумагами'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 9
              LastCol = 12
              Caption = 'Сумма платежа'
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
          FieldName = 'T002_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер КО'
          Visible = False
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
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Отчетный период'
          Visible = False
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
          FieldName = 'T001_REMAINS_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Операции/прочие'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ID'
          PickList.Strings = ()
          Title.Caption = 'Код записи'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IS_FIRST'
          PickList.Strings = ()
          Title.Caption = 'Первичный рынок'
          Width = 60
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 984
      inherited Panel1: TPanel
        Left = 957
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 984
      inherited Panel1: TPanel
        Left = 957
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 525
    Width = 987
  end
  inherited pnlButtons: TPanel
    Top = 492
    Width = 987
    inherited OKBtn: TButton
      Left = 829
    end
    inherited CancelBtn: TButton
      Left = 909
    end
  end
  inherited ActionList: TActionList
    object actSetMainType: TAction
      Caption = 'Операции'
      OnExecute = actSetMainTypeExecute
      OnUpdate = actSetMainTypeUpdate
    end
    object actSetOthType: TAction
      Caption = 'Прочие'
      OnExecute = actSetOthTypeExecute
      OnUpdate = actSetOthTypeUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from V_405_CALC_REMAINS_405'
      'where T030_PARENT_ID = :T030_ID'
      'AND T055_ID = :T055_ID')
    Variables.Data = {
      0300000002000000080000003A543033305F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000002400000007000000543030325F49440100000000000C000000543030
      315F504152545F494401000000000011000000543030355F444953504C41595F
      4E414D4501000000000007000000543035355F49440100000000000E00000054
      3030325F42414E4B5F434F44450100000000000E000000543030325F42414E4B
      5F4E414D4501000000000010000000543030325F5245504F52545F4441544501
      000000000010000000543030325F4E554D425F494E5F59454101000000000015
      000000543030325F4E554D425F494E5F5945415F444553430100000000000A00
      0000543030325F4B505F494401000000000007000000543030315F4944010000
      0000000F000000543030315F524F575F5052454649580100000000000C000000
      543030315F524F575F4E554D0100000000000C000000543030315F444154455F
      4F500100000000000C000000543030315F594541525F4F500100000000000A00
      0000543030315F4F505F49440100000000000C000000543031315F545950455F
      49440100000000000E000000543030315F4F505F5041595F4944010000000000
      09000000543030365F4E414D450100000000000E000000543030365F44495245
      4354494F4E01000000000013000000543030365F444952454354494F4E5F4445
      53430100000000000D000000543030315F4F505F434F554E540100000000000D
      000000543030315F4F505F43525F49440100000000000F000000543030315F4F
      505F43525F444553430100000000000B000000543030315F4F505F53554D0100
      000000000C000000543030315F4F505F50524F43010000000000150000005430
      30315F4D4F445F4F505F53554D5F43524F535301000000000011000000543030
      315F4F505F53554D5F43524F535301000000000012000000543030315F4F505F
      50524F435F43524F53530100000000000D000000543030315F4F505F4D4F4449
      460100000000000F000000543030315F4F505F53554D5F525542010000000000
      07000000543033305F49440100000000000E000000543033305F504152454E54
      5F494401000000000011000000543030315F52454D41494E535F545950450100
      000000000800000049535F46495253540100000000000D000000543030315F52
      4F575F50524658010000000000}
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT005_DISPLAY_NAME: TStringField
      FieldName = 'T005_DISPLAY_NAME'
      Required = True
      Size = 255
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
    object odsListT002_REPORT_DATE: TDateTimeField
      FieldName = 'T002_REPORT_DATE'
      Required = True
    end
    object odsListT002_NUMB_IN_YEA: TStringField
      FieldName = 'T002_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT002_KP_ID: TIntegerField
      FieldName = 'T002_KP_ID'
      Required = True
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_ROW_PREFIX: TIntegerField
      FieldName = 'T001_ROW_PREFIX'
      Required = True
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
      Required = True
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_YEAR_OP: TStringField
      FieldName = 'T001_YEAR_OP'
      Size = 4
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
      Required = True
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsListT001_OP_PAY_ID: TFloatField
      FieldName = 'T001_OP_PAY_ID'
      Required = True
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
      Required = True
    end
    object odsListT006_DIRECTION_DESC: TStringField
      FieldName = 'T006_DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
    end
    object odsListT001_OP_CR_DESC: TStringField
      FieldName = 'T001_OP_CR_DESC'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT001_OP_PROC: TFloatField
      FieldName = 'T001_OP_PROC'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT001_MOD_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_MOD_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT001_OP_MODIF: TFloatField
      FieldName = 'T001_OP_MODIF'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT001_OP_SUM_RUB: TFloatField
      FieldName = 'T001_OP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListT001_REMAINS_TYPE: TIntegerField
      FieldName = 'T001_REMAINS_TYPE'
    end
    object odsListIS_FIRST: TStringField
      FieldName = 'IS_FIRST'
      Required = True
      Size = 1
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
  end
  object oqFlag: TOracleQuery
    SQL.Strings = (
      'begin'
      
        #9'Pk_405_Calc_Remains.p_set_405_remains_type(:T055_ID, :T001_ID, ' +
        ':T030_ID, :T001_REMAINS_TYPE, :IS_FIRST);'
      'end; '
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000005000000080000003A543030315F4944040000000000000000000000
      120000003A543030315F52454D41494E535F5459504503000000000000000000
      0000080000003A543035355F4944040000000000000000000000080000003A54
      3033305F4944040000000000000000000000090000003A49535F464952535405
      0000000000000000000000}
    Left = 328
    Top = 184
  end
end
