inherited frm36_SostVypList: Tfrm36_SostVypList
  Left = 187
  Top = 139
  Width = 791
  Height = 513
  Caption = 'Состояния выплат'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 780
    Height = 427
  end
  inherited paRight: TPanel
    Left = 783
    Height = 427
  end
  inherited paMain: TPanel
    Width = 780
    Height = 427
    inherited ToolBar2: TToolBar
      Width = 780
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 780
      Height = 362
      AdvSettings.Indexes = <
        item
          FieldName = 'T023_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T023_NAME'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 300
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 780
      inherited Panel1: TPanel
        Left = 753
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 780
      inherited Panel1: TPanel
        Left = 753
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 460
    Width = 783
  end
  inherited pnlButtons: TPanel
    Top = 427
    Width = 783
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T023_ROWID,'
      #9#9'   T023_ID,'
      #9#9'   T023_NAME'
      'FROM   V_405_SOST_VYP'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032335F494401000000000009000000543032
      335F4E414D45010000000000}
    object odsListT023_ID: TFloatField
      FieldName = 'T023_ID'
      Required = True
    end
    object odsListT023_NAME: TStringField
      FieldName = 'T023_NAME'
      Required = True
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T023_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T023_NAME := :T023_NAME;'
      '  Pk_Form_405.p_sost_add(v_rec);'
      '  :T023_ID := v_rec.T023_ID;'
      '  :T023_NAME := v_rec.T023_NAME;'
      'END;'
      ' '
      '')
    Variables.Data = {
      03000000020000000A0000003A543032335F4E414D4505000000000000000000
      0000080000003A543032335F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T023_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T023_ID := :T023_ID;'
      '  v_rec.T023_NAME := :T023_NAME;'
      '  Pk_Form_405.p_sost_update(v_rec);'
      '  :T023_NAME := v_rec.T023_NAME;'
      'END;'
      ' '
      '')
    Variables.Data = {
      0300000002000000080000003A543032335F4944040000000000000000000000
      0A0000003A543032335F4E414D45050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T023_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T023_ID := :T023_ID;'
      '  Pk_Form_405.p_sost_delete(v_rec);'
      'END;'
      ' '
      ''
      ' '
      '')
    Variables.Data = {
      0300000001000000080000003A543032335F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T023_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T023_NAME := :T023_NAME;'
      '  v_rec.T023_ID := :T023_ID;'
      '  :o_result := Pk_Form_405.f_sost_check(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      03000000030000000A0000003A543032335F4E414D4505000000000000000000
      0000090000003A4F5F524553554C54040000000000000000000000080000003A
      543032335F4944040000000000000000000000}
  end
end
