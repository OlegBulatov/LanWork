inherited frm94_PokazList: Tfrm94_PokazList
  Caption = 'frm94_PokazList'
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
          FieldName = 'M028_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M028_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 600
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
      'select * from v_nr_reinvest_data_type')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000070000004D3032385F4944010000000000090000004D3032
      385F4E414D450100000000000A0000004D3032385F4445534352010000000000}
    object odsListM028_ID: TFloatField
      FieldName = 'M028_ID'
      Required = True
    end
    object odsListM028_NAME: TStringField
      FieldName = 'M028_NAME'
      Required = True
      Size = 255
    end
    object odsListM028_DESCR: TStringField
      FieldName = 'M028_DESCR'
      Size = 4000
    end
  end
end
