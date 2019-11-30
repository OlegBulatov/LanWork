inherited D000_ResidSelect: TD000_ResidSelect
  Width = 668
  Height = 543
  Caption = 'Выбор главного резидента'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 657
    Height = 457
  end
  inherited paRight: TPanel
    Left = 660
    Height = 457
  end
  inherited paMain: TPanel
    Width = 657
    Height = 457
    inherited ToolBar2: TToolBar
      Width = 657
      inherited ToolButton17: TToolButton
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 657
      Height = 392
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      AdvSettings.Indexes = <
        item
          FieldName = 'T012_CODE'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T012_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 100
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 657
      inherited Panel1: TPanel
        Left = 630
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 657
      inherited Panel1: TPanel
        Left = 630
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 490
    Width = 660
  end
  inherited pnlButtons: TPanel
    Top = 457
    Width = 660
    Visible = True
    inherited OKBtn: TButton
      Left = 502
    end
    inherited CancelBtn: TButton
      Left = 582
    end
  end
  inherited ActionList: TActionList
    inherited actSelectItem: TAction
      Enabled = True
      Hint = 'Выбрать текущую запись'
      Visible = True
      OnUpdate = actSelectItemUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T012_ID,'
      '       T012_NAME,'
      '       T012_CODE,'
      '       T033_NAME'
      'FROM     V_405_REZID_MAIN_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543031325F494401000000000009000000543031
      325F4E414D4501000000000009000000543031325F434F444501000000000009
      000000543033335F4E414D45010000000000}
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Required = True
      Size = 255
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Required = True
      Size = 255
    end
    object odsListT033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
      Size = 50
    end
  end
end
