inherited frm58_101List: Tfrm58_101List
  Left = 152
  Top = 253
  Caption = 'Данные формы 101'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер КО'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование КО'
          Width = 272
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Период'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T061_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма (млн. долл.)'
          Width = 125
          Visible = True
        end>
    end
  end
  inherited Panel1: TPanel
    inherited pc01: TPageControl
      inherited ts01: TTabSheet
        inherited ToolBar3: TToolBar
          Height = 22
          AutoSize = True
        end
        inherited ListView: TListView
          Top = 22
          Height = 115
        end
      end
    end
  end
  inherited pnlButtons: TPanel
    TabOrder = 2
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = True
      Visible = True
    end
    inherited actDeleteAttributes: TAction
      Enabled = True
      Visible = True
    end
    inherited actEditAttributes: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T061_ROWID,'
      '  T061_ID,'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '  T061_SUM,'
      '  REGN,'
      '  BANK_NAME'
      'from V_405_KO_SUM'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543036315F494401000000000007000000543035
      355F49440100000000000E000000543035355F4C4F4E475F4E414D4501000000
      000008000000543036315F53554D010000000000040000005245474E01000000
      00000900000042414E4B5F4E414D45010000000000}
    object odsListT061_ID: TFloatField
      FieldName = 'T061_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT061_SUM: TFloatField
      FieldName = 'T061_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Required = True
      Size = 9
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 45
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T061_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.REGN := :REGN;'
      '  v_rec.T061_SUM := :T061_SUM;'
      ''
      '  Pk_Form_405.p_dbf_101_add(v_rec);'
      '  :T061_ID := v_rec.T061_ID;'
      '  :T055_ID := v_rec.T055_ID;'
      '  :REGN := v_rec.REGN;'
      '  :T061_SUM := v_rec.T061_SUM;'
      'END;'
      ''
      '  ')
    Variables.Data = {
      0300000004000000080000003A543035355F4944040000000000000000000000
      050000003A5245474E050000000000000000000000090000003A543036315F53
      554D040000000000000000000000080000003A543036315F4944040000000000
      000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T061_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T061_ID := :T061_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.REGN := :REGN;'
      '  v_rec.T061_SUM := :T061_SUM;'
      ''
      '  Pk_Form_405.p_dbf_101_update(v_rec);'
      '  :T061_ID := v_rec.T061_ID;'
      '  :T055_ID := v_rec.T055_ID;'
      '  :REGN := v_rec.REGN;'
      '  :T061_SUM := v_rec.T061_SUM;'
      'END;'
      ''
      '')
    Variables.Data = {
      0300000004000000080000003A543036315F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000050000003A524547
      4E050000000000000000000000090000003A543036315F53554D040000000000
      000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T061_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T061_ID := :T061_ID;'
      '  Pk_Form_405.p_dbf_101_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543036315F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T061_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T061_ID := :T061_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.REGN := :REGN;'
      '  v_rec.T061_SUM := :T061_SUM;'
      '  :o_result := Pk_Form_405.f_dbf_101_check(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000005000000080000003A543036315F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000050000003A524547
      4E050000000000000000000000090000003A543036315F53554D040000000000
      000000000000090000003A4F5F524553554C54040000000000000000000000}
  end
  inherited OpenDialog: TOpenDialog
    Filter = 'Книги Excel (*.xls, *.xslx)|*.xls;*.xlsx'
    Top = 176
  end
end
