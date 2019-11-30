inherited frm92_IssuerEdit: Tfrm92_IssuerEdit
  Left = 517
  Top = 453
  Caption = 'frm92_IssuerEdit'
  ClientHeight = 77
  ClientWidth = 253
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 16
    Width = 75
    Height = 13
    Caption = 'ИНН эмитента'
  end
  inherited Panel2: TPanel
    Top = 44
    Width = 253
    inherited Panel3: TPanel
      Left = 88
    end
  end
  object ed01: TDBEdit [2]
    Left = 96
    Top = 12
    Width = 137
    Height = 21
    DataField = 'T028_INN'
    DataSource = frm92_IssuerList.dsList
    TabOrder = 1
  end
end
