inherited frm08_PayList: Tfrm08_PayList
  Left = 204
  Top = 160
  Width = 785
  Height = 519
  Caption = 'Направления платежа'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 774
    Height = 433
  end
  inherited paRight: TPanel
    Left = 777
    Height = 433
  end
  inherited paMain: TPanel
    Width = 774
    Height = 433
    inherited ToolBar2: TToolBar
      Width = 774
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 774
      Height = 368
      AdvSettings.Indexes = <
        item
          FieldName = 'T006_DIR_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T006_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T006_NAME'
          PickList.Strings = ()
          Title.Caption = 'Код н. пл.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIR_NAME'
          PickList.Strings = ()
          Title.Caption = 'Направление'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DESC'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 513
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 774
      inherited Panel1: TPanel
        Left = 747
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 774
      inherited Panel1: TPanel
        Left = 747
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 466
    Width = 777
  end
  inherited pnlButtons: TPanel
    Top = 433
    Width = 777
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T006_ROWID,'
      '  T006_ID,'
      '  T006_NAME,'
      '  T006_DESC,'
      '  T006_DIRECTION,'
      '  T006_DIR_NAME'
      'FROM   V_PAY_VIEW  '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543030365F494401000000000009000000543030
      365F4E414D4501000000000009000000543030365F444553430100000000000E
      000000543030365F444952454354494F4E0100000000000D000000543030365F
      4449525F4E414D45010000000000}
    object odsListT006_ID: TFloatField
      FieldName = 'T006_ID'
      Required = True
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object odsListT006_DESC: TStringField
      FieldName = 'T006_DESC'
      Size = 1000
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
    end
    object odsListT006_DIR_NAME: TStringField
      FieldName = 'T006_DIR_NAME'
      Size = 9
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T006_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T006_NAME := :T006_NAME;'
      '  v_rec.T006_DESC := :T006_DESC;'
      '  v_rec.T006_DIRECTION := :T006_DIRECTION;'
      '  Pk_Form_405.p_pay_add(v_rec);'
      '  :T006_ID := v_rec.T006_ID;'
      '  :T006_NAME := v_rec.T006_NAME;'
      '  :T006_DESC := v_rec.T006_DESC;'
      '  :T006_DIRECTION := v_rec.T006_DIRECTION;'
      'END;'
      ''
      ' ')
    Variables.Data = {
      03000000040000000A0000003A543030365F4E414D4505000000000000000000
      00000A0000003A543030365F4445534305000000000000000000000008000000
      3A543030365F49440400000000000000000000000F0000003A543030365F4449
      52454354494F4E040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T006_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T006_ID := :T006_ID;'
      '  v_rec.T006_NAME := :T006_NAME;'
      '  v_rec.T006_DESC := :T006_DESC;'
      '  v_rec.T006_DIRECTION := :T006_DIRECTION;'
      '  Pk_Form_405.p_pay_update(v_rec);'
      '  :T006_NAME := v_rec.T006_NAME;'
      '  :T006_DESC := v_rec.T006_DESC;'
      '  :T006_DIRECTION := v_rec.T006_DIRECTION;'
      'END;'
      '')
    Variables.Data = {
      0300000004000000080000003A543030365F4944040000000000000000000000
      0A0000003A543030365F4E414D450500000000000000000000000A0000003A54
      3030365F444553430500000000000000000000000F0000003A543030365F4449
      52454354494F4E040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T006_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T006_ID := :T006_ID;'
      '  Pk_Form_405.p_pay_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543030365F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T006_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T006_ID := :T006_ID;'
      '  v_rec.T006_NAME := :T006_NAME;'
      '  v_rec.T006_DESC := :T006_DESC;'
      '  :o_result := Pk_Form_405.f_pay_check(v_rec);'
      'END;'
      ' '
      ''
      '')
    Variables.Data = {
      03000000040000000A0000003A543030365F4E414D4505000000000000000000
      0000090000003A4F5F524553554C54040000000000000000000000080000003A
      543030365F49440400000000000000000000000A0000003A543030365F444553
      43050000000000000000000000}
  end
end
