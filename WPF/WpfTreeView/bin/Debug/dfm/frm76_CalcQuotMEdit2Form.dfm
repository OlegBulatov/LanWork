inherited frm76_CalcQuotMEdit2: Tfrm76_CalcQuotMEdit2
  Left = 281
  Top = 316
  ClientHeight = 59
  ClientWidth = 311
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Значение'
  end
  inherited Panel2: TPanel
    Top = 26
    Width = 311
    inherited Panel3: TPanel
      Left = 146
    end
  end
  object ed01: TDBEdit [2]
    Left = 98
    Top = 4
    Width = 207
    Height = 21
    DataField = 'T083_RATE_VALUE'
    DataSource = frm76_CalcQuotMItems.dsList
    TabOrder = 1
  end
  inherited ActionList1: TActionList
    Left = 40
    Top = 40
  end
end
