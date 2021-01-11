inherited frm004_List: Tfrm004_List
  Left = 283
  Top = 352
  Caption = 'Детализация'
  ClientHeight = 326
  ClientWidth = 706
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spRight: TSplitter [0]
    Left = 703
    Top = 0
    Width = 3
    Height = 274
    Cursor = crHSplit
    Align = alRight
    Visible = False
  end
  inherited Panel2: TPanel
    Top = 293
    Width = 706
    TabOrder = 2
    Visible = False
    inherited Panel3: TPanel
      Left = 541
    end
  end
  object paRight: TPanel [2]
    Left = 706
    Top = 0
    Width = 0
    Height = 274
    Align = alRight
    BevelOuter = bvNone
    Caption = 'paRight'
    TabOrder = 1
  end
  object paMain: TPanel [3]
    Left = 0
    Top = 0
    Width = 703
    Height = 274
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paMain'
    TabOrder = 0
  end
  object StatusBar: TStatusBar [4]
    Left = 0
    Top = 274
    Width = 706
    Height = 19
    Panels = <>
    SimplePanel = False
    Visible = False
  end
  inherited ActionList: TActionList
    Left = 168
    Top = 115
    inherited actSave: TAction
      Caption = 'Выбрать'
      Hint = 'Выбрать текущею запись'
    end
    object actSelectItem: TAction
      Caption = 'Выбрать'
      Enabled = False
      Hint = 'Выбрать текущею запись'
      Visible = False
    end
  end
end
