inherited frm51_EmisTop: Tfrm51_EmisTop
  Left = 200
  Top = 209
  Width = 664
  Caption = 'Связанные эмиссии'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 653
  end
  inherited paRight: TPanel
    Left = 656
  end
  inherited paMain: TPanel
    Width = 653
    inherited ToolBar2: TToolBar
      Width = 653
      ButtonWidth = 43
      ShowCaptions = False
      inherited ToolButton18: TToolButton
        Left = 27
      end
      inherited ToolButton19: TToolButton
        Left = 54
      end
      inherited ToolButton4: TToolButton
        Left = 81
      end
      inherited ToolBar1: TToolBar
        Left = 89
      end
      inherited sp02: TToolButton
        Left = 158
      end
      inherited tbSimFilter: TToolButton
        Left = 166
      end
      inherited tbSep01: TToolButton
        Left = 206
      end
      inherited tlbSearch: TToolBar
        Left = 214
      end
      inherited ToolButton13: TToolButton
        Left = 274
      end
      inherited tbExcel: TToolButton
        Left = 282
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 309
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 317
        Top = 0
        Hint = 'Перейти к операциям...'
        Action = actGoToForm405
        AutoSize = True
        Caption = 'Переоход'
        DropdownMenu = pmGoTo
        ImageIndex = 11
        Style = tbsDropDown
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 653
      AdvSettings.Indexes = <
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмит.'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмит.'
          Width = 61
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 653
      inherited Panel1: TPanel
        Left = 626
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 653
      inherited Panel1: TPanel
        Left = 626
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 656
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
    Visible = True
  end
  inherited pnlButtons: TPanel
    Width = 656
    inherited OKBtn: TButton
      Left = 758
    end
    inherited CancelBtn: TButton
      Left = 838
    end
  end
  inherited ActionList: TActionList
    object actGoToForm405: TAction
      Caption = 'К форме 405'
      Hint = 'Перейти к операциям формы 405...'
      OnExecute = actGoToForm405Execute
    end
    object actGoToForm711_31: TAction
      Caption = 'К форме 711 раздел 3.1'
      Hint = 'Перейти к операциям формы 711 раздел 3.1...'
      OnExecute = actGoToForm711_31Execute
    end
    object actGoToForm711_32: TAction
      Caption = 'К форме 711 раздел 3.2'
      Hint = 'Перейти к операциям формы 711 раздел 3.2...'
      OnExecute = actGoToForm711_32Execute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T030_ID,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T028_ID,'
      '       T028_SHOT_NAME,'
      '       T025_CODE,'
      '       T025_SHOT_NAME,'
      '       T028_CODE'
      'FROM   V_405_EMISSION'
      'WHERE  T030_PARENT_ID = :T030_PARENT_ID'
      'AND T030_ID <> T030_PARENT_ID'
      ' ')
    Variables.Data = {
      03000000010000000F0000003A543033305F504152454E545F49440400000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001700000007000000543033305F494401000000000007000000543032
      365F49440100000000000D000000543032365F5345435F5245474E0100000000
      0007000000543032375F49440100000000000D000000543032375F5345435F54
      59504501000000000007000000543032385F49440100000000000E0000005430
      32385F53484F545F4E414D4501000000000009000000543032355F434F444501
      00000000000E000000543032355F53484F545F4E414D45010000000000090000
      00543032385F434F444501000000000007000000543033315F49440100000000
      0007000000543032335F494401000000000009000000543032335F4E414D4501
      000000000007000000543032345F494401000000000009000000543032345F4E
      414D4501000000000009000000543033315F4953494E0100000000000D000000
      543033315F43555252454E435901000000000012000000543033315F454D4953
      53494F4E5F53495A450100000000000C000000543033315F4E4F4D494E414C01
      00000000000D000000543033315F5245475F4441544501000000000012000000
      543033315F4D415455524954595F444154450100000000000F00000054303331
      5F53544152545F444154450100000000000D000000543033315F454E445F4441
      5445010000000000}
    AfterScroll = odsListAfterScroll
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
  end
  object pmGoTo: TPopupMenu
    Left = 280
    Top = 144
    object N4051: TMenuItem
      Action = actGoToForm405
      Default = True
    end
    object N711311: TMenuItem
      Action = actGoToForm711_31
    end
    object N711321: TMenuItem
      Action = actGoToForm711_32
    end
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_Form_405.p_get_oper_count_by_emis('
      '    :T030_ID,'
      '    :o_count_405,'
      '    :o_count_711_31,'
      '    :o_count_711_32'
      '    );'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543033305F4944040000000000000000000000
      0C0000003A4F5F434F554E545F3430350400000000000000000000000F000000
      3A4F5F434F554E545F3731315F33310400000000000000000000000F0000003A
      4F5F434F554E545F3731315F3332040000000000000000000000}
    Left = 136
    Top = 224
  end
end
