inherited A006_FilterList: TA006_FilterList
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnDragDrop = xxxDBGridDragDrop
      OnDragOver = xxxDBGridDragOver
      AdvSettings.Enabled = False
      Columns = <
        item
          Expanded = False
          FieldName = 'T161_ID'
          PickList.Strings = ()
          Title.Caption = ' '
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T161_DISPLAY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Поле'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONDITION'
          PickList.Strings = ()
          Title.Caption = 'Условие'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONDITION_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Значение'
          Width = 550
          Visible = True
        end>
    end
    inherited paTopToolBar: TPanel
      inherited tbNav: TToolBar
        Enabled = False
        Visible = False
        inherited ToolButton5: TToolButton
          Enabled = False
        end
        inherited ToolButton6: TToolButton
          Enabled = False
        end
        inherited ToolButton7: TToolButton
          Enabled = False
        end
        inherited ToolButton9: TToolButton
          Enabled = False
        end
      end
      inherited tbExtend: TToolBar
        Enabled = False
        Visible = False
        inherited ToolButton10: TToolButton
          Enabled = False
        end
        inherited ToolButton14: TToolButton
          Enabled = False
        end
        inherited ToolButton11: TToolButton
          Enabled = False
        end
        inherited tbSearch: TToolButton
          Enabled = False
        end
        inherited ToolButton15: TToolButton
          Enabled = False
        end
        inherited tbExcel: TToolButton
          Enabled = False
        end
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  T161_ID,'
      '  T161_DISPLAY_NAME,'
      'T160_PREFIX,'
      '  CONDITION,'
      '  CONDITION_VALUE'
      'FROM V_405_PT_FILTER')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543136315F494401000000000011000000543136
      315F444953504C41595F4E414D4501000000000009000000434F4E444954494F
      4E0100000000000F000000434F4E444954494F4E5F56414C5545010000000000
      0B000000543136305F505245464958010000000000}
    object odsListT161_ID: TFloatField
      FieldName = 'T161_ID'
    end
    object odsListT161_DISPLAY_NAME: TStringField
      FieldName = 'T161_DISPLAY_NAME'
      Size = 255
    end
    object odsListCONDITION: TStringField
      FieldName = 'CONDITION'
      Size = 255
    end
    object odsListCONDITION_VALUE: TStringField
      FieldName = 'CONDITION_VALUE'
      Size = 4000
    end
    object odsListT160_PREFIX: TStringField
      FieldName = 'T160_PREFIX'
      Size = 1
    end
  end
end
