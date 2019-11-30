inherited frm93_TimeList: Tfrm93_TimeList
  Caption = 'frm93_TimeList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited paToolBars: TPanel
      inherited ToolBar2: TToolBar
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'M032_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'YEAR_NAME'
          PickList.Strings = ()
          Title.Caption = 'Год'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'START_NAME'
          PickList.Strings = ()
          Title.Caption = 'Начальный месяц'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'END_NAME'
          PickList.Strings = ()
          Title.Caption = 'Конечный месяц'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M032_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во месяцев'
          Visible = True
        end>
    end
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
      Enabled = False
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * from v_nr_periods')
    QBEDefinition.QBEFieldDefs = {
      040000000B000000070000004D3033325F4944010000000000090000004D3033
      325F4E414D450100000000000C0000004D3033325F594541525F494401000000
      000009000000594541525F4E414D45010000000000090000004D3033325F5459
      504501000000000009000000545950455F444553430100000000000D0000004D
      3033325F53544152545F49440100000000000A00000053544152545F4E414D45
      0100000000000B0000004D3033325F454E445F49440100000000000800000045
      4E445F4E414D450100000000000A0000004D3033325F434F554E540100000000
      00}
    object odsListM032_ID: TFloatField
      FieldName = 'M032_ID'
      Required = True
    end
    object odsListM032_NAME: TStringField
      FieldName = 'M032_NAME'
      Required = True
      Size = 255
    end
    object odsListM032_YEAR_ID: TFloatField
      FieldName = 'M032_YEAR_ID'
      Required = True
    end
    object odsListYEAR_NAME: TStringField
      FieldName = 'YEAR_NAME'
      Required = True
      Size = 255
    end
    object odsListM032_TYPE: TStringField
      FieldName = 'M032_TYPE'
      Required = True
      Size = 1
    end
    object odsListTYPE_DESC: TStringField
      FieldName = 'TYPE_DESC'
      Size = 16
    end
    object odsListM032_START_ID: TFloatField
      FieldName = 'M032_START_ID'
      Required = True
    end
    object odsListSTART_NAME: TStringField
      FieldName = 'START_NAME'
      Required = True
      Size = 255
    end
    object odsListM032_END_ID: TFloatField
      FieldName = 'M032_END_ID'
      Required = True
    end
    object odsListEND_NAME: TStringField
      FieldName = 'END_NAME'
      Required = True
      Size = 255
    end
    object odsListM032_COUNT: TFloatField
      FieldName = 'M032_COUNT'
      Required = True
    end
  end
end
