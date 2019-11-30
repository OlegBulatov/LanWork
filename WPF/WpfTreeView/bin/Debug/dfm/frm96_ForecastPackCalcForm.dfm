inherited frm96_ForecastPackCalc: Tfrm96_ForecastPackCalc
  Left = 231
  Top = 187
  Caption = 'Пакетный расчет'
  ClientHeight = 451
  ClientWidth = 357
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 418
    Width = 357
    inherited Panel3: TPanel
      Left = 192
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 357
    Height = 31
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Версия версии:'
    end
    object lcbVersion: TDBLookupComboBox
      Left = 96
      Top = 4
      Width = 258
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      KeyField = 'M027_ID'
      ListField = 'M027_NAME'
      ListSource = dsVersion
      TabOrder = 0
    end
  end
  object lvSchemas: TListView [2]
    Left = 0
    Top = 31
    Width = 357
    Height = 387
    Align = alClient
    Columns = <
      item
        Caption = 'Схема прогнозирования'
        Width = 200
      end
      item
        Caption = 'Результат работы'
        Width = 150
      end>
    TabOrder = 2
    ViewStyle = vsReport
  end
  inherited ActionList: TActionList
    Left = 24
    Top = 24
  end
  object odsVersion: TOracleDataSet
    SQL.Strings = (
      'SELECT M027_ID,'
      '  M027_NAME'
      'FROM V_NR_REINVEST_INDEX_VERSIONS'
      'ORDER BY M027_NAME')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D3032375F4944010000000000090000004D3032
      375F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 128
    Top = 16
    object odsVersionM027_ID: TFloatField
      FieldName = 'M027_ID'
      Required = True
    end
    object odsVersionM027_NAME: TStringField
      FieldName = 'M027_NAME'
      Required = True
      Size = 255
    end
  end
  object dsVersion: TDataSource
    DataSet = odsVersion
    Left = 160
    Top = 16
  end
  object odsSchemas: TOracleDataSet
    SQL.Strings = (
      'SELECT M025_ID, M025_NAME'
      'FROM V_NR_REINVEST_FORECASTS'
      'ORDER BY M025_NAME')
    ReadBuffer = 50
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D3032355F4944010000000000090000004D3032
      355F4E414D45010000000000}
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 104
    Top = 115
    object odsSchemasM025_ID: TFloatField
      FieldName = 'M025_ID'
      Required = True
    end
    object odsSchemasM025_NAME: TStringField
      FieldName = 'M025_NAME'
      Required = True
      Size = 255
    end
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NR_REINVEST_PROFITS.t_M026_rec;'
      'BEGIN'
      '  v_rec.M025_ID := :M025_ID;'
      '  v_rec.M026_TYPE := 6;'
      '  v_rec.M026_VALUE := :M026_VALUE;'
      ''
      '  Pk_Nr_Reinvest_Profits.p_set_forecast_data(v_rec);'
      'END;'
      ' '
      ' '
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A4D3032355F4944040000000000000000000000
      0B0000003A4D3032365F56414C5545040000000000000000000000}
    Left = 208
    Top = 144
  end
  object oqMakeForecast: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_NR_Reinvest_Profits.p_make_forecast(:M025_ID);'
      'end; '
      ' '
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A4D3032355F4944040000000000000000000000}
    Left = 240
    Top = 144
  end
end
