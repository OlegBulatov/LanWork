inherited frm29_SecTypeList: Tfrm29_SecTypeList
  Caption = 'Типы ценных бумаг'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T027_ORDER_NO'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T027_ORDER_NO'
          PickList.Strings = ()
          Title.Caption = 'Порядковый номер'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_COMMENTS'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 506
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_INCL_FICT1_NAME'
          PickList.Strings = ()
          Title.Caption = 'Признак'
          Width = 69
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ROWID, T027_ID,'#9'T027_SEC_TYPE, T027_COMMENTS,'
      #9#9'   T027_INCL_FICT1, T027_ORDER_NO, T027_INCL_FICT1_NAME'
      'FROM   V_405_SEC_TYPE'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543032375F49440100000000000D000000543032
      375F5345435F545950450100000000000D000000543032375F434F4D4D454E54
      530100000000000F000000543032375F494E434C5F4649435431010000000000
      0D000000543032375F4F524445525F4E4F01000000000014000000543032375F
      494E434C5F46494354315F4E414D45010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT027_COMMENTS: TStringField
      FieldName = 'T027_COMMENTS'
      Required = True
      Size = 255
    end
    object odsListT027_INCL_FICT1: TStringField
      FieldName = 'T027_INCL_FICT1'
      Required = True
      Size = 1
    end
    object odsListT027_ORDER_NO: TFloatField
      FieldName = 'T027_ORDER_NO'
      Required = True
    end
    object odsListT027_INCL_FICT1_NAME: TStringField
      FieldName = 'T027_INCL_FICT1_NAME'
      Size = 3
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T027_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T027_SEC_TYPE := :T027_SEC_TYPE;'
      '  v_rec.T027_COMMENTS := :T027_COMMENTS;'
      '  v_rec.T027_ORDER_NO := :T027_ORDER_NO;'
      '  v_rec.T027_INCL_FICT1 := :T027_INCL_FICT1;'
      '  Pk_Form_405.p_sectype_add(v_rec);'
      '  :T027_ID := v_rec.T027_ID;'
      '  :T027_SEC_TYPE := v_rec.T027_SEC_TYPE;'
      '  :T027_COMMENTS := v_rec.T027_COMMENTS;'
      '  :T027_ORDER_NO := v_rec.T027_ORDER_NO;'
      '  :T027_INCL_FICT1 := v_rec.T027_INCL_FICT1;'
      'END;')
    Variables.Data = {
      03000000050000000E0000003A543032375F5345435F54595045050000000000
      0000000000000E0000003A543032375F434F4D4D454E54530500000000000000
      000000000E0000003A543032375F4F524445525F4E4F03000000000000000000
      0000100000003A543032375F494E434C5F464943543105000000000000000000
      0000080000003A543032375F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T027_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T027_SEC_TYPE := :T027_SEC_TYPE;'
      '  v_rec.T027_COMMENTS := :T027_COMMENTS;'
      '  v_rec.T027_ORDER_NO := :T027_ORDER_NO;'
      '  v_rec.T027_INCL_FICT1 := :T027_INCL_FICT1;'
      '  Pk_Form_405.p_sectype_update(v_rec);'
      '  :T027_SEC_TYPE := v_rec.T027_SEC_TYPE;'
      '  :T027_COMMENTS := v_rec.T027_COMMENTS;'
      '  :T027_ORDER_NO := v_rec.T027_ORDER_NO;'
      '  :T027_INCL_FICT1 := v_rec.T027_INCL_FICT1;'
      'END;'
      ' ')
    Variables.Data = {
      0300000005000000080000003A543032375F4944040000000000000000000000
      0E0000003A543032375F5345435F545950450500000000000000000000000E00
      00003A543032375F434F4D4D454E54530500000000000000000000000E000000
      3A543032375F4F524445525F4E4F030000000000000000000000100000003A54
      3032375F494E434C5F4649435431050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T027_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T027_ID := :T027_ID;'
      '  Pk_Form_405.p_sectype_delete(v_rec);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A543032375F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T027_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T027_SEC_TYPE := :T027_SEC_TYPE;'
      '  v_rec.T027_ORDER_NO := :T027_ORDER_NO;'
      '  v_rec.T027_COMMENTS := :T027_COMMENTS;'
      '  :o_result := Pk_Form_405.f_sectype_check(v_rec);'
      'END;')
    Variables.Data = {
      03000000050000000E0000003A543032375F5345435F54595045050000000000
      000000000000090000003A4F5F524553554C5404000000000000000000000008
      0000003A543032375F49440400000000000000000000000E0000003A54303237
      5F4F524445525F4E4F0400000000000000000000000E0000003A543032375F43
      4F4D4D454E5453050000000000000000000000}
  end
end
