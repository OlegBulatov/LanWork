inherited frm91_DraftProfitListItem: Tfrm91_DraftProfitListItem
  Left = 387
  Top = 316
  Width = 742
  Caption = 'frm91_DraftProfitListItem'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 731
  end
  inherited Panel2: TPanel
    Width = 734
    inherited Panel3: TPanel
      Left = 569
    end
  end
  inherited paRight: TPanel
    Left = 734
  end
  inherited paMain: TPanel
    Width = 731
    inherited paToolBars: TPanel
      Width = 731
      inherited ToolBar2: TToolBar
        Width = 731
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 731
      Columns = <
        item
          Expanded = False
          FieldName = 'M028_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M022_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Значение'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M022_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комментарий'
          Width = 333
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 731
      inherited Panel1: TPanel
        Left = 704
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 731
      inherited Panel1: TPanel
        Left = 704
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 734
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from V_NR_REINVEST_REPORT_DATA'
      'where M021_ID = :M021_ID')
    Variables.Data = {
      0300000001000000080000003A4D3032315F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000006000000070000004D3032325F4944010000000000070000004D3032
      315F49440100000000000A0000004D3032325F56414C55450100000000000700
      00004D3032385F4944010000000000090000004D3032385F4E414D4501000000
      00000C0000004D3032325F434F4D4D454E54010000000000}
    MasterFields = 'M021_ID'
    object odsListM022_ID: TFloatField
      FieldName = 'M022_ID'
      Required = True
    end
    object odsListM021_ID: TFloatField
      FieldName = 'M021_ID'
      Required = True
    end
    object odsListM022_VALUE: TFloatField
      FieldName = 'M022_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM028_ID: TFloatField
      FieldName = 'M028_ID'
      Required = True
    end
    object odsListM028_NAME: TStringField
      FieldName = 'M028_NAME'
      Required = True
      Size = 255
    end
    object odsListM022_COMMENT: TStringField
      FieldName = 'M022_COMMENT'
      Size = 4000
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Nresident.t_M022_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M021_ID := :M021_ID;'
      '  v_rec.M028_ID := :M028_ID;'
      '  v_rec.M022_VALUE := :M022_VALUE;'
      '  v_rec.M022_COMMENT := :M022_COMMENT;'
      '  Pk_Nresident.p_profit_repdata_add(v_rec);'
      '  :M022_ID := v_rec.M022_ID;'
      'END;'
      ' ')
    Variables.Data = {
      0300000005000000080000003A4D3032385F4944040000000000000000000000
      0B0000003A4D3032325F56414C5545040000000000000000000000080000003A
      4D3032325F4944040000000000000000000000080000003A4D3032315F494404
      00000000000000000000000D0000003A4D3032325F434F4D4D454E5405000000
      0000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Nresident.t_M022_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M022_ID:= :M022_ID;'
      '  v_rec.M028_ID := :M028_ID;'
      '  v_rec.M022_VALUE := :M022_VALUE;'
      '  v_rec.M022_COMMENT := :M022_COMMENT;'
      '  Pk_Nresident.p_profit_repdata_update(v_rec);'
      '  :M022_ID := v_rec.M022_ID;'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000004000000080000003A4D3032325F4944040000000000000000000000
      080000003A4D3032385F49440400000000000000000000000B0000003A4D3032
      325F56414C55450400000000000000000000000D0000003A4D3032325F434F4D
      4D454E54050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M022_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M022_ID := :M022_ID;'
      '  Pk_NResident.p_profit_repdata_delete(v_rec);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A4D3032325F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M022_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M022_ID := :M022_ID;'
      '  v_rec.M021_ID := :M021_ID;'
      '  v_rec.M028_ID := :M028_ID;'
      '  :O_result := Pk_NResident.f_profit_repdata_check(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000004000000080000003A4D3032325F4944040000000000000000000000
      080000003A4D3032385F4944040000000000000000000000090000003A4F5F52
      4553554C54040000000000000000000000080000003A4D3032315F4944040000
      000000000000000000}
  end
end
