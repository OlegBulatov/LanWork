inherited frm35_SecRegnEdit: Tfrm35_SecRegnEdit
  ClientHeight = 86
  ClientWidth = 286
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 7
    Width = 56
    Height = 13
    Caption = 'Рег. номер'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 63
    Height = 13
    Caption = 'Сокр. номер'
  end
  inherited Panel2: TPanel
    Top = 53
    Width = 286
    inherited Panel3: TPanel
      Left = 121
    end
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 4
    Width = 183
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T026_SEC_REGN'
    DataSource = frm35_SecRegnList.dsList
    TabOrder = 1
  end
  object ed02: TDBEdit [4]
    Left = 98
    Top = 29
    Width = 183
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T026_TRIMMED'
    DataSource = frm35_SecRegnList.dsList
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 208
    Top = 8
  end
end
