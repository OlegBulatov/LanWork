inherited frm40_BankState: Tfrm40_BankState
  Left = 121
  Top = 147
  Width = 1237
  Height = 758
  Caption = 'Оценки КО'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 0
    Height = 672
    Align = alLeft
    Visible = True
  end
  inherited paRight: TPanel
    Left = 1229
    Height = 672
  end
  inherited paMain: TPanel
    Left = 3
    Width = 1226
    Height = 672
    inherited ToolBar2: TToolBar
      Width = 1226
      ButtonWidth = 115
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 516
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 524
        Top = 0
        Action = actRecalc
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 620
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        Enabled = False
        ImageIndex = 2
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton9: TToolButton
        Left = 628
        Top = 0
        Action = actZero
        AutoSize = True
        Caption = 'Не оценивать КО'
      end
      object ToolButton10: TToolButton
        Left = 747
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbShowReports: TToolButton
        Left = 755
        Top = 0
        Action = actReport
        AutoSize = True
        Caption = 'Отчет в Word'
      end
      object ToolButton6: TToolButton
        Left = 853
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 861
        Top = 0
        Action = actShowHistory
        AutoSize = True
      end
      object ToolButton12: TToolButton
        Left = 944
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton14: TToolButton
        Left = 952
        Top = 0
        Action = actShowOper
        AutoSize = True
        ImageIndex = 27
      end
      object ToolButton15: TToolButton
        Left = 1033
        Top = 0
        Width = 8
        Style = tbsSeparator
        OnClick = actKOStateExecute
      end
      object ToolButton16: TToolButton
        Left = 1041
        Top = 0
        Action = actKOState
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1226
      Height = 607
      AdvSettings.Indexes = <
        item
          FieldName = 'KO_STATE'
          SortType = stDesc
        end
        item
          FieldName = 'T035_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'T012_FICT_STATE_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'T013_FICT_STATE_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'T001_OP_SUM_SALDO'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 8
              Caption = 'Итоги по операциям (тыс. долл.)'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 5
              Caption = 'Всего по операциям (тыс. $)'
            end
            item
              FirstCol = 6
              LastCol = 8
              Caption = 'в том числе фиктивные  (тыс. $)'
            end
            item
              FirstCol = 9
              LastCol = 11
              Caption = 'Принимали участие в фиктивных операциях'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название банка'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KO_STATE'
          PickList.Strings = ()
          Title.Caption = 'Оценка'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          PickList.Strings = ()
          Title.Caption = 'В Россию'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          PickList.Strings = ()
          Title.Caption = 'Из России'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          PickList.Strings = ()
          Title.Caption = 'Сальдо'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN_F'
          PickList.Strings = ()
          Title.Caption = 'В Россию'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT_F'
          PickList.Strings = ()
          Title.Caption = 'Из России'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO_F'
          PickList.Strings = ()
          Title.Caption = 'Сальдо'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T035_DESC'
          PickList.Strings = ()
          Title.Caption = 'КО'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Рез.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Нерез.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EVALUATION_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Состояние'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_CALC_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата расчета'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_CHANGE_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата изменения'
          Width = 60
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1226
      inherited Panel1: TPanel
        Left = 1199
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1226
      inherited Panel1: TPanel
        Left = 1199
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 705
    Width = 1229
  end
  inherited pnlButtons: TPanel
    Top = 672
    Width = 1229
    inherited OKBtn: TButton
      Left = 983
    end
    inherited CancelBtn: TButton
      Left = 1063
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
    inherited actExcel: TAction
      Caption = ''
    end
    object actRecalc: TAction [9]
      Caption = 'Пересчитать'
      Hint = 
        'Пересчитать данные об операциях '#13#10'для выбранных кредитных органи' +
        'зации'
      ImageIndex = 1
      OnExecute = actRecalcExecute
      OnUpdate = actRecalcUpdate
    end
    object Action1: TAction [10]
      Caption = 'Action1'
    end
    object actZero: TAction
      Hint = 'Не оценивать кредитную организацию'
      ImageIndex = 2
      OnExecute = actZeroExecute
    end
    object actReport: TAction
      Hint = 'Сформировать отчет'
      ImageIndex = 41
      OnExecute = actReportExecute
    end
    object actShowHistory: TAction
      Caption = 'История...'
      Hint = 'Посмотреть историю...'
      ImageIndex = 11
      OnExecute = actShowHistoryExecute
    end
    object actShowOper: TAction
      Caption = 'Операции'
      ImageIndex = 11
      OnExecute = actShowOperExecute
    end
    object actKOState: TAction
      Caption = 'Оценка КО'
      OnExecute = actKOStateExecute
      OnUpdate = actKOStateUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T002_ID, T055_Q_ID, T055_ID, T055_LONG_NAME,'
      ' T055_START_DATE,'
      ' T002_BANK_CODE, T002_BANK_NAME,'
      ' T035_DESC, T012_FICT_STATE_DESC, T013_FICT_STATE_DESC,'
      ' EVALUATION_STATE_DESC, T002_CALC_DATE, T002_CHANGE_DATE,'
      ' T001_OP_SUM_IN,'
      ' T001_OP_SUM_OUT, T001_OP_SUM_SALDO, T001_OP_SUM_OB,'
      ' T001_OP_SUM_IN_F,'
      ' T001_OP_SUM_OUT_F, T001_OP_SUM_SALDO_F,'
      ' T001_OP_SUM_OB_F, KO_STATE'
      'FROM  V_405_CLASS_KO_SALDO '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000001600000007000000543030325F494401000000000009000000543035
      355F515F494401000000000007000000543035355F49440100000000000E0000
      00543035355F4C4F4E475F4E414D450100000000000F000000543035355F5354
      4152545F444154450100000000000E000000543030325F42414E4B5F434F4445
      0100000000000E000000543030325F42414E4B5F4E414D450100000000000900
      0000543033355F444553430100000000000E000000543030325F43414C435F44
      41544501000000000010000000543030325F4348414E47455F44415445010000
      000000080000004B4F5F53544154450100000000000E000000543030315F4F50
      5F53554D5F494E0100000000000F000000543030315F4F505F53554D5F4F5554
      01000000000011000000543030315F4F505F53554D5F53414C444F0100000000
      000E000000543030315F4F505F53554D5F4F4201000000000010000000543030
      315F4F505F53554D5F494E5F4601000000000011000000543030315F4F505F53
      554D5F4F55545F4601000000000013000000543030315F4F505F53554D5F5341
      4C444F5F4601000000000010000000543030315F4F505F53554D5F4F425F4601
      0000000000150000004556414C554154494F4E5F53544154455F444553430100
      0000000014000000543031325F464943545F53544154455F4445534301000000
      000014000000543031335F464943545F53544154455F44455343010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
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
    object odsListT002_CALC_DATE: TDateTimeField
      FieldName = 'T002_CALC_DATE'
    end
    object odsListT002_CHANGE_DATE: TDateTimeField
      FieldName = 'T002_CHANGE_DATE'
    end
    object odsListT035_DESC: TStringField
      FieldName = 'T035_DESC'
      Size = 3
    end
    object odsListT055_Q_ID: TFloatField
      FieldName = 'T055_Q_ID'
      Required = True
    end
    object odsListKO_STATE: TFloatField
      FieldName = 'KO_STATE'
    end
    object odsListT001_OP_SUM_IN: TFloatField
      FieldName = 'T001_OP_SUM_IN'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OUT: TFloatField
      FieldName = 'T001_OP_SUM_OUT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_SALDO: TFloatField
      FieldName = 'T001_OP_SUM_SALDO'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OB: TFloatField
      FieldName = 'T001_OP_SUM_OB'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_IN_F: TFloatField
      FieldName = 'T001_OP_SUM_IN_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OUT_F: TFloatField
      FieldName = 'T001_OP_SUM_OUT_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_SALDO_F: TFloatField
      FieldName = 'T001_OP_SUM_SALDO_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OB_F: TFloatField
      FieldName = 'T001_OP_SUM_OB_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListEVALUATION_STATE_DESC: TStringField
      FieldName = 'EVALUATION_STATE_DESC'
      Size = 21
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
  end
  object oqCheck: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :O_CHECK := PK_405_CLASSIFICATION.f_evaluated (:I_T055_ID);'
      'END;  ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A4F5F434845434B050000000200000059000000
      00000A0000003A495F543035355F4944040000000000000000000000}
    Left = 288
    Top = 304
  end
  object oqGetPeriodName: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_period PK_405_Time.t_T055_rec;'
      'BEGIN'
      '  v_period := PK_405_Time.f_get_period_by_id (:I_T055_ID);'
      '  :O_NAME := v_period.T055_LONG_NAME;'
      'END;  '
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000070000003A4F5F4E414D450500000000000000000000000A
      0000003A495F543035355F4944040000000000000000000000}
    Left = 288
    Top = 264
  end
  object oqRecalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_set_for_rerate_ko(:T002_ID);'
      'END;  ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543030325F4944040000000000000000000000}
    Left = 288
    Top = 384
  end
  object oqSetNoRating: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Classification.p_set_ko_not_for_rating(:T002_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543030325F4944040000000000000000000000}
    Left = 291
    Top = 424
  end
  object oqIsNeedRevalue: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :NEED_REVALUE := PK_405_Classification.f_is_need_revaluation_k' +
        'o(:T002_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543030325F4944040000000000000000000000
      0D0000003A4E4545445F524556414C5545050000000000000000000000}
    Left = 288
    Top = 344
  end
end
