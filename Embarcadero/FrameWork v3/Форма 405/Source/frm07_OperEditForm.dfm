inherited frm07_OperEdit: Tfrm07_OperEdit
  ClientHeight = 145
  ClientWidth = 377
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 70
    Height = 13
    Caption = 'Код операции'
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
    TabOrder = 2
    inherited Panel3: TPanel
      Left = 212
    end
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 5
    Width = 273
    Height = 21
    DataField = 'T011_TYPE_ID'
    DataSource = frm07_OperList.dsList
    TabOrder = 0
  end
  object m01: TDBMemo [4]
    Left = 98
    Top = 29
    Width = 273
    Height = 81
    DataField = 'T011_OPERATION_DESC'
    DataSource = frm07_OperList.dsList
    TabOrder = 1
  end
  inherited ActionList1: TActionList
    Left = 24
    Top = 64
  end
end
