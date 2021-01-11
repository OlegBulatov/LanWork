inherited frm107_MMVBRatesLoad2: Tfrm107_MMVBRatesLoad2
  Caption = 'frm107_MMVBRatesLoad2'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar3: TToolBar
    Left = 0
    Top = 0
    Width = 688
    Height = 23
    ButtonWidth = 108
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
    TabOrder = 0
    Wrapable = False
    object tbSelectFile: TToolButton
      Left = 0
      Top = 0
      Action = actSelect
      AutoSize = True
    end
    object tbLoadFile: TToolButton
      Left = 112
      Top = 0
      Action = actLoad
      AutoSize = True
    end
  end
  object ListView: TListView
    Left = 0
    Top = 23
    Width = 688
    Height = 424
    Align = alClient
    Checkboxes = True
    Columns = <
      item
        Caption = 'Файл'
        Width = 500
      end
      item
        Caption = 'Результат загрузки'
        Width = 1000
      end>
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ViewStyle = vsReport
  end
  object ActionList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 168
    Top = 115
    object actSelect: TAction
      Category = 'DBF'
      Caption = 'Выбрать файлы'
      Hint = 'Выбрать файлы для загрузки'
      ImageIndex = 12
      OnExecute = actSelectExecute
    end
    object actLoad: TAction
      Category = 'DBF'
      Caption = 'Загрузить'
      Hint = 'Загрузить файлы в базу данных'
      ImageIndex = 13
      OnExecute = actLoadExecute
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'CSV files (*.csv)|*.csv|Any files (*.*)|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 47
    Top = 80
  end
end
