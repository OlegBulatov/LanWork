inherited frm06_BondList: Tfrm06_BondList
  Left = 383
  Top = 231
  Caption = 'Типы ценных бумаг'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton17: TToolButton
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Visible = False
      end
      inherited ToolButton4: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'T016_BOND_ID'
          PickList.Strings = ()
          Title.Caption = 'Код типа ц.б.'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T016_BOND_DESC'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 900
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T016_ROWID, T016_ID, T016_BOND_ID,'
      '       T016_BOND_DESC'
      'FROM   V_BOND_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543031365F49440100000000000C000000543031
      365F424F4E445F49440100000000000E000000543031365F424F4E445F444553
      43010000000000}
    object odsListT016_ID: TFloatField
      FieldName = 'T016_ID'
      Required = True
    end
    object odsListT016_BOND_ID: TStringField
      FieldName = 'T016_BOND_ID'
      Required = True
      Size = 4
    end
    object odsListT016_BOND_DESC: TStringField
      FieldName = 'T016_BOND_DESC'
      Size = 100
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T016_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T016_BOND_ID := :T016_BOND_ID;'
      '  v_rec.T016_BOND_DESC := :T016_BOND_DESC;'
      '  Pk_Form_405.p_bond_type_add(v_rec);'
      '  :T016_ID := v_rec.T016_ID;'
      '  :T016_BOND_ID := v_rec.T016_BOND_ID;'
      '  :T016_BOND_DESC := v_rec.T016_BOND_DESC;'
      'END;')
    Variables.Data = {
      03000000030000000D0000003A543031365F424F4E445F494405000000000000
      00000000000F0000003A543031365F424F4E445F444553430500000000000000
      00000000080000003A543031365F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T016_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T016_ID := :T016_ID;'
      '  v_rec.T016_BOND_ID := :T016_BOND_ID;'
      '  v_rec.T016_BOND_DESC := :T016_BOND_DESC;'
      '  Pk_Form_405.p_bond_type_update(v_rec);'
      '  :T016_BOND_ID := v_rec.T016_BOND_ID;'
      '  :T016_BOND_DESC := v_rec.T016_BOND_DESC;'
      'END;')
    Variables.Data = {
      0300000003000000080000003A543031365F4944040000000000000000000000
      0D0000003A543031365F424F4E445F49440500000000000000000000000F0000
      003A543031365F424F4E445F44455343050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T016_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T016_ID := :T016_ID;'
      '  Pk_Form_405.p_bond_type_delete(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0300000001000000080000003A543031365F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T016_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T016_BOND_ID := :T016_BOND_ID;'
      '  :o_result := Pk_Form_405.f_bond_type_check(v_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      03000000020000000D0000003A543031365F424F4E445F494404000000000000
      0000000000090000003A4F5F524553554C54040000000000000000000000}
  end
end
