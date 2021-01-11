inherited frm47_IssuerGroupEdit: Tfrm47_IssuerGroupEdit
  ClientHeight = 106
  ClientWidth = 473
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 7
    Width = 79
    Height = 13
    Caption = 'Сокр. название'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 89
    Height = 13
    Caption = 'Полное название'
  end
  inherited Panel2: TPanel
    Top = 73
    Width = 473
    inherited Panel3: TPanel
      Left = 308
    end
  end
  object ed01: TDBEdit [3]
    Left = 104
    Top = 4
    Width = 362
    Height = 21
    DataField = 'T042_SHORT_NAME'
    DataSource = frm47_IssuerGroupList.dsList
    TabOrder = 1
  end
  object m01: TDBMemo [4]
    Left = 104
    Top = 29
    Width = 362
    Height = 42
    DataField = 'T042_LONG_NAME'
    DataSource = frm47_IssuerGroupList.dsList
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 64
    Top = 40
  end
end
