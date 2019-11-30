inherited frm06_BondEdit: Tfrm06_BondEdit
  ClientHeight = 145
  ClientWidth = 377
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 66
    Height = 13
    Caption = 'Код типа ц.б.'
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 32
    Width = 50
    Height = 13
    Caption = 'Описание'
  end
  inherited Panel2: TPanel
    Top = 112
    Width = 377
    TabOrder = 1
    inherited Panel3: TPanel
      Left = 212
    end
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 4
    Width = 273
    Height = 21
    DataField = 'T016_BOND_ID'
    DataSource = frm06_BondList.dsList
    TabOrder = 0
  end
  object m01: TDBMemo [4]
    Left = 98
    Top = 29
    Width = 273
    Height = 81
    DataField = 'T016_BOND_DESC'
    DataSource = frm06_BondList.dsList
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 24
    Top = 64
  end
end
