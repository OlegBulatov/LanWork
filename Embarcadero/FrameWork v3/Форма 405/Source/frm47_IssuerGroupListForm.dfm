inherited frm47_IssuerGroupList: Tfrm47_IssuerGroupList
  Left = 252
  Top = 119
  Caption = 'Группы эмитентов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      ButtonWidth = 179
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      inherited ToolButton5: TToolButton
        Left = 593
      end
      inherited ToolButton7: TToolButton
        Left = 601
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T042_SHORT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T042_SHORT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 400
          Visible = True
        end>
    end
  end
  inherited Panel1: TPanel
    inherited pc01: TPageControl
      inherited ts01: TTabSheet
        Caption = 'Эмитенты, входящие в группу'
      end
    end
  end
  inherited ActionList: TActionList
    inherited actShowDetail: TAction
      Caption = 'Эмитенты, входящие в группу'
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T042_ROWID, T042_ID, T042_SHORT_NAME, T042_LONG_NAME'
      'FROM V_405_ISSUER_GROUP')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543034325F49440100000000000F000000543034
      325F53484F52545F4E414D450100000000000E000000543034325F4C4F4E475F
      4E414D45010000000000}
    object odsListT042_ID: TFloatField
      FieldName = 'T042_ID'
      Required = True
    end
    object odsListT042_SHORT_NAME: TStringField
      FieldName = 'T042_SHORT_NAME'
      Required = True
      Size = 255
    end
    object odsListT042_LONG_NAME: TStringField
      FieldName = 'T042_LONG_NAME'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T042_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T042_ID := :T042_ID;'
      '  v_rec.T042_SHORT_NAME := :T042_SHORT_NAME;'
      '  v_rec.T042_LONG_NAME := :T042_LONG_NAME;'
      '  Pk_Form_405.p_issuer_group_add(v_rec);'
      '  :T042_ID := v_rec.T042_ID;'
      '  :T042_SHORT_NAME := v_rec.T042_SHORT_NAME;'
      '  :T042_LONG_NAME := v_rec.T042_LONG_NAME;'
      'END;'
      ' ')
    Variables.Data = {
      0300000003000000080000003A543034325F4944040000000000000000000000
      100000003A543034325F53484F52545F4E414D45050000000000000000000000
      0F0000003A543034325F4C4F4E475F4E414D45050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T042_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T042_ID := :T042_ID;'
      '  v_rec.T042_SHORT_NAME := :T042_SHORT_NAME;'
      '  v_rec.T042_LONG_NAME := :T042_LONG_NAME;'
      '  Pk_Form_405.p_issuer_group_update(v_rec);'
      '  :T042_SHORT_NAME := v_rec.T042_SHORT_NAME;'
      '  :T042_LONG_NAME := v_rec.T042_LONG_NAME;'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A543034325F4944040000000000000000000000
      100000003A543034325F53484F52545F4E414D45050000000000000000000000
      0F0000003A543034325F4C4F4E475F4E414D45050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T042_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T042_ID := :T042_ID;'
      '  Pk_Form_405.p_issuer_group_delete(v_rec);'
      'END;'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543034325F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T042_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T042_ID := :T042_ID;'
      '  v_rec.T042_SHORT_NAME := :T042_SHORT_NAME;'
      '  v_rec.T042_LONG_NAME := :T042_LONG_NAME;'
      '  :o_result := Pk_Form_405.f_issuer_group_check(v_rec);'
      'END;'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000004000000080000003A543034325F4944040000000000000000000000
      100000003A543034325F53484F52545F4E414D45050000000000000000000000
      0F0000003A543034325F4C4F4E475F4E414D4505000000000000000000000009
      0000003A4F5F524553554C54040000000000000000000000}
  end
end
