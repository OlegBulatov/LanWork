inherited frm59_DayList: Tfrm59_DayList
  Left = 272
  Top = 163
  Width = 792
  Height = 493
  Caption = 'Справочник рабочих дней'
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
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Месяц'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T063_MONTH_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во рабочих дней'
          Width = 120
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
      
        'SELECT T063_ROWID, T063_ID, T055_ID, T055_LONG_NAME, T063_MONTH_' +
        'COUNT'
      'FROM   V_405_WORKDAY  '
      'ORDER BY T055_START_DATE')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543036335F494401000000000007000000543035
      355F49440100000000000E000000543035355F4C4F4E475F4E414D4501000000
      000010000000543036335F4D4F4E54485F434F554E54010000000000}
    object odsListT063_ID: TFloatField
      FieldName = 'T063_ID'
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
    object odsListT063_MONTH_COUNT: TFloatField
      FieldName = 'T063_MONTH_COUNT'
      Required = True
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T063_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.T063_MONTH_COUNT := :T063_MONTH_COUNT;'
      '  Pk_Form_405.p_workday_add(v_rec);'
      '  :T063_ID := v_rec.T063_ID;'
      '  :T055_ID := v_rec.T055_ID;'
      '  :T063_MONTH_COUNT := v_rec.T063_MONTH_COUNT;'
      'END;'
      ''
      ' ')
    Variables.Data = {
      0300000003000000080000003A543035355F4944040000000000000000000000
      110000003A543036335F4D4F4E54485F434F554E540400000000000000000000
      00080000003A543036335F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T063_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T063_ID := :T063_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.T063_MONTH_COUNT := :T063_MONTH_COUNT;'
      '  Pk_Form_405.p_workday_update(v_rec);'
      '  :T063_ID := v_rec.T063_ID;'
      '  :T055_ID := v_rec.T055_ID;'
      '  :T063_MONTH_COUNT := v_rec.T063_MONTH_COUNT;'
      'END;'
      ''
      ' ')
    Variables.Data = {
      0300000003000000080000003A543036335F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000110000003A543036
      335F4D4F4E54485F434F554E54040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T063_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T063_ID := :T063_ID;'
      '  Pk_Form_405.p_workday_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543036335F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T063_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T063_ID := :T063_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  :o_result := Pk_Form_405.f_workday_check(v_rec);'
      'END;'
      ' '
      ''
      '')
    Variables.Data = {
      0300000003000000080000003A543036335F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000090000003A4F5F52
      4553554C54040000000000000000000000}
  end
end
