inherited frm04_TreeList: Tfrm04_TreeList
  Left = 206
  Top = 154
  Caption = 'Детализация'
  ClientHeight = 470
  ClientWidth = 703
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 418
    Width = 703
    TabOrder = 1
    Visible = False
    inherited Panel3: TPanel
      Left = 538
    end
  end
  object ToolBar2: TToolBar [1]
    Left = 0
    Top = 0
    Width = 703
    Height = 23
    ButtonWidth = 27
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
    ShowHint = True
    TabOrder = 0
    Wrapable = False
    object ToolButton17: TToolButton
      Left = 0
      Top = 0
      Action = actAddAttributes
      AutoSize = True
    end
    object ToolButton5: TToolButton
      Left = 27
      Top = 0
      Action = actAddChildAttributes
    end
    object ToolButton18: TToolButton
      Left = 54
      Top = 0
      Action = actEditAttributes
      AutoSize = True
    end
    object ToolButton19: TToolButton
      Left = 81
      Top = 0
      Action = actDeleteAttributes
      AutoSize = True
    end
    object ToolButton4: TToolButton
      Left = 108
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolBar1: TToolBar
      Left = 116
      Top = 0
      Width = 100
      Height = 22
      Align = alRight
      Caption = 'ToolBar1'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = dm02_Picters.ilCommonPictures
      TabOrder = 0
      object ToolButton3: TToolButton
        Left = 0
        Top = 0
        Action = actRefresh
      end
      object ToolButton1: TToolButton
        Left = 23
        Top = 0
        Action = actFirst
      end
      object ToolButton2: TToolButton
        Left = 46
        Top = 0
        Action = actLast
      end
      object sp04: TToolButton
        Left = 69
        Top = 0
        Width = 8
        Caption = 'sp04'
        Enabled = False
        ImageIndex = 9
        Style = tbsSeparator
        Visible = False
      end
      object tlbFilterBySelect: TToolButton
        Left = 77
        Top = 0
        Action = actFilterBySelect
      end
    end
    object sp02: TToolButton
      Left = 216
      Top = 0
      Width = 8
      Caption = 'sp02'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object tlbSearch: TToolBar
      Left = 224
      Top = 0
      Width = 70
      Height = 22
      ButtonWidth = 70
      Caption = 'tlbSearch'
      EdgeBorders = []
      Flat = True
      Images = dm02_Picters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 1
      object tbSearch: TToolButton
        Left = 0
        Top = 0
        Caption = 'tbSearch'
        Enabled = False
        ImageIndex = 0
      end
    end
    object ToolButton6: TToolButton
      Left = 294
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      Enabled = False
      ImageIndex = 4
      Style = tbsSeparator
      Visible = False
    end
    object tbExcel: TToolButton
      Left = 302
      Top = 0
      Action = actExcel
    end
  end
  object StatusBar: TStatusBar [2]
    Left = 0
    Top = 451
    Width = 703
    Height = 19
    Panels = <>
    SimplePanel = False
    Visible = False
  end
  inline fmSeach: TfmSeachFrame [3]
    Top = 23
    Width = 703
    Align = alTop
    TabOrder = 2
    inherited Panel1: TPanel
      Left = 676
    end
  end
  object tvList: TTreeView
    Left = 0
    Top = 44
    Width = 703
    Height = 374
    Align = alClient
    HideSelection = False
    Indent = 19
    PopupMenu = PopupMenu
    TabOrder = 4
    Items.Data = {
      030000001A0000000000000000000000FFFFFFFFFFFFFFFF0000000004000000
      01311B0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000231
      311B0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000023132
      1B0000000000000000000000FFFFFFFFFFFFFFFF000000000000000002313319
      0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000001A000000
      0000000000000000FFFFFFFFFFFFFFFF000000000000000001321A0000000000
      000000000000FFFFFFFFFFFFFFFF00000000000000000133}
  end
  inherited ActionList: TActionList
    Left = 168
    Top = 115
    inherited actSave: TAction
      Caption = 'Выбрать'
      Hint = 'Выбрать текущею запись'
      OnExecute = actSaveExecute
    end
    object actFirst: TAction [2]
      Caption = 'Назад'
      Hint = 'Перейти к первой записи'
      ImageIndex = 9
      OnExecute = actFirstExecute
      OnUpdate = actFirstUpdate
    end
    object actLast: TAction [3]
      Caption = 'Вперед'
      Hint = 'Перейти к последней записи'
      ImageIndex = 7
      OnExecute = actLastExecute
      OnUpdate = actLastUpdate
    end
    object actAddAttributes: TAction [4]
      Caption = 'Добавить'
      Hint = 'Добавить запись'
      ImageIndex = 0
      ShortCut = 16457
      OnExecute = actAddAttributesExecute
      OnUpdate = actAddAttributesUpdate
    end
    object actDeleteAttributes: TAction [5]
      Caption = 'Удалить'
      Hint = 'Удалить запись'
      ImageIndex = 2
      ShortCut = 16452
      OnExecute = actDeleteAttributesExecute
      OnUpdate = actDeleteAttributesUpdate
    end
    object actEditAttributes: TAction [6]
      Caption = 'Изменить'
      Hint = 'Изменить запись'
      ImageIndex = 1
      ShortCut = 16453
      OnExecute = actEditAttributesExecute
      OnUpdate = actEditAttributesUpdate
    end
    object actAddChildAttributes: TAction [7]
      Caption = 'Добавить подуровень'
      Hint = 'Добавить запись на следующий подуровень'
      ImageIndex = 20
      OnExecute = actAddChildAttributesExecute
      OnUpdate = actAddChildAttributesUpdate
    end
    object actExcel: TAction [8]
      Caption = 'Экспорт в Excel'
      Enabled = False
      Hint = 'Экспорт данных в Excel'
      ImageIndex = 5
      Visible = False
      OnExecute = actExcelExecute
    end
    object actFilterBySelect: TAction [9]
      Caption = 'actFilterBySelect'
      Enabled = False
      Hint = 'Установить фильтр по выделенному значению'
      ImageIndex = 18
      Visible = False
      OnExecute = actFilterBySelectExecute
      OnUpdate = actFilterBySelectUpdate
    end
    inherited actRefresh: TAction
      Hint = 'Обновить'
      OnExecute = actRefreshExecute
      OnUpdate = actRefreshUpdate
    end
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 136
    Top = 115
  end
  object PopupMenu: TPopupMenu
    Images = dm02_Picters.ilCommonPictures
    Left = 104
    Top = 147
    object N1: TMenuItem
      Caption = 'Добавить'
      Hint = 'Добавить запись'
      ImageIndex = 0
      ShortCut = 16457
      OnClick = actAddAttributesExecute
    end
    object N3: TMenuItem
      Caption = 'Изменить'
      Hint = 'Изменить запись'
      ImageIndex = 1
      ShortCut = 16453
      OnClick = actEditAttributesExecute
    end
    object N2: TMenuItem
      Caption = 'Удалить'
      Hint = 'Удалить запись'
      ImageIndex = 2
      ShortCut = 16452
      OnClick = actDeleteAttributesExecute
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mi04: TMenuItem
      Caption = 'Поиск'
    end
  end
  object odsList: TOracleDataSet
    ReadBuffer = 50
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    OnApplyRecord = odsListApplyRecord
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 104
    Top = 115
  end
  object pkList: TOraclePackage
    Session = dmMain.OracleSession
    Left = 136
    Top = 147
  end
  object oqAdd: TOracleQuery
    Session = dmMain.OracleSession
    Left = 136
    Top = 184
  end
  object oqUpdate: TOracleQuery
    Session = dmMain.OracleSession
    Left = 176
    Top = 184
  end
  object oqDelete: TOracleQuery
    Session = dmMain.OracleSession
    Left = 216
    Top = 184
  end
  object oqDupl: TOracleQuery
    Session = dmMain.OracleSession
    Left = 256
    Top = 184
  end
end
