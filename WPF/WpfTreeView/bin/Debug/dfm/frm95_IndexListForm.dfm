inherited frm95_IndexList: Tfrm95_IndexList
  Left = 247
  Top = 344
  Caption = 'frm95_IndexList'
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
      Columns = <
        item
          Expanded = False
          FieldName = 'M023_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M023_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 600
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M023_USAGE_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Применение'
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from v_nr_reinvest_index')
    QBEDefinition.QBEFieldDefs = {
      0400000006000000070000004D3032335F4944010000000000090000004D3032
      335F4E414D450100000000000A0000004D3032335F4445534352010000000000
      0A0000004D3032335F5553414745010000000000100000004D3032335F555341
      47455F44455343520100000000000D0000004D3032335F524541444F4E4C5901
      0000000000}
    object odsListM023_ID: TFloatField
      FieldName = 'M023_ID'
      Required = True
    end
    object odsListM023_NAME: TStringField
      FieldName = 'M023_NAME'
      Required = True
      Size = 255
    end
    object odsListM023_DESCR: TStringField
      FieldName = 'M023_DESCR'
      Size = 4000
    end
    object odsListM023_USAGE: TStringField
      FieldName = 'M023_USAGE'
      Required = True
      Size = 1
    end
    object odsListM023_USAGE_DESCR: TStringField
      FieldName = 'M023_USAGE_DESCR'
      Size = 24
    end
    object odsListM023_READONLY: TStringField
      FieldName = 'M023_READONLY'
      Required = True
      Size = 1
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M023_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M023_NAME := :M023_NAME;'
      '  v_rec.M023_DESCR := :M023_DESCR;'
      '  v_rec.M023_USAGE := :M023_USAGE;'
      '  Pk_NResident.p_index_add(v_rec);'
      '  :M023_ID := v_rec.M023_ID;'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      03000000040000000A0000003A4D3032335F4E414D4505000000000000000000
      00000B0000003A4D3032335F4445534352050000000000000000000000080000
      003A4D3032335F49440400000000000000000000000B0000003A4D3032335F55
      53414745050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M023_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M023_ID := :M023_ID;'
      '  v_rec.M023_NAME := :M023_NAME;'
      '  v_rec.M023_DESCR := :M023_DESCR;'
      '  v_rec.M023_USAGE := :M023_USAGE;'
      '  Pk_NResident.p_index_update(v_rec);'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000004000000080000003A4D3032335F4944040000000000000000000000
      0A0000003A4D3032335F4E414D450500000000000000000000000B0000003A4D
      3032335F44455343520500000000000000000000000B0000003A4D3032335F55
      53414745050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_NResident.p_index_delete(:M023_ID);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A4D3032335F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  :o_result := Pk_NResident.f_index_check(:M023_ID, :M023_NAME);'
      'END;'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000003000000090000003A4F5F524553554C540400000000000000000000
      00080000003A4D3032335F49440400000000000000000000000A0000003A4D30
      32335F4E414D45050000000000000000000000}
  end
end
