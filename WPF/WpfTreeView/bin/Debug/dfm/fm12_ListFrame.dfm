inherited fm12_List: Tfm12_List
  Height = 215
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 50
    Height = 13
    Caption = 'Название'
    Layout = tlCenter
  end
  object gr01: TxxxDBGrid
    Left = 103
    Top = 4
    Width = 252
    Height = 211
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds01
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
    OnCellClick = gr01CellClick
    OnDrawColumnCell = gr01DrawColumnCell
    AdvSettings.Guid = '{AB3BF6E4-9E1C-43F5-B283-0C0D66A62DA7}'
    AdvSettings.AutoFilter = False
    AdvSettings.Enabled = False
    AdvSettings.DesignMode = False
    AdvSettings.Indexes = <>
    AdvSettings.HeadersLines = <>
    AdvSettings.ColumnsAutoSize = False
    AdvSettings.LookUpField.Strings = (
      'Введите имена полей в формате KeyFieldName=ListFieldName')
    DragRows = False
    ShowVscroll = True
    FlatStyle = False
    Columns = <
      item
        Expanded = False
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        Width = 205
        Visible = True
      end>
  end
  object ods01: TOracleDataSet
    Session = dmMain.OracleSession
    Left = 136
    Top = 32
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 168
    Top = 32
  end
  object PopupMenu: TPopupMenu
    Left = 168
    Top = 61
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
