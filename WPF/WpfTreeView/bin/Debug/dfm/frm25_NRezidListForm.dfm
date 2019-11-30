inherited frm25_NRezidList: Tfrm25_NRezidList
  Left = 383
  Top = 231
  Caption = 'Реестр нерезидентов'
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
          FieldName = 'COUNTRY_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T013_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T013_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 473
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Признак фикт-ти'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T013_ID,'
      ' T013_NAME,'
      ' T013_CODE,'
      ' T034_ID,'
      ' T034_NAME,'
      ' COUNTRY_NAME,'
      ' T013_FICT_STATE,'
      ' T013_FICT_STATE_DESC'
      'FROM   V_405_NREZID_PARENT')
    QBEDefinition.QBEFieldDefs = {
      040000000800000009000000543031335F4E414D450100000000000900000054
      3031335F434F444501000000000007000000543033345F494401000000000009
      000000543033345F4E414D450100000000000C000000434F554E5452595F4E41
      4D4501000000000007000000543031335F49440100000000000F000000543031
      335F464943545F535441544501000000000014000000543031335F464943545F
      53544154455F44455343010000000000}
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Size = 255
    end
    object odsListT013_CODE: TFloatField
      FieldName = 'T013_CODE'
    end
    object odsListT034_NAME: TStringField
      FieldName = 'T034_NAME'
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 255
    end
    object odsListT034_ID: TFloatField
      FieldName = 'T034_ID'
      Required = True
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
      Required = True
    end
    object odsListT013_FICT_STATE: TStringField
      FieldName = 'T013_FICT_STATE'
      Required = True
      Size = 1
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T013_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T013_NAME := :T013_NAME;'
      '  v_rec.T013_CODE := :T013_CODE;'
      '  v_rec.T034_ID := :T034_ID;'
      '  Pk_Form_405.p_nrezid_add(v_rec, true);'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T013_NAME := v_rec.T013_NAME;'
      '  :T013_CODE := v_rec.T013_CODE;'
      '  :T034_ID := v_rec.T034_ID;'
      'END;'
      '')
    Variables.Data = {
      03000000040000000A0000003A543031335F4E414D4505000000000000000000
      00000A0000003A543031335F434F444505000000000000000000000008000000
      3A543033345F4944040000000000000000000000080000003A543031335F4944
      040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      ' DECLARE'
      '   v_rec Pk_Form_405.t_T013_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T013_NAME := :T013_NAME;'
      '  v_rec.T013_CODE := :T013_CODE;'
      '  v_rec.T034_ID := :T034_ID;'
      '  Pk_Form_405.p_nrezid_update(v_rec);'
      '  :T013_NAME := v_rec.T013_NAME;'
      '  :T013_CODE := v_rec.T013_CODE;'
      '  :T034_ID := v_rec.T034_ID;'
      'END;'
      '')
    Variables.Data = {
      0300000004000000080000003A543031335F4944040000000000000000000000
      0A0000003A543031335F4E414D450500000000000000000000000A0000003A54
      3031335F434F4445050000000000000000000000080000003A543033345F4944
      040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T013_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T013_ID := :T013_ID;'
      '  Pk_Form_405.p_nrezid_delete(v_rec, true);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A543031335F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T013_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T013_NAME := :T013_NAME;'
      '  v_rec.T013_CODE := :T013_CODE;'
      '  v_rec.T034_ID := :T034_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  :o_result := Pk_Form_405.f_nrezid_check(v_rec);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      03000000050000000A0000003A543031335F4E414D4505000000000000000000
      00000A0000003A543031335F434F444505000000000000000000000008000000
      3A543033345F4944040000000000000000000000090000003A4F5F524553554C
      54040000000000000000000000080000003A543031335F494404000000000000
      0000000000}
  end
end
