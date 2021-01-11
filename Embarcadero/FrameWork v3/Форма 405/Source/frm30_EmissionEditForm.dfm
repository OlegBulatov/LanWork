inherited frm30_EmissionEdit: Tfrm30_EmissionEdit
  Left = 387
  Top = 484
  ClientHeight = 136
  ClientWidth = 454
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 103
    Width = 454
    TabOrder = 3
    inherited Panel3: TPanel
      Left = 289
    end
  end
  inline fm06_Regn: Tfm06_Regn [1]
    Top = 4
    Width = 457
    inherited btnSelect: TSpeedButton
      OnClick = fm06_RegnbtnSelectClick
    end
    inherited lcbSelect: TDBLookupComboBox
      Width = 351
      DataField = 'T026_ID'
      DataSource = frm51_EmisBottom.dsList
    end
  end
  inline fm08_SecType: Tfm08_SecType
    Top = 29
    Width = 457
    TabOrder = 1
    inherited btnSelect: TSpeedButton
      OnClick = fm08_SecTypebtnSelectClick
    end
    inherited lcbSelect: TDBLookupComboBox
      Width = 351
      DataField = 'T027_ID'
      DataSource = fm06_Regn.dsSelect
    end
  end
  inline fm09_Issuer: Tfm09_Issuer
    Top = 54
    Width = 457
    TabOrder = 2
    inherited btnSelect: TSpeedButton
      OnClick = fm09_IssuerbtnSelectClick
    end
    inherited lcbSelect: TDBLookupComboBox
      Width = 351
      DataField = 'T028_ID'
      DataSource = fm06_Regn.dsSelect
    end
    inherited ed02: TDBEdit
      Width = 153
    end
  end
  inherited ActionList1: TActionList
    Left = 40
    Top = 40
  end
end
