inherited frm51_EmisBottom: Tfrm51_EmisBottom
  Left = 208
  Top = 234
  Width = 518
  Caption = 'Несвязанные эмиссии'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 507
  end
  inherited paRight: TPanel
    Left = 510
  end
  inherited paMain: TPanel
    Width = 507
    inherited ToolBar2: TToolBar
      Top = 25
      Width = 507
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
      object ToolButton5: TToolButton
        Left = 282
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 290
        Top = 0
        Hint = 'Перейти к операциям...'
        Caption = 'Переход'
        DropdownMenu = pmGoTo
        ImageIndex = 11
        Style = tbsDropDown
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 90
      Width = 507
      Height = 177
      ParentFont = False
      AdvSettings.Indexes = <
        item
          FieldName = 'T026_TRIMMED'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_ISSUER_MAIN'
          PickList.Strings = ()
          Title.Caption = 'Эмитент главный'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_TRIMMED'
          PickList.Strings = ()
          Title.Caption = 'Сокр. рег. номер ц.б.'
          Width = 92
          Visible = True
        end
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
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Title.Caption = 'Код месяца'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 48
      Width = 507
      inherited Panel1: TPanel
        Left = 480
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 69
      Width = 507
      inherited Panel1: TPanel
        Left = 480
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 507
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        Left = 251
        Top = 5
        Width = 12
        Height = 13
        Caption = 'по'
      end
      object chbPeriod: TCheckBox
        Left = 5
        Top = 4
        Width = 115
        Height = 17
        Hint = 'Дата появления эмитента в cправочнике'
        Caption = 'Дата появления c'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 0
      end
      inline Tfm01_Period1: Tfm36_MonthAll
        Left = 117
        Top = 1
        Width = 130
        TabOrder = 1
        inherited Label1: TLabel
          Width = 0
          Caption = '   Отчетный период c'
          Visible = False
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 126
        end
        inherited dsPeriod: TDataSource
          Left = 88
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          Left = 56
          Top = 65530
        end
      end
      inline Tfm01_Period2: Tfm36_MonthAll
        Left = 266
        Top = 1
        Width = 130
        TabOrder = 2
        inherited Label1: TLabel
          Width = 0
          Caption = '   Отчетный период c'
          Visible = False
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 126
        end
        inherited dsPeriod: TDataSource
          Left = 88
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          Left = 56
          Top = 65530
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 510
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
        Width = 100
      end>
    ParentShowHint = False
    ShowHint = True
    Visible = True
  end
  inherited pnlButtons: TPanel
    Width = 510
    inherited OKBtn: TButton
      Left = 612
    end
    inherited CancelBtn: TButton
      Left = 692
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Visible = True
    end
    inherited actDeleteAttributes: TAction
      Visible = True
    end
    inherited actEditAttributes: TAction
      Visible = True
    end
    object actGoToForm405: TAction
      Caption = 'К форме 405'
      Hint = 'Перейти к операциям формы 405...'
    end
    object actGoToForm711_31: TAction
      Caption = 'К форме 711 раздел 3.1'
      Hint = 'Перейти к операциям формы 711 раздел 3.1...'
    end
    object actGoToForm711_32: TAction
      Caption = 'К форме 711 раздел 3.2'
      Hint = 'Перейти к операциям формы 711 раздел 3.2...'
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T030_ID, T030_PARENT_ID, T026_ID, T026_TRIMMED, '
      
        ' T026_SEC_REGN, T027_ID, T027_SEC_TYPE, T028_ID, T028_SHOT_NAME,' +
        ' '
      
        ' T025_CODE, T025_SHOT_NAME, T028_CODE, T028_PARENT_ID, IS_ISSUER' +
        '_MAIN,'
      '  T055_ID'
      'FROM   V_405_EMISSION_NOT_LINKED'
      'WHERE  T028_PARENT_ID = :T028_PARENT_ID'
      ' ')
    Variables.Data = {
      03000000010000000F0000003A543032385F504152454E545F49440400000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F0000000D000000543032365F5345435F5245474E0100000000000D
      000000543032375F5345435F545950450100000000000E000000543032385F53
      484F545F4E414D450100000000000E000000543032355F53484F545F4E414D45
      01000000000009000000543032385F434F44450100000000000C000000543032
      365F5452494D4D45440100000000000E00000049535F4953535545525F4D4149
      4E01000000000007000000543033305F49440100000000000E00000054303330
      5F504152454E545F494401000000000007000000543032365F49440100000000
      0007000000543032375F494401000000000007000000543032385F4944010000
      00000009000000543032355F434F44450100000000000E000000543032385F50
      4152454E545F494401000000000007000000543035355F4944010000000000}
    object odsListT026_TRIMMED: TStringField
      FieldName = 'T026_TRIMMED'
      Required = True
      Size = 265
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
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
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListIS_ISSUER_MAIN: TStringField
      FieldName = 'IS_ISSUER_MAIN'
      Size = 3
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  Pk_405_Emissions.p_emission_add(v_rec);'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T026_ID := v_rec.T026_ID;'
      '  :T027_ID := v_rec.T027_ID;'
      '  :T028_ID := v_rec.T028_ID;'
      'END;')
    Variables.Data = {
      0300000004000000080000003A543032365F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000080000003A543033305F494404000000
      0000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  Pk_405_Emissions.p_emission_update(v_rec);'
      '  :T026_ID := v_rec.T026_ID;'
      '  :T027_ID := v_rec.T027_ID;'
      '  :T028_ID := v_rec.T028_ID;'
      'END;'
      ' ')
    Variables.Data = {
      0300000004000000080000003A543033305F4944040000000000000000000000
      080000003A543032365F4944040000000000000000000000080000003A543032
      375F4944040000000000000000000000080000003A543032385F494404000000
      0000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  Pk_405_Emissions.p_emission_delete(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  :o_result := Pk_405_Emissions.f_emission_check(v_rec);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000005000000080000003A543032365F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000090000003A4F5F524553554C54040000
      000000000000000000080000003A543033305F49440400000000000000000000
      00}
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
