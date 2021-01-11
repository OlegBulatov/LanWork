inherited frm37_SposobRazmList: Tfrm37_SposobRazmList
  Left = 383
  Top = 231
  Caption = 'Способы размещения'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T024_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T024_NAME'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 300
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T024_ROWID,'
      #9#9'   T024_ID,'
      #9#9'   T024_NAME'
      'FROM   V_405_SPOSOB_RAZM'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032345F494401000000000009000000543032
      345F4E414D45010000000000}
    object odsListT024_ID: TFloatField
      FieldName = 'T024_ID'
      Required = True
    end
    object odsListT024_NAME: TStringField
      FieldName = 'T024_NAME'
      Required = True
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T024_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T024_NAME := :T024_NAME;'
      '  Pk_Form_405.p_sposob_add(v_rec);'
      '  :T024_ID := v_rec.T024_ID;'
      '  :T024_NAME := v_rec.T024_NAME;'
      'END;'
      ' ')
    Variables.Data = {
      03000000020000000A0000003A543032345F4E414D4505000000000000000000
      0000080000003A543032345F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T024_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T024_ID := :T024_ID;'
      '  v_rec.T024_NAME := :T024_NAME;'
      '  Pk_Form_405.p_sposob_update(v_rec);'
      '  :T024_NAME := v_rec.T024_NAME;'
      'END;'
      ' ')
    Variables.Data = {
      0300000002000000080000003A543032345F4944040000000000000000000000
      0A0000003A543032345F4E414D45050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T024_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T024_ID := :T024_ID;'
      '  Pk_Form_405.p_sposob_delete(v_rec);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A543032345F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T024_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T024_NAME := :T024_NAME;'
      '  v_rec.T024_ID := :T024_ID;'
      '  :o_result := Pk_Form_405.f_sposob_check(v_rec);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      03000000030000000A0000003A543032345F4E414D4505000000000000000000
      0000090000003A4F5F524553554C54040000000000000000000000080000003A
      543032345F4944040000000000000000000000}
  end
end
