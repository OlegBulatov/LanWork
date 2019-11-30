inherited A101_ItemsTypePrm: TA101_ItemsTypePrm
  Width = 406
  Height = 24
  inline ItemsTypeFilter: TA12_ItemTypeFilter
    Top = 2
    Width = 392
    Height = 22
    Anchors = [akLeft, akTop, akRight]
    inherited lcb: TRxDBLookupCombo
      Left = 150
      Width = 242
      OnCloseUp = ItemsTypeFilterlcbCloseUp
    end
    inherited cb: TCheckBox
      Checked = True
      Enabled = False
      State = cbChecked
      Visible = False
    end
  end
end
