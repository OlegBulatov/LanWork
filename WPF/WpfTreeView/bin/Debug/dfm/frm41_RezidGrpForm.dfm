inherited frm41_RezidGrp: Tfrm41_RezidGrp
  Left = 285
  Top = 100
  Width = 1171
  Height = 699
  Caption = 'Оценки резидентов'
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 610
    Width = 1163
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  inherited spRight: TSplitter
    Left = 1160
    Height = 610
  end
  inherited paRight: TPanel
    Left = 1163
    Height = 610
  end
  inherited paMain: TPanel
    Width = 1160
    Height = 610
    inherited ToolBar2: TToolBar
      Width = 1160
      ButtonWidth = 121
      object ToolButton5: TToolButton
        Left = 603
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 611
        Top = 0
        Action = actZeroState
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 712
        Top = 0
        Action = actFictState
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 783
        Top = 0
        Action = actRealState
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 845
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton12: TToolButton
        Left = 853
        Top = 0
        AutoSize = True
        Caption = 'Операции'
        DropdownMenu = pmGoTo
        ImageIndex = 27
        Style = tbsDropDown
      end
      object ToolButton11: TToolButton
        Left = 947
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 955
        Top = 0
        Action = actRezidState
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1160
      Height = 545
      AdvSettings.Indexes = <
        item
          FieldName = 'REZID_STATE'
          SortType = stDesc
        end
        item
          FieldName = 'T001_OP_SUM_SALDO'
          SortType = stAsc
        end
        item
          FieldName = 'T012_NAME'
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
              Caption = 'Принимал участие в фиктивных операциях'
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
          FieldName = 'T012_NAME'
          PickList.Strings = ()
          Title.Caption = 'Резидент'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REZID_STATE'
          PickList.Strings = ()
          Title.Caption = 'Оценка'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Рез.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Нерез.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_IN'
          PickList.Strings = ()
          Title.Caption = 'Кол. ц.б.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          PickList.Strings = ()
          Title.Caption = 'Сумма (тыс. $)'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_OUT'
          PickList.Strings = ()
          Title.Caption = 'Кол. ц.б.'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          PickList.Strings = ()
          Title.Caption = 'Сумма (тыс. $)'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          PickList.Strings = ()
          Title.Caption = 'Сальдо (тыс. $)'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T071_CALC_DESC'
          PickList.Strings = ()
          Title.Caption = 'Статус'
          Width = 140
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1160
      inherited Panel1: TPanel
        Left = 1133
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1160
      inherited Panel1: TPanel
        Left = 1133
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 646
    Width = 1163
  end
  inherited pnlButtons: TPanel
    Top = 613
    Width = 1163
    inherited OKBtn: TButton
      Left = 799
    end
    inherited CancelBtn: TButton
      Left = 879
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
    object actZero: TAction
      Caption = 'Не оценивать'
      Enabled = False
      Hint = 'Не оценивать группу операций'
      ImageIndex = 2
      Visible = False
    end
    object actRezidState: TAction
      Caption = 'Оценка резидента'
      OnExecute = actRezidStateExecute
      OnUpdate = actRezidStateUpdate
    end
    object actFictState: TAction
      Caption = 'Фиктивные'
      OnExecute = actFictStateExecute
      OnUpdate = actFictStateUpdate
    end
    object actRealState: TAction
      Caption = 'Реальные'
      OnExecute = actRealStateExecute
      OnUpdate = actRealStateUpdate
    end
    object actZeroState: TAction
      Caption = 'Не оценивать'
      ImageIndex = 2
      OnExecute = actZeroStateExecute
      OnUpdate = actZeroStateUpdate
    end
    object actShowRezident: TAction
      Caption = 'перейти по резиденту'
      OnExecute = actShowRezidentExecute
      OnUpdate = actShowRezidentUpdate
    end
    object actShowINN: TAction
      Caption = 'по ИНН'
      OnExecute = actShowINNExecute
      OnUpdate = actShowINNUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '   T002_ID,'
      '   T055_ID,'
      '   T012_ID,'
      '   T012_NAME,'
      '   T012_CODE,'
      '   T001_OP_COUNT_IN,'
      '   T001_OP_COUNT_OUT,'
      '   T001_OP_SUM_IN,'
      '   T001_OP_SUM_OUT,'
      '   T001_OP_SUM_SALDO,'
      '   T012_FICT_STATE_DESC,'
      '   T013_FICT_STATE_DESC,'
      '   REZID_STATE,'
      '   T071_CALC_DESC'
      'FROM V_405_CLASS_REZID_GRP_SALDO'
      'WHERE  T002_ID =:T002_ID'
      ''
      ''
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543030325F4944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543031325F494401000000000009000000543031
      325F4E414D4501000000000009000000543031325F434F444501000000000007
      000000543030325F49440100000000000B00000052455A49445F535441544501
      000000000010000000543030315F4F505F434F554E545F494E01000000000011
      000000543030315F4F505F434F554E545F4F55540100000000000E0000005430
      30315F4F505F53554D5F494E0100000000000F000000543030315F4F505F5355
      4D5F4F555401000000000011000000543030315F4F505F53554D5F53414C444F
      0100000000000E000000543037315F43414C435F444553430100000000001400
      0000543031325F464943545F53544154455F4445534301000000000014000000
      543031335F464943545F53544154455F44455343010000000000070000005430
      35355F49440100000000000D00000049535F52455349445F4D41494E01000000
      0000}
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Required = True
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsListREZID_STATE: TFloatField
      FieldName = 'REZID_STATE'
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
    object odsListT071_CALC_DESC: TStringField
      FieldName = 'T071_CALC_DESC'
      Size = 4000
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
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object pmGoTo: TPopupMenu
    Left = 720
    Top = 32
    object N16: TMenuItem
      Action = actShowRezident
    end
    object N17: TMenuItem
      Action = actShowINN
    end
  end
  object oqSetFictState: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_set_res_fict_state ('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T035_ID'
      '    );'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543030325F4944040000000000000000000000
      080000003A543031325F4944040000000000000000000000080000003A543033
      355F4944040000000000000000000000}
    Left = 288
    Top = 304
  end
  object oqGetT103_ID: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :T103_ID := PK_405_Classification.f_get_T103_id('
      '    :T012_ID,'
      '    :T055_ID'
      '  );'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543035355F4944040000000000000000000000
      080000003A543031325F4944040000000000000000000000080000003A543130
      335F4944040000000000000000000000}
    Left = 288
    Top = 337
  end
end
