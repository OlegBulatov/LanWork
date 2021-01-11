inherited frm35_SecRegnList: Tfrm35_SecRegnList
  Left = 252
  Top = 160
  Caption = 'Регистрационные номера'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_TRIMMED'
          PickList.Strings = ()
          Title.Caption = 'Сокр. номер'
          Width = 140
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T026_ROWID,'
      #9#9'   T026_ID, '
      #9#9'   T026_SEC_REGN, '
      #9#9'   T026_TRIMMED'
      'FROM   V_405_SEC_REGN'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032365F49440100000000000D000000543032
      365F5345435F5245474E0100000000000C000000543032365F5452494D4D4544
      010000000000}
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT026_TRIMMED: TStringField
      FieldName = 'T026_TRIMMED'
      Required = True
      Size = 265
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T026_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T026_SEC_REGN := :T026_SEC_REGN;'
      '  v_rec.T026_TRIMMED := :T026_TRIMMED;'
      '  Pk_Form_405.p_secregn_add(v_rec);'
      '  :T026_ID := v_rec.T026_ID;'
      '  :T026_SEC_REGN := v_rec.T026_SEC_REGN;'
      '  :T026_TRIMMED := v_rec.T026_TRIMMED;'
      'END;'
      ' ')
    Variables.Data = {
      03000000030000000E0000003A543032365F5345435F5245474E050000000000
      0000000000000D0000003A543032365F5452494D4D4544050000000000000000
      000000080000003A543032365F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T026_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T026_SEC_REGN := :T026_SEC_REGN;'
      '  v_rec.T026_TRIMMED := :T026_TRIMMED;'
      '  Pk_Form_405.p_secregn_update(v_rec);'
      '  :T026_SEC_REGN := v_rec.T026_SEC_REGN;'
      '  :T026_TRIMMED := v_rec.T026_TRIMMED;'
      'END;'
      ' ')
    Variables.Data = {
      0300000003000000080000003A543032365F4944040000000000000000000000
      0E0000003A543032365F5345435F5245474E0500000000000000000000000D00
      00003A543032365F5452494D4D4544050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T026_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T026_ID := :T026_ID;'
      '  Pk_Form_405.p_secregn_delete(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0300000001000000080000003A543032365F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T026_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T026_SEC_REGN := :T026_SEC_REGN;'
      '  v_rec.T026_ID := :T026_ID;'
      '  :o_result := Pk_Form_405.f_secregn_check(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      03000000030000000E0000003A543032365F5345435F5245474E050000000000
      000000000000090000003A4F5F524553554C5404000000000000000000000008
      0000003A543032365F4944040000000000000000000000}
  end
end
