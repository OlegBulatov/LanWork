inherited A109_QuartalPrm: TA109_QuartalPrm
  Width = 406
  Height = 24
  inline PeriodFilter: TA111_PeriodFilter
    Top = 2
    Width = 392
    Height = 22
    Anchors = [akLeft, akTop, akRight]
    inherited lbCaption: TLabel
      Width = 88
      Caption = '�������� ������'
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 150
      Width = 242
    end
    inherited cb: TCheckBox
      Checked = True
      State = cbChecked
      Visible = False
    end
  end
end
