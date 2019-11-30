object fm31_Filter: Tfm31_Filter
  Left = 0
  Top = 0
  Width = 532
  Height = 21
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  TabOrder = 0
  object paLeft01: TPanel
    Left = 0
    Top = 0
    Width = 51
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 43
      Height = 13
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Фильтр:'
    end
  end
  object paLeft02: TPanel
    Left = 51
    Top = 0
    Width = 118
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object edSearchText: TEdit
      Left = 0
      Top = 0
      Width = 118
      Height = 21
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = edSearchTextKeyPress
    end
  end
  object paLeft03: TPanel
    Left = 169
    Top = 0
    Width = 25
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object sbSelect: TSpeedButton
      Left = 0
      Top = -1
      Width = 25
      Height = 22
      Action = actSelect
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      Glyph.Data = {
        6E000000424D6E000000000000003E00000028000000050000000C0000000100
        01000000000030000000C40E0000C40E0000020000000000000000000000FFFF
        FF00F8000000F8000000F8000000F8000000D80000008800000000000000F800
        0000F8000000F8000000F8000000F8000000}
      Layout = blGlyphRight
      Margin = 2
      ParentShowHint = False
      ShowHint = True
    end
  end
  object paLeft04: TPanel
    Left = 194
    Top = 0
    Width = 101
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    object edKeyField: TEdit
      Left = 0
      Top = 0
      Width = 101
      Height = 21
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
  end
  object paLeft05: TPanel
    Left = 295
    Top = 0
    Width = 70
    Height = 21
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
    object spbStartSearch: TSpeedButton
      Left = 0
      Top = 0
      Width = 70
      Height = 21
      Action = actSearch
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
  end
  object Panel1: TPanel
    Left = 505
    Top = 0
    Width = 27
    Height = 21
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 5
    object SpeedButton1: TSpeedButton
      Left = 5
      Top = 0
      Width = 21
      Height = 21
      Action = actClose
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
  end
  object chbType: TCheckBox
    Left = 376
    Top = 3
    Width = 101
    Height = 17
    Hint = 'Слово целиком'
    Caption = 'Слово целиком'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object alSearchFrame: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 120
    Top = 65524
    object actSearch: TAction
      Caption = 'Фильтр'
      Hint = 'Применить фильтр'
      OnExecute = actSearchExecute
    end
    object actClose: TAction
      Hint = 'Скрыть окно поиска'
      ImageIndex = 4
      OnExecute = actCloseExecute
    end
    object actSelect: TAction
      Caption = 'в'
      Hint = 'Наложить фильтр по полю'
      OnExecute = actSelectExecute
    end
    object actShowHide: TAction
      Caption = 'Простой ф&ильтр'
      Hint = 'Показать окно простого фильтра'
      ImageIndex = 18
      ShortCut = 16454
      OnExecute = actShowHideExecute
    end
  end
  object ppmSearchFrame: TPopupMenu
    AutoHotkeys = maManual
    Left = 80
    Top = 65522
    object N3: TMenuItem
      Caption = 'Поиск по номеру акта'
    end
    object N4: TMenuItem
      Tag = 1
      Caption = 'Поиск по серийному номеру'
    end
  end
end
