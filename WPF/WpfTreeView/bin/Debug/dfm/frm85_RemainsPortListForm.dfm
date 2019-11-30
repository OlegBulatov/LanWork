inherited frm85_RemainsPortList: Tfrm85_RemainsPortList
  Left = 188
  Top = 229
  Width = 842
  Height = 578
  Caption = 'Портфель данных'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 831
    Height = 492
  end
  inherited paRight: TPanel
    Left = 834
    Height = 492
  end
  inherited paMain: TPanel
    Width = 831
    Height = 492
    inherited ToolBar2: TToolBar
      Width = 831
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 597
        Top = 0
        Action = actGoToForm405
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 831
      Height = 427
      AdvSettings.Indexes = <
        item
          FieldName = 'T100_DATE'
          SortType = stAsc
        end
        item
          FieldName = 'T011_ROW_NUM'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 9
              LastCol = 10
              Caption = 'Операция'
            end
            item
              FirstCol = 2
              LastCol = 8
              Caption = 'Портфель (на конец дня)'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T100_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата опер.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T011_ROW_NUM'
          PickList.Strings = ()
          Title.Caption = 'Номер строки'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T100_IN_OUT_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T100_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T100_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма по номиналу (в валюте номинала)'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T100_MAIN_SUM'
          PickList.Strings = ()
          Title.Caption = 'Рыночная стоимость (в валюте номинала)'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T100_PERCENT'
          PickList.Strings = ()
          Title.Caption = 'Проценты за день (в валюте номинала)'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T100_EFFECT'
          PickList.Strings = ()
          Title.Caption = 'Ставка доходности'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T100_SOURCE'
          PickList.Strings = ()
          Title.Caption = 'Источник'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T100_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T100_OP_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма покупки (в валюте номинала)'
          Width = 100
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 831
      inherited Panel1: TPanel
        Left = 804
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 831
      inherited Panel1: TPanel
        Left = 804
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 525
    Width = 834
  end
  inherited pnlButtons: TPanel
    Top = 492
    Width = 834
    inherited OKBtn: TButton
      Left = 423
    end
    inherited CancelBtn: TButton
      Left = 503
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
    object actGoToForm405: TAction
      Caption = 'Перейти к 405'
      Hint = 'Перейти к операциям формы 405...'
      ImageIndex = 11
      OnExecute = actGoToForm405Execute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      
        'SELECT T100_ID, T099_ID, T001_ID, T031_MATURITY_DATE, T100_DATE,' +
        ' '
      '       T100_OP_COUNT, T100_OP_SUM, T100_COUNT, T100_SUM, '
      
        '       T100_PERCENT, T100_EFFECT, T100_CURR_ID, T100_CLOSE_SUM, ' +
        ' '
      ' T100_SOURCE, T100_MAIN_SUM, T011_ROW_NUM'
      'FROM   V_405_CALC_REM_PORTF_PROC'
      'WHERE  T099_ID = :T099_ID'
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543039395F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001000000007000000543030315F49440100000000000B000000543130
      305F534F5552434501000000000007000000543130305F49440100000000000A
      000000543130305F434F554E5401000000000008000000543130305F53554D01
      00000000000C000000543130305F50455243454E540100000000000B00000054
      3130305F4546464543540100000000000E000000543130305F434C4F53455F53
      554D01000000000012000000543033315F4D415455524954595F444154450100
      0000000009000000543130305F444154450100000000000D000000543130305F
      4F505F434F554E540100000000000B000000543130305F4F505F53554D010000
      0000000C000000543130305F435552525F494401000000000007000000543039
      395F49440100000000000D000000543130305F4D41494E5F53554D0100000000
      000C000000543031315F524F575F4E554D010000000000}
    Master = frm86_RemainsPortDayList.odsList
    MasterFields = 'T099_ID'
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
      Required = True
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
    end
    object odsListT100_DATE: TDateTimeField
      FieldName = 'T100_DATE'
      Required = True
    end
    object odsListT100_OP_COUNT: TFloatField
      FieldName = 'T100_OP_COUNT'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT100_OP_SUM: TFloatField
      FieldName = 'T100_OP_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT100_COUNT: TFloatField
      FieldName = 'T100_COUNT'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT100_SUM: TFloatField
      FieldName = 'T100_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT100_MAIN_SUM: TFloatField
      FieldName = 'T100_MAIN_SUM'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT100_PERCENT: TFloatField
      FieldName = 'T100_PERCENT'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListT100_EFFECT: TFloatField
      FieldName = 'T100_EFFECT'
      Required = True
      DisplayFormat = '### ### ### ##0.0000000'
      EditFormat = '0.0000000'
    end
    object odsListT100_CURR_ID: TStringField
      FieldName = 'T100_CURR_ID'
      Required = True
      Size = 3
    end
    object odsListT100_CLOSE_SUM: TFloatField
      FieldName = 'T100_CLOSE_SUM'
    end
    object odsListT100_SOURCE: TStringField
      FieldName = 'T100_SOURCE'
      Size = 3
    end
    object odsListT011_ROW_NUM: TFloatField
      FieldName = 'T011_ROW_NUM'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DPB_405_BOSS.PK_PORTF_DATA_FIFO.P_CALC_PORTF (:I_T055_ID);'
      'END;')
    Variables.Data = {
      03000000010000000A0000003A495F543035355F494404000000000000000000
      0000}
  end
end
