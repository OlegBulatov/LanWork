inherited fmCheckList: TfmCheckList
  Width = 563
  OnResize = FrameResize
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 563
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 5
      Width = 34
      Height = 13
      Caption = 'Найти:'
    end
    object ed1: TEdit
      Left = 42
      Top = 2
      Width = 453
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'ed1'
      OnKeyDown = ed1KeyDown
    end
    object ToolBar1: TToolBar
      Left = 500
      Top = 2
      Width = 59
      Height = 24
      Align = alNone
      Anchors = [akTop, akRight]
      ButtonWidth = 59
      Caption = 'ToolBar1'
      EdgeBorders = []
      Flat = True
      Images = dmPicters.ilCommonPictures
      List = True
      ShowCaptions = True
      TabOrder = 1
      Wrapable = False
      object tb1: TToolButton
        Left = 0
        Top = 0
        Action = actSearch
      end
    end
  end
  object xxxDBGrid: TxxxDBGrid [1]
    Left = 0
    Top = 26
    Width = 563
    Height = 486
    Align = alClient
    DataSource = dsList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    PopupMenu = PopupMenu
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = xxxDBGridCellClick
    OnDrawColumnCell = xxxDBGridDrawColumnCell
    AdvSettings.Guid = '{37699C1F-59BC-498B-AE3B-1D3015A065D7}'
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
  inherited actList: TActionList
    object actSearch: TAction
      Caption = 'Поиск'
      ImageIndex = 3
      OnExecute = actSearchExecute
      OnUpdate = actSearchUpdate
    end
    object actCheckAll: TAction
      Caption = 'Выбрать все записи'
      Hint = 'Выбрать все записи'
      OnExecute = actCheckAllExecute
      OnUpdate = actCheckAllUpdate
    end
    object actUncheckAll: TAction
      Caption = 'Снять все отметки'
      Hint = 'Снять все отметки'
      OnExecute = actCheckAllExecute
      OnUpdate = actUncheckAllUpdate
    end
  end
  inherited odsList: TOracleDataSet
    OnApplyRecord = odsListApplyRecord
  end
  object PopupMenu: TPopupMenu
    Images = dmPicters.ilCommonPictures
    Left = 16
    Top = 147
    object miCheckAll: TMenuItem
      Action = actCheckAll
    end
    object miUncheckAll: TMenuItem
      Action = actUncheckAll
    end
  end
end
