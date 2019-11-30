inherited frm97_EmissionListItem: Tfrm97_EmissionListItem
  Caption = 'Размер эмиссий'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton5: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T098_START_DATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T098_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата с'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T098_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата по'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T098_EMISSION_SIZE'
          PickList.Strings = ()
          Title.Caption = 'Размер эмиссии'
          Width = 150
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T098_ID,'
      ' T030_ID,'
      ' T098_START_DATE,'
      ' T098_END_DATE,'
      ' T098_EMISSION_SIZE'
      'FROM V_NR_EMISS_SIZE'
      'WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543039385F494401000000000007000000543033
      305F49440100000000000F000000543039385F53544152545F44415445010000
      0000000D000000543039385F454E445F44415445010000000000120000005430
      39385F454D495353494F4E5F53495A45010000000000}
    MasterFields = 'T030_ID'
    object odsListT098_ID: TFloatField
      FieldName = 'T098_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT098_START_DATE: TDateTimeField
      FieldName = 'T098_START_DATE'
      Required = True
    end
    object odsListT098_END_DATE: TDateTimeField
      FieldName = 'T098_END_DATE'
    end
    object odsListT098_EMISSION_SIZE: TFloatField
      FieldName = 'T098_EMISSION_SIZE'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T098_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T098_START_DATE := :T098_START_DATE;'
      '  v_rec.T098_EMISSION_SIZE := :T098_EMISSION_SIZE;'
      '  PK_NResident.p_emiss_size_add(v_rec);'
      '  :T098_ID := v_rec.T098_ID;'
      'END;'
      '')
    Variables.Data = {
      0300000004000000080000003A543033305F4944040000000000000000000000
      100000003A543039385F53544152545F444154450C0000000000000000000000
      130000003A543039385F454D495353494F4E5F53495A45040000000000000000
      000000080000003A543039385F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T098_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T098_ID := :T098_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T098_START_DATE := :T098_START_DATE;'
      '  v_rec.T098_EMISSION_SIZE := :T098_EMISSION_SIZE;'
      '  PK_NResident.p_emiss_size_update(v_rec);'
      'END;'
      '')
    Variables.Data = {
      0300000004000000080000003A543039385F4944040000000000000000000000
      100000003A543039385F53544152545F444154450C0000000000000000000000
      130000003A543039385F454D495353494F4E5F53495A45040000000000000000
      000000080000003A543033305F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T098_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T098_ID := :T098_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T098_START_DATE := :T098_START_DATE;'
      '  PK_NResident.p_emiss_size_delete(v_rec);'
      'END;')
    Variables.Data = {
      0300000003000000080000003A543039385F4944040000000000000000000000
      080000003A543033305F4944040000000000000000000000100000003A543039
      385F53544152545F444154450C0000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T098_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T098_ID := :T098_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T098_START_DATE := :T098_START_DATE;'
      '  :o_result := PK_NResident.f_emiss_size_check(v_rec);'
      'END;')
    Variables.Data = {
      0300000004000000080000003A543039385F4944040000000000000000000000
      080000003A543033305F4944040000000000000000000000100000003A543039
      385F53544152545F444154450C0000000000000000000000090000003A4F5F52
      4553554C540400000008000000000000000000000000000000}
  end
end
