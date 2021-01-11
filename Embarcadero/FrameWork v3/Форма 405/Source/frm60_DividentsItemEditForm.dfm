inherited frm60_DividentsItemEdit: Tfrm60_DividentsItemEdit
  ClientHeight = 76
  ClientWidth = 287
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 12
    Width = 84
    Height = 13
    Caption = 'Процент налога:'
  end
  inherited Panel2: TPanel
    Top = 43
    Width = 287
    inherited Panel3: TPanel
      Left = 122
    end
  end
  object ed01: TDBEdit [2]
    Left = 104
    Top = 8
    Width = 177
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T079_PROC_VALUE'
    DataSource = frm60_DividentsItem.dsList
    TabOrder = 1
  end
  inherited ActionList1: TActionList
    Left = 32
    Top = 32
  end
end
