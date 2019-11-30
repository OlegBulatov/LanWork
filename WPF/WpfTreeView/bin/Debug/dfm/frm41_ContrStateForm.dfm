inherited frm41_ContrState: Tfrm41_ContrState
  Left = 44
  Top = 165
  Width = 1233
  Height = 699
  Caption = 'Оценки операций'
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 613
    Width = 1225
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  inherited spRight: TSplitter
    Left = 1222
    Height = 613
  end
  inherited paRight: TPanel
    Left = 1225
    Height = 613
  end
  inherited paMain: TPanel
    Width = 1222
    Height = 613
    inherited ToolBar2: TToolBar
      Width = 1222
      object ToolButton5: TToolButton
        Left = 591
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 599
        Top = 0
        Action = actZero
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 700
        Top = 0
        Action = actReal
        AutoSize = True
      end
      object ToolButton11: TToolButton
        Left = 762
        Top = 0
        Action = actFic
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 833
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        Enabled = False
        ImageIndex = 3
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 841
        Top = 0
        Action = actShowOper
        AutoSize = True
        DropdownMenu = pmGoTo
        Style = tbsDropDown
      end
      object ToolButton9: TToolButton
        Left = 937
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 28
        Style = tbsSeparator
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1222
      Height = 548
      AdvSettings.Indexes = <
        item
          FieldName = 'T012_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T013_NAME'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 2
              Caption = 'Признак фикт-ти'
            end
            item
              FirstCol = 10
              LastCol = 11
              Caption = 'В Россию'
            end
            item
              FirstCol = 12
              LastCol = 13
              Caption = 'Из России'
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
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Рез.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Нерез.'
          Width = 36
          Visible = True
        end
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
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_NAME'
          PickList.Strings = ()
          Title.Caption = 'Нерезидент'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_IN'
          PickList.Strings = ()
          Title.Caption = 'Кол. ц.б.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          PickList.Strings = ()
          Title.Caption = 'Сумма (тыс. $)'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_OUT'
          PickList.Strings = ()
          Title.Caption = 'Кол. ц.б.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          PickList.Strings = ()
          Title.Caption = 'Сумма (тыс. $)'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          PickList.Strings = ()
          Title.Caption = 'Сальдо (тыс. $)'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Статус'
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1222
      inherited Panel1: TPanel
        Left = 1195
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1222
      inherited Panel1: TPanel
        Left = 1195
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 649
    Width = 1225
  end
  inherited pnlButtons: TPanel
    Top = 616
    Width = 1225
    inherited OKBtn: TButton
      Left = 861
    end
    inherited CancelBtn: TButton
      Left = 941
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
    object actGoToOper: TAction
      Caption = 'Перейти к операциям'
      OnExecute = actGoToOperExecute
    end
    object actGoToRes: TAction
      Caption = 'Перейти по резиденту'
      OnExecute = actGoToResExecute
    end
    object actGoToNRes: TAction
      Caption = 'Перейти  по нерезиденту'
      OnExecute = actGoToNResExecute
    end
    object actOperState: TAction
      Caption = 'Оценка операции'
      Enabled = False
      Visible = False
    end
    object actGoToEmit: TAction
      Caption = 'Перейти по эмитенту (главному)'
      OnExecute = actGoToEmitExecute
    end
    object actGoToEmitINN: TAction
      Caption = 'Перейти по ИНН эмитента'
      OnExecute = actGoToEmitINNExecute
    end
    object actGoToMainRes: TAction
      Caption = 'Перейти по резиденту (главному)'
      OnExecute = actGoToMainResExecute
    end
    object actGoToMainNRes: TAction
      Caption = 'Перейти по нерезиденту (главному)'
      OnExecute = actGoToMainNResExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T002_ID,'
      '         T001_PART_ID,'
      '         T001_ROW_PRFX,'
      '         T030_ID,'
      '         T026_ID,'
      '         T026_SEC_REGN,'
      '         T028_ID,'
      '         T028_PARENT_ID,'
      '         T028_SHOT_NAME,'
      '         T028_INN,'
      '         T027_ID,'
      '         T027_SEC_TYPE,'
      '         T012_ID,'
      '         T012_PARENT_ID,'
      '         T012_NAME,'
      '         T012_CODE,'
      '         T013_ID,'
      '         T013_PARENT_ID,'
      '         T013_NAME,'
      '         COUNTRY_NAME,'
      '         T012_FICT_STATE_DESC,'
      '         T013_FICT_STATE_DESC,'
      '         T013_CODE,'
      '         T001_OP_COUNT_IN,'
      '         T001_OP_COUNT_OUT,'
      '         T001_OP_SUM_IN,'
      '         T001_OP_SUM_OUT,'
      '         T001_OP_SUM_SALDO,'
      '         T035_ID,'
      '         T001_STATE_DESC'
      'FROM     V_405_CLASS_OPER_SALDO'
      'WHERE    T002_ID = :T002_ID'
      'AND      T027_ID = :T027_ID'
      'AND      T012_ID = :T012_ID')
    Variables.Data = {
      0300000003000000080000003A543030325F4944030000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543031
      325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001E00000007000000543031325F494401000000000009000000543031
      325F4E414D4501000000000009000000543031325F434F444501000000000007
      000000543031335F494401000000000009000000543031335F4E414D45010000
      00000009000000543031335F434F44450100000000000C000000434F554E5452
      595F4E414D4501000000000007000000543030325F4944010000000000070000
      00543032375F49440100000000000D000000543032375F5345435F5459504501
      000000000007000000543032385F49440100000000000E000000543032385F53
      484F545F4E414D4501000000000007000000543033305F494401000000000007
      000000543032365F49440100000000000D000000543032365F5345435F524547
      4E01000000000010000000543030315F4F505F434F554E545F494E0100000000
      0011000000543030315F4F505F434F554E545F4F55540100000000000E000000
      543030315F4F505F53554D5F494E0100000000000F000000543030315F4F505F
      53554D5F4F555401000000000011000000543030315F4F505F53554D5F53414C
      444F0100000000000C000000543030315F504152545F49440100000000000800
      0000543032385F494E4E0100000000000E000000543032385F504152454E545F
      49440100000000000E000000543031325F504152454E545F4944010000000000
      0E000000543031335F504152454E545F49440100000000000700000054303335
      5F49440100000000000F000000543030315F53544154455F4445534301000000
      000014000000543031325F464943545F53544154455F44455343010000000000
      14000000543031335F464943545F53544154455F444553430100000000000D00
      0000543030315F524F575F50524658010000000000}
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 255
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
    end
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 255
    end
    object odsListT013_CODE: TFloatField
      FieldName = 'T013_CODE'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
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
    object odsListT002_ID: TIntegerField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT012_PARENT_ID: TFloatField
      FieldName = 'T012_PARENT_ID'
    end
    object odsListT013_PARENT_ID: TFloatField
      FieldName = 'T013_PARENT_ID'
    end
    object odsListT035_ID: TFloatField
      FieldName = 'T035_ID'
      Required = True
    end
    object odsListT001_STATE_DESC: TStringField
      FieldName = 'T001_STATE_DESC'
      Size = 12
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
  end
  object pmGoTo: TPopupMenu
    Left = 720
    Top = 32
    object N16: TMenuItem
      Action = actGoToOper
    end
    object N17: TMenuItem
      Action = actGoToRes
    end
    object N21: TMenuItem
      Action = actGoToMainRes
    end
    object N18: TMenuItem
      Action = actGoToNRes
    end
    object N22: TMenuItem
      Action = actGoToMainNRes
    end
    object N19: TMenuItem
      Action = actGoToEmit
    end
    object N20: TMenuItem
      Action = actGoToEmitINN
    end
  end
  object oqSetFictState: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_set_res_nres_st_fict_state ('
      '    :T002_ID,'
      '    :T012_ID,'
      '    :T013_ID,'
      '    :T030_ID,'
      '    :T035_ID'
      '  );'
      'END;'
      ' '
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000005000000080000003A543030325F4944040000000000000000000000
      080000003A543031325F4944040000000000000000000000080000003A543031
      335F4944040000000000000000000000080000003A543033355F494404000000
      0000000000000000080000003A543033305F4944040000000000000000000000}
    Left = 296
    Top = 240
  end
end
