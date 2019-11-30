inherited frm91_DraftProfitList: Tfrm91_DraftProfitList
  Left = 240
  Top = 156
  Caption = 'frm91_DraftProfitList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited pc01: TPageControl
      inherited ts01: TTabSheet
        Caption = 'Финансовые показатели'
      end
    end
  end
  inherited paMain: TPanel
    inherited paToolBars: TPanel
      Top = 21
      inherited ToolBar2: TToolBar
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton7: TToolButton
          AutoSize = True
          Caption = 'Показатели'
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 86
      Height = 100
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M032_NAME'
          PickList.Strings = ()
          Title.Caption = 'Период'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M021_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CURR_DESC'
          PickList.Strings = ()
          Title.Caption = 'Валюта'
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 44
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 65
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 773
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label2: TLabel
        Left = 5
        Top = 3
        Width = 38
        Height = 13
        Caption = 'Период'
      end
      object lcbPeriod: TDBLookupComboBox
        Left = 51
        Top = 0
        Width = 119
        Height = 21
        KeyField = 'T055_ID'
        ListField = 'T055_LONG_NAME'
        ListSource = dsPeriod
        TabOrder = 0
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from V_NR_REINVEST_REPORTS'
      'where M032_YEAR_ID = :T055_ID'
      'and M029_ID = :M029_ID')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A4D3032395F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E000000070000004D3032315F49440100000000000A0000004D3032
      315F4445534352010000000000090000004D3032315F43555252010000000000
      0E000000543032385F53484F545F4E414D450100000000000800000054303238
      5F494E4E010000000000090000004D3033325F4E414D450100000000000D0000
      004D3033325F53544152545F49440100000000000B0000004D3033325F454E44
      5F49440100000000000C0000004D3033325F594541525F494401000000000009
      0000004D3033325F545950450100000000000A0000004D3033325F434F554E54
      010000000000070000004D3033325F494401000000000009000000435552525F
      44455343010000000000070000004D3035325F4944010000000000}
    object odsListM021_ID: TFloatField
      FieldName = 'M021_ID'
      Required = True
    end
    object odsListM021_DESCR: TStringField
      FieldName = 'M021_DESCR'
      Size = 255
    end
    object odsListM021_CURR: TStringField
      FieldName = 'M021_CURR'
      Size = 3
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListM032_NAME: TStringField
      FieldName = 'M032_NAME'
      Required = True
      Size = 255
    end
    object odsListM032_START_ID: TFloatField
      FieldName = 'M032_START_ID'
      Required = True
    end
    object odsListM032_END_ID: TFloatField
      FieldName = 'M032_END_ID'
      Required = True
    end
    object odsListM032_YEAR_ID: TFloatField
      FieldName = 'M032_YEAR_ID'
      Required = True
    end
    object odsListM032_TYPE: TStringField
      FieldName = 'M032_TYPE'
      Required = True
      Size = 1
    end
    object odsListM032_COUNT: TFloatField
      FieldName = 'M032_COUNT'
      Required = True
    end
    object odsListM032_ID: TFloatField
      FieldName = 'M032_ID'
    end
    object odsListCURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 3
    end
    object odsListM029_ID: TFloatField
      FieldName = 'M029_ID'
      Required = True
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_NResident.t_M021_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M029_ID := :M029_ID;'
      '  v_rec.M032_ID := :M032_ID;'
      '  v_rec.M021_DESCR := :M021_DESCR;'
      '  v_rec.M021_CURR := :M021_CURR;'
      '  Pk_NResident.p_profit_report_add(v_rec);'
      '  :M021_ID := v_rec.M021_ID;'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000005000000080000003A4D3033325F4944040000000000000000000000
      0B0000003A4D3032315F44455343520500000000000000000000000A0000003A
      4D3032315F43555252050000000000000000000000080000003A4D3032315F49
      44040000000000000000000000080000003A4D3032395F494404000000000000
      0000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_NResident.t_M021_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M021_ID := :M021_ID;'
      '  v_rec.M029_ID := :M029_ID;'
      '  v_rec.M032_ID := :M032_ID;'
      '  v_rec.M021_DESCR := :M021_DESCR;'
      '  v_rec.M021_CURR := :M021_CURR;'
      '  Pk_NResident.p_profit_report_update(v_rec);'
      '  :M021_ID := v_rec.M021_ID;'
      'END;'
      '  ')
    Variables.Data = {
      0300000005000000080000003A4D3032315F4944040000000000000000000000
      080000003A4D3033325F49440400000000000000000000000B0000003A4D3032
      315F44455343520500000000000000000000000A0000003A4D3032315F435552
      52050000000000000000000000080000003A4D3032395F494404000000000000
      0000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M021_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M021_ID := :M021_ID;'
      '  Pk_NResident.p_profit_report_delete(v_rec);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A4D3032315F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M021_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M021_ID := :M021_ID;'
      '  v_rec.M029_ID := :M029_ID;'
      '  v_rec.M032_ID := :M032_ID;'
      '  :O_result := Pk_NResident.f_profit_report_check(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000004000000080000003A4D3032315F4944040000000000000000000000
      080000003A4D3033325F4944040000000000000000000000090000003A4F5F52
      4553554C540400000008000000000000000000000000000000080000003A4D30
      32395F4944040000000000000000000000}
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      #9'V1.T055_LONG_NAME,'
      #9'V1.T055_ID'
      'FROM V_NR_TIME V1'
      'WHERE V1.T055_TYPE = '#39'Y'#39
      'ORDER BY V1.T055_ID '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000E000000543035355F4C4F4E475F4E414D45010000000000
      07000000543035355F49440100000000000C0000004D3032375F44454641554C
      54010000000000}
    Session = dmMain.OracleSession
    Left = 176
    Top = 7
    object odsPeriodT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsPeriodT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    OnDataChange = dsPeriodDataChange
    Left = 208
    Top = 8
  end
end
