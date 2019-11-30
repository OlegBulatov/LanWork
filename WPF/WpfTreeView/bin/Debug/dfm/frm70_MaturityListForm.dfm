inherited frm70_MaturityList: Tfrm70_MaturityList
  Left = 159
  Top = 206
  Caption = 'Матрица погашений'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited paToolBars: TPanel
      inherited ToolBar2: TToolBar
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T092_DATE'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T092_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T092_RATE'
          PickList.Strings = ()
          Title.Caption = 'Ставка (%)'
          Width = 94
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T092_ROWID,'
      '       T092_ID,'
      '       T030_ID,'
      '       T092_DATE,'
      '       T092_RATE'
      'FROM   V_NR_MATURITY_MATRIX'
      'WHERE  T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543039325F494401000000000007000000543033
      305F494401000000000009000000543039325F44415445010000000000090000
      00543039325F52415445010000000000}
    MasterFields = 'T030_ID'
    object odsListT092_ID: TFloatField
      FieldName = 'T092_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT092_DATE: TDateTimeField
      FieldName = 'T092_DATE'
      Required = True
    end
    object odsListT092_RATE: TFloatField
      FieldName = 'T092_RATE'
      Required = True
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Nresident.t_T092_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  v_rec.T092_RATE := :T092_RATE;'
      '  Pk_Nresident.p_maturity_date_add(v_rec);'
      '  :T092_ID := v_rec.T092_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T092_DATE := v_rec.T092_DATE;'
      '  :T092_RATE := v_rec.T092_RATE;'
      'END;')
    Variables.Data = {
      0300000004000000080000003A543033305F4944040000000000000000000000
      0A0000003A543039325F444154450C0000000000000000000000080000003A54
      3039325F49440400000000000000000000000A0000003A543039325F52415445
      040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_NResident.t_T092_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T092_ID := :T092_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  v_rec.T092_RATE := :T092_RATE;'
      '  Pk_NResident.p_maturity_date_update(v_rec);'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T092_DATE := v_rec.T092_DATE;'
      '  :T092_RATE := v_rec.T092_RATE;'
      'END;')
    Variables.Data = {
      0300000004000000080000003A543033305F4944040000000000000000000000
      0A0000003A543039325F444154450C0000000000000000000000080000003A54
      3039325F49440400000000000000000000000A0000003A543039325F52415445
      040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_T092_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T092_ID := :T092_ID;'
      '  Pk_NResident.p_maturity_date_delete(v_rec);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543039325F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_T092_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T092_ID := :T092_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  :O_result := Pk_NResident.f_maturity_date_check(v_rec);'
      'END;')
    Variables.Data = {
      0300000004000000080000003A543033305F4944040000000000000000000000
      0A0000003A543039325F444154450C0000000000000000000000080000003A54
      3039325F4944040000000000000000000000090000003A4F5F524553554C5404
      0000000000000000000000}
  end
end
