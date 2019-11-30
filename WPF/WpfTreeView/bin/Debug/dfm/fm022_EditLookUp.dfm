inherited fmEditLookUp: TfmEditLookUp
  Width = 429
  inherited lcb: TRxDBLookupCombo
    Width = 268
    TabStop = False
    Visible = False
  end
  object ceList: TComboEdit [2]
    Left = 144
    Top = 4
    Width = 268
    Height = 21
    ClickKey = 16424
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 2
    Text = 'ceList'
    OnButtonClick = ceListButtonClick
    OnKeyUp = ceListKeyUp
  end
  object tmLookUp: TTimer
    Enabled = False
    OnTimer = tmLookUpTimer
    Left = 264
  end
end
