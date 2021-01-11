inherited A006_SelectedFields: TA006_SelectedFields
  Width = 752
  Height = 380
  inherited paMain: TPanel
    Width = 752
    Height = 380
    inherited xxxDBGrid: TxxxDBGrid
      Width = 752
      Height = 315
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnDragDrop = xxxDBGridDragDrop
      OnDragOver = xxxDBGridDragOver
      OnMouseMove = xxxDBGridMouseMove
      Columns = <
        item
          Expanded = False
          FieldName = 'T162_ID'
          PickList.Strings = ()
          Title.Caption = ' '
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DISPLAY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Поле'
          Width = 432
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T161_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 752
      inherited Panel1: TPanel
        Left = 725
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 752
      inherited Panel1: TPanel
        Left = 725
      end
    end
    inherited paTopToolBar: TPanel
      Width = 752
      inherited tbDB: TToolBar
        Width = 312
        object ToolButton1: TToolButton
          Left = 234
          Top = 0
          Action = actFilter
        end
      end
      inherited tbNav: TToolBar
        Left = 312
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
        Left = 389
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
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    object actFilter: TAction
      Caption = 'Фильтр'
      Hint = 'Фильтровать данные по этому полю'
      ImageIndex = 18
      OnExecute = actFilterExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T162_ID,'
      '  T162_POSITION,'
      'T162_DISPLAY_NAME,'
      '  DISPLAY_NAME,'
      '  T161_ID,'
      '  T161_POSITION,'
      'T161_DISPLAY_NAME,'
      'T161_SQL_NAME,'
      'T160_PREFIX,'
      'T160_ID'
      'FROM V_405_PT_FIELDS'
      'ORDER BY T162_POSITION,'
      '  T161_POSITION ASC NULLS FIRST')
    QBEDefinition.QBEFieldDefs = {
      040000000A00000007000000543136325F49440100000000000D000000543136
      325F504F534954494F4E0100000000000C000000444953504C41595F4E414D45
      01000000000007000000543136315F49440100000000000D000000543136315F
      504F534954494F4E01000000000011000000543136325F444953504C41595F4E
      414D4501000000000011000000543136315F444953504C41595F4E414D450100
      000000000B000000543136305F5052454649580100000000000D000000543136
      315F53514C5F4E414D4501000000000007000000543136305F49440100000000
      00}
    object odsListT162_ID: TFloatField
      FieldName = 'T162_ID'
      Required = True
    end
    object odsListT162_POSITION: TFloatField
      FieldName = 'T162_POSITION'
      Required = True
    end
    object odsListT162_DISPLAY_NAME: TStringField
      FieldName = 'T162_DISPLAY_NAME'
      Required = True
      Size = 255
    end
    object odsListDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Size = 511
    end
    object odsListT161_ID: TFloatField
      FieldName = 'T161_ID'
      Required = True
    end
    object odsListT161_POSITION: TFloatField
      FieldName = 'T161_POSITION'
      Required = True
    end
    object odsListT161_DISPLAY_NAME: TStringField
      FieldName = 'T161_DISPLAY_NAME'
      Required = True
      Size = 255
    end
    object odsListT160_PREFIX: TStringField
      FieldName = 'T160_PREFIX'
      Required = True
      Size = 50
    end
    object odsListT161_SQL_NAME: TStringField
      FieldName = 'T161_SQL_NAME'
      Required = True
      Size = 255
    end
    object odsListT160_ID: TFloatField
      FieldName = 'T160_ID'
      Required = True
    end
  end
end
