inherited frm41_ContrGrpState: Tfrm41_ContrGrpState
  Left = 138
  Top = 126
  Width = 1188
  Height = 702
  Caption = 'Оценки групп операций'
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 613
    Width = 1180
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  inherited spRight: TSplitter
    Left = 1177
    Height = 613
  end
  inherited paRight: TPanel
    Left = 1180
    Height = 613
  end
  inherited paMain: TPanel
    Width = 1177
    Height = 613
    inherited ToolBar2: TToolBar
      Width = 1177
      ButtonWidth = 155
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 593
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 601
        Top = 0
        Action = actZero
        AutoSize = True
      end
      object ToolButton11: TToolButton
        Left = 702
        Top = 0
        Action = actReal
        AutoSize = True
      end
      object ToolButton12: TToolButton
        Left = 764
        Top = 0
        Action = actFic
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 835
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 843
        Top = 0
        Action = actShowOper
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 924
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 932
        Top = 0
        Action = actOperState
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1177
      Height = 548
      AdvSettings.Indexes = <
        item
          FieldName = 'T001_OP_SUM_SALDO'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 4
              Caption = 'Принимали участие в фиктивных операциях'
            end
            item
              FirstCol = 5
              LastCol = 6
              Caption = 'В Россию'
            end
            item
              FirstCol = 7
              LastCol = 8
              Caption = 'Из России'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OP_GRP_STATE'
          PickList.Strings = ()
          Title.Caption = 'Оценка'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_STATE'
          PickList.Strings = ()
          Title.Caption = 'Итоговая оценка'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Рез.'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Нерез.'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_IN'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          PickList.Strings = ()
          Title.Caption = 'Сумма (тыс. $)'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_OUT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          PickList.Strings = ()
          Title.Caption = 'Сумма (тыс. $)'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          PickList.Strings = ()
          Title.Caption = 'Сальдо (тыс. $)'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T071_CALC_DESC'
          PickList.Strings = ()
          Title.Caption = 'Статус'
          Width = 228
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1177
      inherited Panel1: TPanel
        Left = 1150
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1177
      inherited Panel1: TPanel
        Left = 1150
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 649
    Width = 1180
  end
  inherited pnlButtons: TPanel
    Top = 616
    Width = 1180
    inherited OKBtn: TButton
      Left = 816
    end
    inherited CancelBtn: TButton
      Left = 896
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
    object actFic: TAction [9]
      Caption = 'Фиктивные'
      Hint = 'Признать группу операций фиктивной'
      OnExecute = actFicExecute
    end
    object actReal: TAction [10]
      Caption = 'Реальные'
      Hint = 'Признать группу операций реальной'
      OnExecute = actRealExecute
    end
    object actRecalc: TAction [11]
      Caption = 'Пересчитать'
      Hint = 'Пересчитать данные об операциях '
      ImageIndex = 1
    end
    object actZero: TAction
      Caption = 'Не оценивать'
      Hint = 'Не оценивать группу операций'
      ImageIndex = 2
      OnExecute = actZeroExecute
    end
    object actShowOper: TAction
      Caption = 'Операции'
      ImageIndex = 27
      OnExecute = actShowOperExecute
    end
    object actOperState: TAction
      Caption = 'Оценка группы операций'
      OnExecute = actOperStateExecute
      OnUpdate = actOperStateUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T002_ID,'
      '  T012_ID,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T012_FICT_STATE_DESC,'
      '  T013_FICT_STATE_DESC,'
      '  T001_OP_COUNT_IN,'
      '  T001_OP_COUNT_OUT,'
      '  T001_OP_SUM_IN,'
      '  T001_OP_SUM_OUT,'
      '  T001_OP_SUM_SALDO,'
      '  OP_GRP_STATE,'
      '  TOTAL_STATE,'
      '  T071_CALC_DESC'
      'FROM V_405_CLASS_OPER_GRP_SALDO'
      'WHERE  T002_ID =:T002_ID'
      'AND    T012_ID =:T012_ID'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000002000000080000003A543030325F4944030000000000000000000000
      080000003A543031325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E0000000E000000543037315F43414C435F44455343010000000000
      07000000543030325F494401000000000007000000543032375F494401000000
      00000D000000543032375F5345435F5459504501000000000007000000543031
      325F494401000000000010000000543030315F4F505F434F554E545F494E0100
      0000000011000000543030315F4F505F434F554E545F4F55540100000000000E
      000000543030315F4F505F53554D5F494E0100000000000F000000543030315F
      4F505F53554D5F4F555401000000000011000000543030315F4F505F53554D5F
      53414C444F0100000000000C0000004F505F4752505F53544154450100000000
      000B000000544F54414C5F535441544501000000000014000000543031325F46
      4943545F53544154455F4445534301000000000014000000543031335F464943
      545F53544154455F44455343010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT071_CALC_DESC: TStringField
      FieldName = 'T071_CALC_DESC'
      Size = 255
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT001_OP_COUNT_IN: TFloatField
      FieldName = 'T001_OP_COUNT_IN'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_COUNT_OUT: TFloatField
      FieldName = 'T001_OP_COUNT_OUT'
      DisplayFormat = '### ### ### ##0'
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
    object odsListOP_GRP_STATE: TFloatField
      FieldName = 'OP_GRP_STATE'
    end
    object odsListTOTAL_STATE: TFloatField
      FieldName = 'TOTAL_STATE'
    end
    object odsListT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
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
  object oqSetFictState: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_set_res_sectype_fict_state ('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T027_ID,'
      '    :T035_ID'
      '  );'
      'END;'
      ' '
      ' '
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543030325F4944040000000000000000000000
      080000003A543031325F4944040000000000000000000000080000003A543032
      375F4944040000000000000000000000080000003A543033355F494404000000
      0000000000000000}
    Left = 296
    Top = 240
  end
  object oqGetT071_ID: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :T071_ID := PK_405_Classification.f_get_T071_id('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T027_ID'
      '  );'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543030325F4944040000000000000000000000
      080000003A543031325F4944040000000000000000000000080000003A543032
      375F4944040000000000000000000000080000003A543037315F494404000000
      0000000000000000}
    Left = 296
    Top = 281
  end
end
