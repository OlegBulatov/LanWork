inherited frm18_DivPaymentList: Tfrm18_DivPaymentList
  Width = 987
  Height = 547
  Caption = 'frm18_DivPaymentList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 976
    Height = 461
  end
  inherited Panel2: TPanel
    Top = 480
    Width = 979
    inherited Panel3: TPanel
      Left = 814
    end
  end
  inherited paRight: TPanel
    Left = 979
    Height = 461
  end
  inherited paMain: TPanel
    Width = 976
    Height = 461
    inherited paToolBars: TPanel
      Width = 976
      inherited ToolBar2: TToolBar
        Width = 976
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        object ToolButton6: TToolButton
          Left = 674
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton7: TToolButton
          Left = 682
          Top = 0
          Action = actCopy
          AutoSize = True
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 976
      Height = 396
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_START_DATE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 1
              Caption = 'Месяц'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата начала'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M051_PROCENT'
          PickList.Strings = ()
          Title.Caption = 'Процент (%)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREV_TOTAL_PROFIT'
          PickList.Strings = ()
          Title.Caption = 'КЧП за пред. год'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M051_CALCED_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма расч.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M051_HAND_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма ручн.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M051_USE_CALCED'
          PickList.Strings = ()
          Title.Caption = 'Исп. расч.'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M051_USE_HAND'
          PickList.Strings = ()
          Title.Caption = 'Исп. ручн.'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M051_USE_SUM'
          PickList.Strings = ()
          Title.Caption = 'Исп. сумма'
          Width = 100
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 976
      inherited Panel1: TPanel
        Left = 949
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 976
      inherited Panel1: TPanel
        Left = 949
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 461
    Width = 979
  end
  inherited ActionList: TActionList
    object actCopy: TAction
      Caption = 'Размножить'
      Hint = 'Размножить график с шагом 365 дней'
      OnExecute = actCopyExecute
      OnUpdate = actCopyUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  M051_ID,'
      '  T028_ID,'
      '  T027_ID,'
      '  T055_ID,'
      '  M051_PROCENT,'
      '  T055_START_DATE,'
      '  T055_LONG_NAME, '
      '  PREV_TOTAL_PROFIT,'
      '  M051_CALCED_SUM,'
      '  M051_HAND_SUM,'
      '  M051_USE_CALCED, '
      '  M051_USE_HAND,'
      '  M051_USE_SUM'
      'FROM V_NR_DIVIDEND_PAYMENTS'
      'WHERE T028_ID = :T028_ID'
      'AND :T027_ID =  T027_ID')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D000000070000004D3035315F494401000000000007000000543032
      385F494401000000000007000000543035355F49440100000000000C0000004D
      3035315F50524F43454E540100000000000F000000543035355F53544152545F
      444154450100000000000E000000543035355F4C4F4E475F4E414D4501000000
      000007000000543032375F49440100000000000F0000004D3035315F43414C43
      45445F53554D0100000000000D0000004D3035315F48414E445F53554D010000
      0000000F0000004D3035315F5553455F43414C4345440100000000000D000000
      4D3035315F5553455F48414E440100000000000C0000004D3035315F5553455F
      53554D01000000000011000000505245565F544F54414C5F50524F4649540100
      00000000}
    object odsListM051_ID: TFloatField
      FieldName = 'M051_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListM051_PROCENT: TFloatField
      FieldName = 'M051_PROCENT'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListM051_CALCED_SUM: TFloatField
      FieldName = 'M051_CALCED_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM051_HAND_SUM: TFloatField
      FieldName = 'M051_HAND_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM051_USE_CALCED: TStringField
      FieldName = 'M051_USE_CALCED'
      Size = 1
    end
    object odsListM051_USE_HAND: TStringField
      FieldName = 'M051_USE_HAND'
      Required = True
      Size = 1
    end
    object odsListM051_USE_SUM: TFloatField
      FieldName = 'M051_USE_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListPREV_TOTAL_PROFIT: TFloatField
      FieldName = 'PREV_TOTAL_PROFIT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M051_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.M051_PROCENT := :M051_PROCENT;'
      '  v_rec.M051_HAND_SUM := :M051_HAND_SUM;'
      '  v_rec.M051_USE_HAND := :M051_USE_HAND;'
      '  Pk_NResident.p_div_payment_add(v_rec);'
      '  :M051_ID := v_rec.M051_ID;'
      'END;'
      ' '
      '  ')
    Variables.Data = {
      0300000007000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543035
      355F49440400000000000000000000000D0000003A4D3035315F50524F43454E
      54040000000000000000000000080000003A4D3035315F494404000000000000
      00000000000E0000003A4D3035315F5553455F48414E44050000000000000000
      0000000E0000003A4D3035315F48414E445F53554D0400000000000000000000
      00}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M051_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M051_ID := :M051_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.M051_PROCENT := :M051_PROCENT;'
      '  v_rec.M051_HAND_SUM := :M051_HAND_SUM;'
      '  v_rec.M051_USE_HAND := :M051_USE_HAND;'
      '  Pk_NResident.p_div_payment_update(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000005000000080000003A4D3035315F4944040000000000000000000000
      080000003A543035355F49440400000000000000000000000D0000003A4D3035
      315F50524F43454E540400000000000000000000000E0000003A4D3035315F55
      53455F48414E440500000000000000000000000E0000003A4D3035315F48414E
      445F53554D040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M051_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M051_ID := :M051_ID;'
      '  Pk_NResident.p_div_payment_delete(v_rec);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A4D3035315F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M051_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M051_ID := :M051_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '   :o_result := Pk_NResident.f_div_payment_check(v_rec);'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000005000000080000003A4D3035315F4944040000000000000000000000
      080000003A543032385F4944040000000000000000000000080000003A543032
      375F4944040000000000000000000000080000003A543035355F494404000000
      0000000000000000090000003A4F5F524553554C540400000000000000000000
      00}
  end
  object oqCopy: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_NResident.p_div_payment_copy(:T028_ID, :T027_ID, :T055_ID);'
      'END;'
      ' '
      '  ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543035
      355F4944040000000000000000000000}
    Left = 368
    Top = 152
  end
end
