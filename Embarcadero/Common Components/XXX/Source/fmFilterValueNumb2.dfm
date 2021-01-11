inherited fmFilterValueNumbFrame2: TfmFilterValueNumbFrame2
  Height = 205
  object Label1: TLabel
    Left = 5
    Top = 7
    Width = 37
    Height = 13
    Caption = 'Список'
  end
  object xxxDBGrid: TxxxDBGrid
    Left = 61
    Top = 5
    Width = 338
    Height = 200
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    PopupMenu = PopupMenu
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = xxxDBGridCellClick
    OnDrawColumnCell = xxxDBGridDrawColumnCell
    AdvSettings.Guid = '{64C6992C-C012-44A9-9B6E-6671565E549C}'
    AdvSettings.AutoFilter = False
    AdvSettings.Enabled = False
    AdvSettings.DesignMode = False
    AdvSettings.Indexes = <>
    AdvSettings.HeadersLines = <>
    AdvSettings.ColumnsAutoSize = False
    AdvSettings.LookUpField.Strings = (
      'Введите имена полей в формате KeyFieldName=ListFieldName')
    DragRows = False
  end
  object DataSource: TDataSource
    Left = 72
    Top = 16
  end
  object PopupMenu: TPopupMenu
    Left = 72
    Top = 53
    object N1: TMenuItem
      Caption = 'Выделить всё'
      Hint = 'Выделить все записи'
      ShortCut = 16449
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Снять выделение'
      Hint = 'Инвертировать выделение'
      ShortCut = 16451
      OnClick = N2Click
    end
  end
end
