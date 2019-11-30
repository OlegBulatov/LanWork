inherited frm04_List: Tfrm04_List
  Left = 156
  Top = 240
  Width = 714
  Height = 353
  ActiveControl = xxxDBGrid
  Caption = 'Детализация'
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spRight: TSplitter
    Left = 703
    Top = 0
    Width = 3
    Height = 270
    Cursor = crHSplit
    Align = alRight
    Visible = False
  end
  object paRight: TPanel
    Left = 706
    Top = 0
    Width = 0
    Height = 270
    Align = alRight
    BevelOuter = bvNone
    Caption = 'paRight'
    TabOrder = 1
  end
  object paMain: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 270
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paMain'
    TabOrder = 0
    object ToolBar2: TToolBar
      Left = 0
      Top = 0
      Width = 703
      Height = 23
      ButtonWidth = 107
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
      object ToolButton17: TToolButton
        Left = 0
        Top = 0
        Action = actAddAttributes
        AutoSize = True
      end
      object ToolButton18: TToolButton
        Left = 81
        Top = 0
        Action = actEditAttributes
        AutoSize = True
      end
      object ToolButton19: TToolButton
        Left = 163
        Top = 0
        Action = actDeleteAttributes
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 237
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolBar1: TToolBar
        Left = 245
        Top = 0
        Width = 69
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
      end
      object sp02: TToolButton
        Left = 314
        Top = 0
        Width = 8
        Caption = 'sp02'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbSimFilter: TToolButton
        Left = 322
        Top = 0
        Action = actShowSimpleFilter
        AutoSize = True
        Caption = 'Фильтр'
        DropdownMenu = pmFilter
        Style = tbsDropDown
      end
      object tbSep01: TToolButton
        Left = 408
        Top = 0
        Width = 8
        Caption = 'tbSep01'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object tlbSearch: TToolBar
        Left = 416
        Top = 0
        Width = 60
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
          AutoSize = True
          Caption = 'tbSearch'
          Enabled = False
          ImageIndex = 0
          Wrap = True
        end
      end
      object ToolButton13: TToolButton
        Left = 476
        Top = 0
        Width = 8
        Caption = 'ToolButton13'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbExcel: TToolButton
        Left = 484
        Top = 0
        Action = actExcel
      end
    end
    object xxxDBGrid: TxxxDBGrid
      Left = 0
      Top = 65
      Width = 703
      Height = 205
      Align = alClient
      DataSource = dsList
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      PopupMenu = PopupMenu
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = xxxDBGridDrawColumnCell
      OnDblClick = xxxDBGridDblClick
      OnKeyDown = xxxDBGridKeyDown
      OnMouseUp = xxxDBGridMouseUp
      AdvSettings.Guid = '{A3F1DFF7-0ED4-4300-A546-740807109C0C}'
      AdvSettings.AutoFilter = False
      AdvSettings.Enabled = True
      AdvSettings.DesignMode = False
      AdvSettings.Indexes = <>
      AdvSettings.HeadersLines = <>
      AdvSettings.ColumnsAutoSize = False
      AdvSettings.LookUpField.Strings = (
        'Введите имена полей в формате KeyFieldName=ListFieldName')
      DragRows = False
      ShowVscroll = True
      FlatStyle = False
    end
    inline fmSeach: TfmSeachFrame
      Top = 23
      Width = 703
      Align = alTop
      TabOrder = 2
      inherited Panel1: TPanel
        Left = 676
      end
    end
    inline fm31_Filter: Tfm31_Filter
      Top = 44
      Width = 703
      Align = alTop
      TabOrder = 3
      inherited Panel1: TPanel
        Left = 676
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 303
    Width = 706
    Height = 19
    Panels = <>
    SimplePanel = False
    Visible = False
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 270
    Width = 706
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object OKBtn: TButton
      Left = 548
      Top = 5
      Width = 75
      Height = 23
      Action = actSelectItem
      Anchors = [akTop, akRight]
      ModalResult = 1
      TabOrder = 0
    end
    object CancelBtn: TButton
      Left = 628
      Top = 5
      Width = 75
      Height = 23
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Отмена'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 136
    Top = 115
  end
  object ActionList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 168
    Top = 115
    object actSelectItem: TAction
      Caption = 'Выбрать'
      Enabled = False
      Hint = 'Выбрать текущею запись'
      Visible = False
      OnExecute = actSelectItemExecute
    end
    object actFirst: TAction
      Caption = 'Назад'
      Hint = 'Перейти к первой записи'
      ImageIndex = 9
      OnExecute = actFirstExecute
      OnUpdate = actFirstUpdate
    end
    object actLast: TAction
      Caption = 'Вперед'
      Hint = 'Перейти к последней записи'
      ImageIndex = 7
      OnExecute = actLastExecute
      OnUpdate = actLastUpdate
    end
    object actRefresh: TAction
      Caption = 'Обновить'
      Hint = 'Обновить'
      ImageIndex = 10
      OnExecute = actRefreshExecute
      OnUpdate = actRefreshUpdate
    end
    object actAddAttributes: TAction
      Caption = 'Добавить'
      Hint = 'Добавить запись'
      ImageIndex = 0
      ShortCut = 16457
      OnExecute = actAddAttributesExecute
      OnUpdate = actAddAttributesUpdate
    end
    object actDeleteAttributes: TAction
      Caption = 'Удалить'
      Hint = 'Удалить запись'
      ImageIndex = 2
      ShortCut = 16452
      OnExecute = actDeleteAttributesExecute
      OnUpdate = actDeleteAttributesUpdate
    end
    object actEditAttributes: TAction
      Caption = 'Изменить'
      Hint = 'Изменить запись'
      ImageIndex = 1
      ShortCut = 16453
      OnExecute = actEditAttributesExecute
      OnUpdate = actEditAttributesUpdate
    end
    object actExcel: TAction
      Caption = 'Экспорт в Excel'
      Hint = 'Экспорт данных в Excel'
      ImageIndex = 5
      OnExecute = actExcelExecute
    end
    object actFilterBySelect: TAction
      Caption = 'Фильтровать по выделенному значению'
      Hint = 'Установить фильтр по выделенному значению'
      ImageIndex = 18
      OnExecute = actFilterBySelectExecute
      OnUpdate = actFilterBySelectUpdate
    end
    object actSelectAllRows: TAction
      Caption = 'Выделить все записи'
      Hint = 'Выделить все записи'
      OnExecute = actSelectAllRowsExecute
    end
    object actShowSimpleFilter: TAction
      Caption = 'Показать/скрыть простой ф&ильтр'
      Hint = 'Показать окно простого фильтра...'
      ImageIndex = 18
      ShortCut = 16454
      OnExecute = actShowSimpleFilterExecute
    end
    object actRemoveAllSettings: TAction
      Caption = 'Сбросить все фильтры'
      Hint = 'Сбросить все фильтры'
      OnExecute = actRemoveAllSettingsExecute
    end
  end
  object PopupMenu: TPopupMenu
    Images = dm02_Picters.ilCommonPictures
    Left = 104
    Top = 147
    object N1: TMenuItem
      Action = actAddAttributes
    end
    object N3: TMenuItem
      Action = actEditAttributes
    end
    object N2: TMenuItem
      Action = actDeleteAttributes
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mi04: TMenuItem
      Caption = 'Поиск'
      ShortCut = 16454
    end
    object N7: TMenuItem
      Caption = 'Фильтр'
      ImageIndex = 18
      object N8: TMenuItem
        Action = actShowSimpleFilter
      end
      object N9: TMenuItem
        Action = actFilterBySelect
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object N12: TMenuItem
        Action = actRemoveAllSettings
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Action = actSelectAllRows
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
  object pmFilter: TPopupMenu
    Left = 336
    Top = 96
    object N10: TMenuItem
      Action = actShowSimpleFilter
      Default = True
    end
    object N11: TMenuItem
      Action = actFilterBySelect
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Action = actRemoveAllSettings
    end
  end
end
