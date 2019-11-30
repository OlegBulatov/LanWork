inherited frm07_OperList: Tfrm07_OperList
  Left = 182
  Top = 191
  Width = 792
  Height = 493
  Caption = 'Коды операций'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 781
    Height = 407
  end
  inherited paRight: TPanel
    Left = 784
    Height = 407
  end
  inherited paMain: TPanel
    Width = 781
    Height = 407
    inherited ToolBar2: TToolBar
      Width = 781
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 781
      Height = 342
      AdvSettings.Indexes = <
        item
          FieldName = 'T011_TYPE_ID'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T011_TYPE_ID'
          PickList.Strings = ()
          Title.Caption = 'Код операции'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T011_OPERATION_DESC'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 641
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 781
      inherited Panel1: TPanel
        Left = 754
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 781
      inherited Panel1: TPanel
        Left = 754
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 440
    Width = 784
  end
  inherited pnlButtons: TPanel
    Top = 407
    Width = 784
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T011_ROWID, T011_ID, T011_TYPE_ID,'
      '   T011_OPERATION_DESC'
      'FROM   V_OPERATION_TYPE  ')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543031315F49440100000000000C000000543031
      315F545950455F494401000000000013000000543031315F4F5045524154494F
      4E5F44455343010000000000}
    object odsListT011_ID: TFloatField
      FieldName = 'T011_ID'
      Required = True
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsListT011_OPERATION_DESC: TStringField
      FieldName = 'T011_OPERATION_DESC'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T011_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T011_TYPE_ID := :T011_TYPE_ID;'
      '  v_rec.T011_OPERATION_DESC := :T011_OPERATION_DESC;'
      '  Pk_Form_405.p_oper_type_add(v_rec);'
      '  :T011_ID := v_rec.T011_ID;'
      '  :T011_TYPE_ID := v_rec.T011_TYPE_ID;'
      '  :T011_OPERATION_DESC := v_rec.T011_OPERATION_DESC;'
      'END;'
      '')
    Variables.Data = {
      03000000030000000D0000003A543031315F545950455F494405000000000000
      0000000000140000003A543031315F4F5045524154494F4E5F44455343050000
      000000000000000000080000003A543031315F49440400000000000000000000
      00}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T011_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T011_ID := :T011_ID;'
      '  v_rec.T011_TYPE_ID := :T011_TYPE_ID;'
      '  v_rec.T011_OPERATION_DESC := :T011_OPERATION_DESC;'
      '  Pk_Form_405.p_oper_type_update(v_rec);'
      '  :T011_TYPE_ID := v_rec.T011_TYPE_ID;'
      '  :T011_OPERATION_DESC := v_rec.T011_OPERATION_DESC;'
      'END;'
      '')
    Variables.Data = {
      0300000003000000080000003A543031315F4944040000000000000000000000
      0D0000003A543031315F545950455F4944050000000000000000000000140000
      003A543031315F4F5045524154494F4E5F444553430500000000000000000000
      00}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T011_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T011_ID := :T011_ID;'
      '  Pk_Form_405.p_oper_type_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543031315F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T011_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T011_ID := :T011_ID;'
      '  v_rec.T011_TYPE_ID := :T011_TYPE_ID;'
      '  v_rec.T011_OPERATION_DESC := :T011_OPERATION_DESC;'
      '  :o_result := Pk_Form_405.f_oper_type_check(v_rec);'
      'END;'
      ' '
      ''
      '')
    Variables.Data = {
      03000000040000000D0000003A543031315F545950455F494405000000000000
      0000000000090000003A4F5F524553554C540400000000000000000000000800
      00003A543031315F4944040000000000000000000000140000003A543031315F
      4F5045524154494F4E5F44455343050000000000000000000000}
  end
end
