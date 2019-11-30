inherited fmTextFilter: TfmTextFilter
  Width = 376
  Height = 21
  object lbCaption: TLabel [0]
    Left = 18
    Top = 4
    Width = 96
    Height = 13
    Caption = 'Название фильтра'
  end
  object cb: TCheckBox [1]
    Left = 0
    Top = 2
    Width = 17
    Height = 17
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = cbClick
  end
  object ed: TEdit [2]
    Left = 162
    Top = 0
    Width = 215
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Text = 'ed'
    OnKeyUp = edKeyUp
  end
end
