object frm04_ListFrm: Tfrm04_ListFrm
  Left = 0
  Top = 0
  Width = 918
  Height = 353
  TabOrder = 0
  object paMain: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 353
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paMain'
    TabOrder = 0
    object xxxDBGrid: TxxxDBGrid
      Left = 0
      Top = 65
      Width = 918
      Height = 288
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
      Width = 918
      Align = alTop
      TabOrder = 1
      inherited Panel1: TPanel
        Left = 891
      end
    end
    inline fm31_Filter: Tfm31_Filter
      Top = 44
      Width = 918
      Align = alTop
      TabOrder = 2
      inherited Panel1: TPanel
        Left = 891
      end
    end
    object paTopToolBar: TPanel
      Left = 0
      Top = 0
      Width = 918
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object tbDB: TToolBar
        Left = 0
        Top = 0
        Width = 234
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonWidth = 78
        Caption = 'tbDB'
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        Images = dm02_Picters.ilCommonPictures
        List = True
        ParentShowHint = False
        ShowCaptions = True
        ShowHint = True
        TabOrder = 0
        object tbAdd: TToolButton
          Left = 0
          Top = 0
          Action = actAddAttributes
        end
        object tbEdit: TToolButton
          Left = 78
          Top = 0
          Action = actEditAttributes
        end
        object ToolButton8: TToolButton
          Left = 156
          Top = 0
          Action = actDeleteAttributes
        end
      end
      object tbNav: TToolBar
        Left = 234
        Top = 0
        Width = 77
        Height = 23
        Align = alLeft
        AutoSize = True
        Caption = 'tbNav'
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        Images = dm02_Picters.ilCommonPictures
        List = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object ToolButton5: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          Style = tbsSeparator
        end
        object ToolButton6: TToolButton
          Left = 8
          Top = 0
          Action = actRefresh
        end
        object ToolButton7: TToolButton
          Left = 31
          Top = 0
          Action = actFirst
        end
        object ToolButton9: TToolButton
          Left = 54
          Top = 0
          Action = actLast
        end
      end
      object tbExtend: TToolBar
        Left = 311
        Top = 0
        Width = 243
        Height = 23
        Align = alLeft
        AutoSize = True
        ButtonWidth = 73
        Caption = 'ToolBar4'
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        Images = dm02_Picters.ilCommonPictures
        List = True
        ParentShowHint = False
        ShowCaptions = True
        ShowHint = True
        TabOrder = 2
        object ToolButton10: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          Style = tbsSeparator
        end
        object ToolButton14: TToolButton
          Left = 8
          Top = 0
          Action = actShowSimpleFilter
          DropdownMenu = pmFilter
          Style = tbsDropDown
        end
        object ToolButton11: TToolButton
          Left = 94
          Top = 0
          Width = 8
          Caption = 'ToolButton11'
          ImageIndex = 19
          Style = tbsSeparator
        end
        object tbSearch: TToolButton
          Left = 102
          Top = 0
          Caption = 'tbSearch'
          ImageIndex = 11
        end
        object ToolButton15: TToolButton
          Left = 175
          Top = 0
          Width = 8
          Caption = 'ToolButton15'
          ImageIndex = 20
          Style = tbsSeparator
        end
        object tbExcel: TToolButton
          Left = 183
          Top = 0
          Action = actExcel
        end
      end
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
      Caption = 'Excel'
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
      Caption = 'Ф&ильтр'
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
