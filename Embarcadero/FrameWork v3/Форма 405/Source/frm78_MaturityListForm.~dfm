inherited frm78_MaturityList: Tfrm78_MaturityList
  Left = 235
  Top = 165
  Width = 757
  Height = 432
  Caption = 'Матрица погашений'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 746
    Height = 346
  end
  inherited paRight: TPanel
    Left = 749
    Height = 346
  end
  inherited paMain: TPanel
    Width = 746
    Height = 346
    inherited ToolBar2: TToolBar
      Width = 746
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 597
        Top = 0
        Action = actFill
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 746
      Height = 281
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
    inherited fmSeach: TfmSeachFrame
      Width = 746
      inherited Panel1: TPanel
        Left = 719
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 746
      inherited Panel1: TPanel
        Left = 719
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 379
    Width = 749
  end
  inherited pnlButtons: TPanel
    Top = 346
    Width = 749
  end
  inherited ActionList: TActionList
    object actFill: TAction
      Caption = 'Заполнить'
      Enabled = False
      Hint = 'Заполнить матрицу до даты погашения'
      ImageIndex = 19
      Visible = False
      OnExecute = actFillExecute
      OnUpdate = actFillUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T092_ROWID,'
      '       T092_ID,'
      '       T030_ID,'
      '       T092_DATE,'
      '       T092_RATE'
      'FROM   V_405_MATURITY_MATRIX'
      'WHERE  T030_ID = :T030_ID'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543033305F494401000000000007000000543039
      325F494401000000000009000000543039325F44415445010000000000090000
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
      '  v_rec Pk_Form_405.t_T092_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  v_rec.T092_RATE := :T092_RATE;'
      '  Pk_Form_405.p_maturity_date_add(v_rec);'
      '  :T092_ID := v_rec.T092_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T092_DATE := v_rec.T092_DATE;'
      '  :T092_RATE := v_rec.T092_RATE;'
      'END;'
      ' ')
    Variables.Data = {
      0300000004000000080000003A543033305F4944040000000000000000000000
      0A0000003A543039325F444154450C0000000000000000000000080000003A54
      3039325F49440400000000000000000000000A0000003A543039325F52415445
      040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T092_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T092_ID := :T092_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  v_rec.T092_RATE := :T092_RATE;'
      '  Pk_Form_405.p_maturity_date_update(v_rec);'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T092_DATE := v_rec.T092_DATE;'
      '  :T092_RATE := v_rec.T092_RATE;'
      'END;'
      ' ')
    Variables.Data = {
      0300000004000000080000003A543039325F4944040000000000000000000000
      080000003A543033305F49440400000000000000000000000A0000003A543039
      325F444154450C00000000000000000000000A0000003A543039325F52415445
      040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T092_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T092_ID := :T092_ID;'
      '  Pk_Form_405.p_maturity_date_delete(v_rec);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543039325F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T092_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T092_ID := :T092_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  :o_result := Pk_Form_405.f_maturity_date_check(v_rec);'
      'END;')
    Variables.Data = {
      0300000004000000080000003A543039325F4944040000000000000000000000
      080000003A543033305F49440400000000000000000000000A0000003A543039
      325F444154450C0000000000000000000000090000003A4F5F524553554C5404
      0000000000000000000000}
  end
  object oqFill: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      ' Pk_Form_405.p_maturity_date_fill(:T030_ID, :T092_ID);'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543039325F4944040000000000000000000000
      080000003A543033305F4944040000000000000000000000}
    Left = 320
    Top = 184
  end
end
