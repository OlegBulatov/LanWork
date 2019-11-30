inherited frm82_RemainsPeriodList: Tfrm82_RemainsPeriodList
  Caption = 'Список периодов с рассчитанными остатками'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton19: TToolButton
        Left = 177
      end
      inherited ToolButton4: TToolButton
        Left = 251
      end
      inherited ToolBar1: TToolBar
        Left = 259
      end
      inherited sp02: TToolButton
        Left = 328
      end
      inherited tbSimFilter: TToolButton
        Left = 336
      end
      inherited tbSep01: TToolButton
        Left = 420
      end
      inherited tlbSearch: TToolBar
        Left = 428
      end
      inherited ToolButton13: TToolButton
        Left = 488
      end
      inherited tbExcel: TToolButton
        Left = 496
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_END_DATE'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата окончания периода'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_NAME'
          PickList.Strings = ()
          Title.Caption = 'Период'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T094_CALC_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата расчета'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T094_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Статус'
          Visible = True
        end>
    end
  end
  inherited dsList: TDataSource
    OnDataChange = dsListDataChange
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Caption = 'Пересчитать'
      Hint = 'Пересчитать период'
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T094_ID,'
      ' T055_ID,'
      ' T027_ID,'
      ' T055_END_DATE,'
      ' T055_NAME, '
      ' T094_CALC_DATE,'
      ' T094_STATE,'
      ' T094_STATE_DESC,'
      ' T055_OPER_711_DATE'
      'FROM   V_405_REMAINS_PERIOD'
      'where T027_ID = :T027_ID')
    Variables.Data = {
      0300000001000000080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000900000007000000543039345F494401000000000007000000543035
      355F494401000000000009000000543035355F4E414D450100000000000E0000
      00543039345F43414C435F444154450100000000000A000000543039345F5354
      4154450100000000000F000000543039345F53544154455F4445534301000000
      000007000000543032375F49440100000000000D000000543035355F454E445F
      4441544501000000000012000000543035355F4F5045525F3731315F44415445
      010000000000}
    object odsListT094_ID: TFloatField
      FieldName = 'T094_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
    end
    object odsListT055_NAME: TStringField
      FieldName = 'T055_NAME'
      Required = True
      Size = 255
    end
    object odsListT094_CALC_DATE: TDateTimeField
      FieldName = 'T094_CALC_DATE'
    end
    object odsListT094_STATE: TStringField
      FieldName = 'T094_STATE'
      Required = True
      Size = 1
    end
    object odsListT094_STATE_DESC: TStringField
      FieldName = 'T094_STATE_DESC'
      Size = 12
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
  end
  object oqGetMonths: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      #9'v_id1'#9'INTEGER;'
      #9'v_id2'#9'INTEGER;'
      'BEGIN'
      #9'Pk_405_Calc_Remains.p_get_months(:T055_ID, v_id1, v_id2);'
      '  :T055_ID1 := v_id1;'
      '  :T055_ID2 := v_id2;'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543035355F4944040000000000000000000000
      090000003A543035355F494431040000000000000000000000090000003A5430
      35355F494432040000000000000000000000}
    Left = 296
    Top = 184
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'SELECT v1.T055_ID,'
      '       v1.T055_NAME'
      'FROM   V_405_REMAINS_PERIOD v1,'
      '       V_405_REMAINS_PERIOD v2'
      'where  v1.T027_ID = :T027_ID'
      'and    v2.T027_ID = :T027_ID'
      'and    v1.T055_START_DATE >= v2.T055_START_DATE'
      'and    v2.T055_ID = :T055_ID')
    Variables.Data = {
      0300000002000000080000003A543032375F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F494401000000000009000000543035
      355F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 528
    Top = 208
    object odsPeriodT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsPeriodT055_NAME: TStringField
      FieldName = 'T055_NAME'
      Required = True
      Size = 255
    end
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 560
    Top = 208
  end
end
