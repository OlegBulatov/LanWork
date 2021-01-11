inherited D001_NresidSelect: TD001_NresidSelect
  Width = 639
  Height = 543
  Caption = 'Выбор главного резидента'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 628
    Top = 57
    Height = 400
  end
  inherited paRight: TPanel
    Left = 631
    Top = 57
    Height = 400
  end
  inherited paMain: TPanel
    Top = 57
    Width = 628
    Height = 400
    inherited ToolBar2: TToolBar
      Width = 628
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
      Width = 628
      Height = 335
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      AdvSettings.Indexes = <
        item
          FieldName = 'T013_NAME'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 2
              Caption = 'Страна'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T013_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SN015_SHORT_RUS_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 100
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 628
      inherited Panel1: TPanel
        Left = 601
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 628
      inherited Panel1: TPanel
        Left = 601
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 490
    Width = 631
  end
  inherited pnlButtons: TPanel
    Top = 457
    Width = 631
    Visible = True
    inherited OKBtn: TButton
      Left = 473
    end
    inherited CancelBtn: TButton
      Left = 553
    end
  end
  object paTop: TPanel [5]
    Left = 0
    Top = 0
    Width = 631
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object cbName: TCheckBox
      Left = 8
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Название'
      TabOrder = 0
    end
    object cbCode: TCheckBox
      Left = 8
      Top = 30
      Width = 89
      Height = 17
      Caption = 'Код страны'
      TabOrder = 1
    end
    object edName: TEdit
      Left = 100
      Top = 4
      Width = 309
      Height = 21
      TabOrder = 2
      Text = 'edName'
    end
    object edCode: TEdit
      Left = 100
      Top = 28
      Width = 309
      Height = 21
      TabOrder = 3
      Text = 'edCode'
    end
    object Button1: TButton
      Left = 419
      Top = 4
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 4
    end
  end
  inherited dsList: TDataSource
    Top = 231
  end
  inherited ActionList: TActionList
    Top = 231
    inherited actSelectItem: TAction
      Enabled = True
      Hint = 'Выбрать текущую запись'
      Visible = True
      OnUpdate = actSelectItemUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 263
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T013_ID,'
      '       T013_NAME,'
      '       T013_CODE,'
      '       SN015_SHORT_RUS_NAME,'
      '       T034_NAME'
      'FROM   V_405_NREZID_MAIN_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543031335F494401000000000009000000543031
      335F4E414D4501000000000009000000543031335F434F444501000000000014
      000000534E3031355F53484F52545F5255535F4E414D45010000000000090000
      00543033345F4E414D45010000000000}
    Top = 231
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
      Required = True
    end
    object odsListT013_NAME: TStringField
      FieldName = 'T013_NAME'
      Required = True
      Size = 255
    end
    object odsListT013_CODE: TFloatField
      FieldName = 'T013_CODE'
      Required = True
    end
    object odsListSN015_SHORT_RUS_NAME: TStringField
      FieldName = 'SN015_SHORT_RUS_NAME'
      Size = 250
    end
    object odsListT034_NAME: TStringField
      FieldName = 'T034_NAME'
      Required = True
      Size = 50
    end
  end
  inherited pkList: TOraclePackage
    Top = 263
  end
  inherited oqAdd: TOracleQuery
    Top = 300
  end
  inherited oqUpdate: TOracleQuery
    Top = 300
  end
  inherited oqDelete: TOracleQuery
    Top = 300
  end
  inherited oqDupl: TOracleQuery
    Top = 300
  end
  inherited pmFilter: TPopupMenu
    Top = 212
  end
end
