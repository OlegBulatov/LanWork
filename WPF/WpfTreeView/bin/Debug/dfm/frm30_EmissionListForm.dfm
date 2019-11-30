inherited frm30_EmissionList: Tfrm30_EmissionList
  Left = 168
  Top = 180
  Width = 780
  Caption = 'frm30_EmissionList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 267
    Width = 772
  end
  inherited spRight: TSplitter
    Left = 769
    Height = 267
  end
  inherited paRight: TPanel
    Left = 772
    Height = 267
  end
  inherited paMain: TPanel
    Width = 769
    Height = 267
    inherited ToolBar2: TToolBar
      Width = 769
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 769
      Height = 202
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
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 251
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 201
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 90
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 769
      inherited Panel1: TPanel
        Left = 742
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 769
      inherited Panel1: TPanel
        Left = 742
      end
    end
  end
  inherited Panel1: TPanel
    Top = 270
    Width = 772
    Height = 214
    inherited pc01: TPageControl
      Width = 770
      Height = 212
      inherited ts01: TTabSheet
        Caption = ''
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 772
  end
  inherited pnlButtons: TPanel
    Width = 772
    inherited OKBtn: TButton
      Left = 614
    end
    inherited CancelBtn: TButton
      Left = 694
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  /*+ FIRST_ROWS */ '
      '        T030_ID,'
      '        T026_ID,'
      '        T026_SEC_REGN,'
      '        T027_ID,'
      '        T027_SEC_TYPE,'
      '        T028_ID,'
      '        T028_SHOT_NAME,'
      '        T028_CODE,'
      '         T025_SHOT_NAME'
      'FROM'#9'V_405_EMISSION'
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000900000007000000543033305F494401000000000007000000543032
      365F494401000000000007000000543032375F49440100000000000D00000054
      3032365F5345435F5245474E0100000000000D000000543032375F5345435F54
      5950450100000000000E000000543032385F53484F545F4E414D450100000000
      0007000000543032385F494401000000000009000000543032385F434F444501
      00000000000E000000543032355F53484F545F4E414D45010000000000}
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
      Required = True
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
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  :o_result := Pk_405_Emissions.f_emission_check(v_rec);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000004000000080000003A543032365F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000090000003A4F5F524553554C54040000
      000000000000000000}
  end
end
