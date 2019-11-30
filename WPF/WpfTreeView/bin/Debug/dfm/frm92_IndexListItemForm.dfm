inherited frm92_IndexListItem: Tfrm92_IndexListItem
  Caption = 'frm92_IndexListItem'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 274
  end
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton5: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'BASE_DATE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 1
              Caption = 'Базовый месяц'
            end
            item
              FirstCol = 2
              LastCol = 3
              Caption = 'Прогнозируемый месяц'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'BASE_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата начала'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_MONTH'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORECAST_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата начала'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORECAST_MONTH'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M024_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Значение'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited StatusBar: TStatusBar
    Top = 307
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from V_NR_REINVEST_INDEX_DATA'
      'where M023_ID = :M023_ID')
    Variables.Data = {
      0300000001000000080000003A4D3032335F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000009000000070000004D3032345F4944010000000000070000004D3032
      335F49440100000000000C0000004D3032345F424153455F4944010000000000
      100000004D3032345F464F5245434153545F49440100000000000A0000004D30
      32345F56414C554501000000000009000000424153455F444154450100000000
      000A000000424153455F4D4F4E54480100000000000D000000464F5245434153
      545F444154450100000000000E000000464F5245434153545F4D4F4E54480100
      00000000}
    MasterFields = 'M023_ID'
    object odsListM024_ID: TFloatField
      FieldName = 'M024_ID'
      Required = True
    end
    object odsListM023_ID: TFloatField
      FieldName = 'M023_ID'
      Required = True
    end
    object odsListM024_BASE_ID: TFloatField
      FieldName = 'M024_BASE_ID'
      Required = True
    end
    object odsListM024_FORECAST_ID: TFloatField
      FieldName = 'M024_FORECAST_ID'
      Required = True
    end
    object odsListM024_VALUE: TFloatField
      FieldName = 'M024_VALUE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListBASE_DATE: TDateTimeField
      FieldName = 'BASE_DATE'
      Required = True
    end
    object odsListBASE_MONTH: TStringField
      FieldName = 'BASE_MONTH'
      Required = True
      Size = 255
    end
    object odsListFORECAST_DATE: TDateTimeField
      FieldName = 'FORECAST_DATE'
      Required = True
    end
    object odsListFORECAST_MONTH: TStringField
      FieldName = 'FORECAST_MONTH'
      Required = True
      Size = 255
    end
  end
end
