object A006_FieldsList: TA006_FieldsList
  Left = 0
  Top = 0
  Width = 696
  Height = 507
  TabOrder = 0
  object tvMenu: TTreeView
    Left = 0
    Top = 23
    Width = 696
    Height = 484
    Align = alClient
    Constraints.MinWidth = 10
    DragMode = dmAutomatic
    Images = dm02_Picters.ilCommonPictures
    Indent = 19
    ParentShowHint = False
    PopupMenu = pmTree
    ReadOnly = True
    RightClickSelect = True
    ShowHint = False
    TabOrder = 0
    OnDblClick = tvMenuDblClick
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 696
    Height = 23
    ButtonWidth = 43
    Caption = 'ToolBar2'
    EdgeBorders = []
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = dm02_Picters.ilCommonPictures
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    Wrapable = False
    object ToolBar3: TToolBar
      Left = 0
      Top = 0
      Width = 77
      Height = 22
      Align = alRight
      Caption = 'ToolBar1'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = dm02_Picters.ilCommonPictures
      TabOrder = 1
      object ToolButton5: TToolButton
        Left = 0
        Top = 0
        Action = actRefresh
      end
      object ToolButton6: TToolButton
        Left = 23
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 48
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 31
        Top = 0
        Action = actFullExpand
      end
      object ToolButton7: TToolButton
        Left = 54
        Top = 0
        Action = actFullCollapse
      end
    end
    object ToolBar1: TToolBar
      Left = 77
      Top = 0
      Width = 154
      Height = 22
      Align = alRight
      ButtonWidth = 71
      Caption = 'ToolBar1'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = dm02_Picters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 46
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 8
        Top = 0
        Action = actSelectField
      end
      object ToolButton3: TToolButton
        Left = 79
        Top = 0
        Action = actFilter
      end
    end
  end
  object odsMenu: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T162_ID,'
      '  T161_ID,'
      '  DISPLAY_NAME,'
      '  T161_AGGREGATE'
      'FROM V_405_PT_MENU'
      'ORDER BY T162_POSITION,'
      '  T161_POSITION ASC NULLS FIRST')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543136325F49440100000000000C000000444953
      504C41595F4E414D4501000000000007000000543136315F4944010000000000
      0E000000543136315F414747524547415445010000000000}
    CountAllRecords = True
    Session = dmMain.OracleSession
    Left = 56
    Top = 96
    object odsMenuT162_ID: TFloatField
      FieldName = 'T162_ID'
    end
    object odsMenuDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Size = 255
    end
    object odsMenuT161_ID: TFloatField
      FieldName = 'T161_ID'
    end
    object odsMenuT161_AGGREGATE: TStringField
      FieldName = 'T161_AGGREGATE'
      Size = 1
    end
  end
  object pmTree: TPopupMenu
    Images = dm02_Picters.ilCommonPictures
    Left = 56
    Top = 144
    object N1: TMenuItem
      Action = actFullExpand
    end
    object N2: TMenuItem
      Action = actFullCollapse
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object actSelectField1: TMenuItem
      Action = actSelectField
    end
    object N4: TMenuItem
      Action = actFilter
    end
  end
  object ActionList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 56
    Top = 195
    object actFullExpand: TAction
      Caption = 'Раскрыть'
      Hint = 'Раскрыть все элементы дерева'
      ImageIndex = 48
      OnExecute = actFullExpandExecute
    end
    object actFullCollapse: TAction
      Caption = 'Свернуть'
      Hint = 'Свернуть все элементы дерева'
      ImageIndex = 47
      OnExecute = actFullCollapseExecute
    end
    object actSelectField: TAction
      Caption = 'Выбрать'
      Hint = 'Отображать поле в сводной таблице'
      ImageIndex = 24
      OnExecute = actSelectFieldExecute
    end
    object actFilter: TAction
      Caption = 'Фильтр'
      Hint = 'Фильтровать данные по этому полю'
      ImageIndex = 18
      OnExecute = actFilterExecute
    end
    object actRefresh: TAction
      Caption = 'Обновить'
      Hint = 'Обновить список полей'
      ImageIndex = 10
      OnExecute = actRefreshExecute
    end
  end
end
