inherited fmSeachFrame1: TfmSeachFrame1
  Width = 129
  Height = 44
  inherited paLeft01: TPanel
    Left = 230
    Height = 22
    Align = alNone
  end
  inherited paLeft02: TPanel
    Width = 86
    Height = 22
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    inherited edSearchText: TEdit
      Width = 86
      Height = 22
    end
  end
  inherited paLeft03: TPanel
    Left = 0
    Top = 22
    Width = 42
    Height = 22
    Align = alNone
    inherited sbSelect: TSpeedButton
      Width = 42
      Height = 22
    end
  end
  inherited paLeft04: TPanel
    Left = 42
    Top = 22
    Width = 86
    Height = 22
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    inherited edKeyField: TEdit
      Width = 86
      Height = 22
    end
  end
  inherited paLeft05: TPanel
    Left = 0
    Width = 42
    Height = 22
    Align = alNone
    inherited spbStartSearch: TSpeedButton
      Width = 42
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      Glyph.Data = {00000000}
      Margin = 2
    end
  end
  inherited Panel1: TPanel
    Height = 59
    Align = alNone
    Enabled = False
    Visible = False
  end
  inherited alSearchFrame: TActionList
    inherited actSearch: TAction
      ImageIndex = -1
    end
    inherited actSelect: TAction
      Caption = 'Поле'
    end
  end
  inherited ppmSearchFrame: TPopupMenu
    Left = 64
  end
end
