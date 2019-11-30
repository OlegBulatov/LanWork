inherited frm96_ForecastList: Tfrm96_ForecastList
  Left = 349
  Top = 205
  Width = 1165
  Height = 770
  Caption = 'frm96_ForecastList'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 351
    Width = 1157
  end
  inherited spRight: TSplitter
    Left = 1154
    Height = 351
  end
  inherited Panel2: TPanel
    Top = 684
    Width = 1157
    inherited Panel3: TPanel
      Left = 992
    end
  end
  inherited paRight: TPanel
    Left = 1157
    Height = 351
  end
  inherited Panel1: TPanel
    Top = 354
    Width = 1157
    inherited pc01: TPageControl
      Width = 1155
      inherited ts01: TTabSheet
        Caption = 'Описание схемы прогнозирования'
        object m01: TDBMemo
          Left = 0
          Top = 0
          Width = 1147
          Height = 300
          Align = alClient
          DataField = 'M025_DESCR'
          DataSource = dsList
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
  end
  inherited paMain: TPanel
    Width = 1154
    Height = 351
    inherited paToolBars: TPanel
      Width = 1154
      inherited ToolBar2: TToolBar
        Width = 1154
        ButtonWidth = 133
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        inherited tbExcel: TToolButton
          AutoSize = True
        end
        inherited ToolButton7: TToolButton
          Left = 678
          AutoSize = True
          Caption = 'Описание'
        end
        object ToolButton9: TToolButton
          Left = 759
          Top = 0
          Action = actCopy
          AutoSize = True
        end
        object ToolButton8: TToolButton
          Left = 867
          Top = 0
          Width = 8
          Caption = 'ToolButton8'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton6: TToolButton
          Left = 875
          Top = 0
          Action = actMakeForecast
          AutoSize = True
        end
        object ToolButton10: TToolButton
          Left = 1012
          Top = 0
          Action = actPackCalc
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1154
      Height = 286
      AdvSettings.Indexes = <
        item
          FieldName = 'M025_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'M025_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M027_NAME'
          PickList.Strings = ()
          Title.Caption = 'Версия индексов'
          Width = 200
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1154
      inherited Panel1: TPanel
        Left = 1127
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1154
      inherited Panel1: TPanel
        Left = 1127
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 717
    Width = 1157
  end
  inherited ActionList: TActionList
    object actMakeForecast: TAction
      Caption = 'Составить прогноз...'
      Hint = 'Составить прогноз на основе выбранной схемы'
      ImageIndex = 19
      OnExecute = actMakeForecastExecute
      OnUpdate = actMakeForecastUpdate
    end
    object actCopy: TAction
      Caption = 'Создать копию'
      Hint = 'Создать новую схему на основе текущей'
      ImageIndex = 13
      OnExecute = actCopyExecute
      OnUpdate = actCopyUpdate
    end
    object actPackCalc: TAction
      Caption = 'Пакетный расчет'
      ImageIndex = 27
      OnExecute = actPackCalcExecute
      OnUpdate = actPackCalcUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' M025_ID,'
      ' M025_NAME,'
      ' M025_DESCR,'
      ' M027_NAME'
      'FROM V_NR_REINVEST_FORECAST_IND_VER'
      'WHERE M026_CHECK = '#39'Y'#39)
    QBEDefinition.QBEFieldDefs = {
      0400000004000000070000004D3032355F4944010000000000090000004D3032
      355F4E414D45010000000000090000004D3032375F4E414D450100000000000A
      0000004D3032355F4445534352010000000000}
    object odsListM025_ID: TFloatField
      FieldName = 'M025_ID'
      Required = True
    end
    object odsListM025_NAME: TStringField
      FieldName = 'M025_NAME'
      Required = True
      Size = 255
    end
    object odsListM027_NAME: TStringField
      FieldName = 'M027_NAME'
      Required = True
      Size = 255
    end
    object odsListM025_DESCR: TStringField
      FieldName = 'M025_DESCR'
      Size = 4000
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M025_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M025_NAME := :M025_NAME;'
      '  v_rec.M025_DESCR := :M025_DESCR;'
      '  Pk_NResident.p_forecast_add(v_rec);'
      '  :M025_ID := v_rec.M025_ID;'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      03000000030000000A0000003A4D3032355F4E414D4505000000000000000000
      00000B0000003A4D3032355F4445534352050000000000000000000000080000
      003A4D3032355F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_NResident.t_M025_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M025_ID := :M025_ID;'
      '  v_rec.M025_NAME := :M025_NAME;'
      '  v_rec.M025_DESCR := :M025_DESCR;'
      '  Pk_NResident.p_forecast_update(v_rec);'
      'END;'
      '  ')
    Variables.Data = {
      0300000003000000080000003A4D3032355F4944040000000000000000000000
      0A0000003A4D3032355F4E414D450500000000000000000000000B0000003A4D
      3032355F4445534352050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_NResident.p_forecast_delete(:M025_ID);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A4D3032355F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        '  :o_result := Pk_NResident.f_forecast_check(:M025_ID, :M025_NAM' +
        'E);'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000003000000090000003A4F5F524553554C540400000000000000000000
      00080000003A4D3032355F49440400000000000000000000000A0000003A4D30
      32355F4E414D45050000000000000000000000}
  end
  object oqCopy: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        '  Pk_NResident.p_forecast_copy(:M025_ID, :NEW_NAME, :M025_DESCR)' +
        ';'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A4D3032355F4944040000000000000000000000
      090000003A4E45575F4E414D450500000000000000000000000B0000003A4D30
      32355F4445534352050000000000000000000000}
    Left = 248
    Top = 80
  end
end
