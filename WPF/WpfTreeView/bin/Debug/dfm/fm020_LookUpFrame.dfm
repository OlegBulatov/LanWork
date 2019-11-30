inherited fmLookUp: TfmLookUp
  inherited lbCaption: TLabel
    Left = 20
  end
  object lcb: TxxxDBLookupCheckCombo [1]
    Left = 162
    Top = 0
    Width = 215
    Height = 21
    DropDownCount = 8
    Anchors = [akLeft, akTop, akRight]
    LookupSource = dsList
    TabOrder = 1
    OnCloseUp = lcbCloseUp
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  inherited dsList: TDataSource
    Left = 232
    Top = 2
  end
  inherited odsList: TOracleDataSet
    Left = 200
    Top = 2
  end
end
