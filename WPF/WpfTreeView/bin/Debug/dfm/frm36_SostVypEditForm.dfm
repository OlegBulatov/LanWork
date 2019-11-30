inherited frm36_SostVypEdit: Tfrm36_SostVypEdit
  ClientHeight = 99
  ClientWidth = 375
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 7
    Width = 50
    Height = 13
    Caption = 'Описание'
  end
  inherited Panel2: TPanel
    Top = 66
    Width = 375
    TabOrder = 1
    inherited Panel3: TPanel
      Left = 210
    end
  end
  object m01: TDBMemo [2]
    Left = 98
    Top = 4
    Width = 272
    Height = 63
    DataField = 'T023_NAME'
    DataSource = frm36_SostVypList.dsList
    TabOrder = 0
  end
  inherited ActionList1: TActionList
    Left = 40
    Top = 24
  end
end
