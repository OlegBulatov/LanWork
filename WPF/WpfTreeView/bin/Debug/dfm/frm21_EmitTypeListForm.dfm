inherited frm21_EmitTypeList: Tfrm21_EmitTypeList
  Left = 383
  Top = 231
  Caption = 'Типы эмитентов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton4: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T037_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T037_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сокр. наименование'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T037_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Полное наименование'
          Width = 400
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT *'
      'FROM   V_405_ISSUER_INF_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033375F49440100000000000E000000543033
      375F53484F545F4E414D450100000000000E000000543033375F4C4F4E475F4E
      414D45010000000000}
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
      Required = True
    end
    object odsListT037_SHOT_NAME: TStringField
      FieldName = 'T037_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT037_LONG_NAME: TStringField
      FieldName = 'T037_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T037_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T037_ID := :T037_ID;'
      '  v_rec.T037_SHOT_NAME := :T037_SHOT_NAME;'
      '  v_rec.T037_LONG_NAME := :T037_LONG_NAME;'
      '  Pk_Form_405.p_issuer_inf_type_add(v_rec);'
      '  :T037_ID := v_rec.T037_ID;'
      '  :T037_SHOT_NAME := v_rec.T037_SHOT_NAME;'
      '  :T037_LONG_NAME := v_rec.T037_LONG_NAME;'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A543033375F4944040000000000000000000000
      0F0000003A543033375F53484F545F4E414D450500000000000000000000000F
      0000003A543033375F4C4F4E475F4E414D45050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T037_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T037_ID := :T037_ID;'
      '  v_rec.T037_SHOT_NAME := :T037_SHOT_NAME;'
      '  v_rec.T037_LONG_NAME := :T037_LONG_NAME;'
      '  Pk_Form_405.p_issuer_inf_type_update(v_rec);'
      '  :T037_SHOT_NAME := v_rec.T037_SHOT_NAME;'
      '  :T037_LONG_NAME := v_rec.T037_LONG_NAME;'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A543033375F4944040000000000000000000000
      0F0000003A543033375F53484F545F4E414D450500000000000000000000000F
      0000003A543033375F4C4F4E475F4E414D45050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T037_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T037_ID := :T037_ID;'
      '  Pk_Form_405.p_issuer_inf_type_delete(v_rec);'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033375F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T037_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T037_ID := :T037_ID;'
      '  v_rec.T037_SHOT_NAME := :T037_SHOT_NAME;'
      '  v_rec.T037_LONG_NAME := :T037_LONG_NAME;'
      '  :o_result := Pk_Form_405.f_issuer_inf_type_check(v_rec);'
      'END;'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000004000000080000003A543033375F4944040000000000000000000000
      0F0000003A543033375F53484F545F4E414D450500000000000000000000000F
      0000003A543033375F4C4F4E475F4E414D450500000000000000000000000900
      00003A4F5F524553554C54040000000000000000000000}
  end
end
