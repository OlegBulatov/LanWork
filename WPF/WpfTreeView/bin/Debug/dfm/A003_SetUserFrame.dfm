inherited A003_SetUser: TA003_SetUser
  Width = 302
  Height = 41
  inline A003_Users1: TA003_Users [0]
    Left = 6
    Top = 7
    Width = 289
    inherited lbCaption: TLabel
      Left = 0
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 88
      Width = 202
      DataField = 'T203_ID'
      LookupField = 'T203_ID'
    end
    inherited cb: TCheckBox
      Left = 272
      Enabled = False
      Visible = False
    end
  end
end
