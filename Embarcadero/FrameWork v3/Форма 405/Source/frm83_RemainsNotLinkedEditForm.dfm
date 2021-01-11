inherited frm83_RemainsNotLinkedEdit: Tfrm83_RemainsNotLinkedEdit
  Left = 410
  Top = 501
  ClientHeight = 93
  ClientWidth = 520
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel [0]
    Left = 8
    Top = 9
    Width = 95
    Height = 26
    Caption = 'Остаток на начало'#13#10'кол-во в шт.'
  end
  object Label10: TLabel [1]
    Left = 8
    Top = 37
    Width = 97
    Height = 13
    Caption = 'в долларах США ($)'
  end
  inherited Panel2: TPanel
    Top = 60
    Width = 520
    inherited Panel3: TPanel
      Left = 355
    end
  end
  object ed01: TDBEdit [3]
    Left = 146
    Top = 6
    Width = 367
    Height = 21
    DataField = 'PREV_COUNT_REMAIN'
    DataSource = frm83_RemainsNotLinked.dsList
    TabOrder = 1
  end
  object ed02: TDBEdit [4]
    Left = 146
    Top = 31
    Width = 367
    Height = 21
    DataField = 'PREV_USD_SUM_EDIT_REMAIN'
    DataSource = frm83_RemainsNotLinked.dsList
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 312
    Top = 24
  end
end
