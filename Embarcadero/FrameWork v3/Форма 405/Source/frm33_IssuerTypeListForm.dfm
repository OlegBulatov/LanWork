inherited frm33_IssuerTypeList: Tfrm33_IssuerTypeList
  Left = 229
  Top = 187
  Width = 770
  Height = 413
  Caption = 'Типы эмитентов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 759
    Height = 327
  end
  inherited paRight: TPanel
    Left = 762
    Height = 327
  end
  inherited paMain: TPanel
    Width = 759
    Height = 327
    inherited ToolBar2: TToolBar
      Width = 759
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 759
      Height = 262
      AdvSettings.Indexes = <
        item
          FieldName = 'T025_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сокращенное наименование'
          Width = 215
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Полное наименование'
          Width = 316
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 759
      inherited Panel1: TPanel
        Left = 732
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 759
      inherited Panel1: TPanel
        Left = 732
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 360
    Width = 762
  end
  inherited pnlButtons: TPanel
    Top = 327
    Width = 762
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T025_ROWID,'
      #9#9'   T025_ID, '
      #9#9'   T025_SHOT_NAME, '
      #9#9'   T025_LONG_NAME,'
      '       T025_CODE'
      'FROM   V_405_ISSUER_TYPE'
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543032355F49440100000000000E000000543032
      355F53484F545F4E414D450100000000000E000000543032355F4C4F4E475F4E
      414D4501000000000009000000543032355F434F4445010000000000}
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT025_LONG_NAME: TStringField
      FieldName = 'T025_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T025_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T025_SHOT_NAME := :T025_SHOT_NAME;'
      '  v_rec.T025_LONG_NAME := :T025_LONG_NAME;'
      '  v_rec.T025_CODE := :T025_CODE;'
      '  Pk_Form_405.p_issuertype_add(v_rec);'
      '  :T025_ID := v_rec.T025_ID;'
      '  :T025_SHOT_NAME := v_rec.T025_SHOT_NAME;'
      '  :T025_LONG_NAME := v_rec.T025_LONG_NAME;'
      '  :T025_CODE := v_rec.T025_CODE;'
      'END;'
      ' ')
    Variables.Data = {
      03000000040000000F0000003A543032355F53484F545F4E414D450500000000
      000000000000000F0000003A543032355F4C4F4E475F4E414D45050000000000
      000000000000080000003A543032355F49440400000000000000000000000A00
      00003A543032355F434F4445040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T025_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T025_ID := :T025_ID;'
      '  v_rec.T025_SHOT_NAME := :T025_SHOT_NAME;'
      '  v_rec.T025_LONG_NAME := :T025_LONG_NAME;'
      '  v_rec.T025_CODE := :T025_CODE;'
      '  Pk_Form_405.p_issuertype_update(v_rec);'
      '  :T025_SHOT_NAME := v_rec.T025_SHOT_NAME;'
      '  :T025_LONG_NAME := v_rec.T025_LONG_NAME;'
      '  :T025_CODE := v_rec.T025_CODE;'
      'END;'
      ' ')
    Variables.Data = {
      0300000004000000080000003A543032355F4944040000000000000000000000
      0F0000003A543032355F53484F545F4E414D450500000000000000000000000F
      0000003A543032355F4C4F4E475F4E414D450500000000000000000000000A00
      00003A543032355F434F4445040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T025_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T025_ID := :T025_ID;'
      '  Pk_Form_405.p_issuertype_delete(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0300000001000000080000003A543032355F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T025_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T025_ID := :T025_ID;'
      '  v_rec.T025_SHOT_NAME := :T025_SHOT_NAME;'
      '  v_rec.T025_LONG_NAME := :T025_LONG_NAME;'
      '  v_rec.T025_CODE := :T025_CODE;'
      '  :o_result := Pk_Form_405.f_issuertype_check(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      03000000050000000F0000003A543032355F53484F545F4E414D450500000000
      00000000000000090000003A4F5F524553554C54040000000000000000000000
      080000003A543032355F49440400000000000000000000000F0000003A543032
      355F4C4F4E475F4E414D450500000000000000000000000A0000003A54303235
      5F434F4445040000000000000000000000}
  end
end
