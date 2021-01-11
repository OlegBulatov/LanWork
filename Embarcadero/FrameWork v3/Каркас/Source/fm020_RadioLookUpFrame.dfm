inherited fmRadioLookUp: TfmRadioLookUp
  inherited lbCaption: TLabel
    Width = 3
    Caption = ''
    Enabled = False
    Visible = False
    OnMouseDown = nil
  end
  inherited cb: TCheckBox
    TabStop = False
    Enabled = False
    TabOrder = 2
    Visible = False
  end
  object rb: TRadioButton [3]
    Left = 0
    Top = 3
    Width = 141
    Height = 17
    Caption = 'Название фильтра'
    TabOrder = 0
    OnClick = rbClick
  end
end
