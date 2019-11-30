inherited A113_ReportCheckParams: TA113_ReportCheckParams
  Width = 520
  Height = 141
  inline PeriodFilter: TA12_PeriodFilterAll
    Left = -12
    Top = 2
    Width = 517
    Anchors = [akLeft, akTop, akRight]
    inherited lbCaption: TLabel
      Width = 88
      Caption = 'Отчетный период'
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Width = 356
    end
    inherited cb: TCheckBox
      Checked = True
      State = cbChecked
      Visible = False
    end
  end
  inline VersionFilter: TA114_ReportVersion
    Left = -12
    Top = 26
    Width = 517
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    inherited lcb: TxxxDBLookupCheckCombo
      Width = 356
      OnCloseUp = VersionFilterlcbCloseUp
    end
    inherited cb: TCheckBox
      Visible = False
    end
  end
  inline BisSectorFilter: TA115_ReportBisSector
    Left = -12
    Top = 49
    Width = 517
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    inherited lcb: TxxxDBLookupCheckCombo
      Width = 356
    end
    inherited cb: TCheckBox
      Visible = False
    end
  end
  inline BisInstrumentFilter: TA116_ReportInstrument
    Left = -12
    Top = 72
    Width = 517
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    inherited lcb: TxxxDBLookupCheckCombo
      Width = 356
    end
    inherited cb: TCheckBox
      Visible = False
    end
  end
  inline MothersFilter: TA117_ReportMothers
    Left = -12
    Top = 95
    Width = 517
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    inherited lcb: TxxxDBLookupCheckCombo
      Width = 356
    end
    inherited cb: TCheckBox
      Visible = False
    end
  end
  inline CountryFilter: TA118_ReportCountries
    Left = -12
    Top = 118
    Width = 517
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 5
    inherited lcb: TxxxDBLookupCheckCombo
      Width = 356
    end
    inherited cb: TCheckBox
      Visible = False
    end
    inherited odsList: TOracleDataSet
      SQL.Strings = (
        'SELECT T062_ID,'
        '       NAME_BY_LEVEL'
        'FROM   V_410_BOP_CNT_C_TREE'
        'WHERE  T061_ID = :T061_ID')
    end
  end
end
