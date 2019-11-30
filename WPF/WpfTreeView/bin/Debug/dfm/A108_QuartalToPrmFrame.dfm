inherited A108_QuartalToPrm: TA108_QuartalToPrm
  Width = 406
  Height = 24
  inline PeriodFilter: TA12_PeriodFilterAll
    Top = 2
    Width = 392
    inherited lbCaption: TLabel
      Width = 51
      Caption = '             по'
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 150
      Width = 242
    end
    inherited cb: TCheckBox
      Visible = False
    end
  end
end
