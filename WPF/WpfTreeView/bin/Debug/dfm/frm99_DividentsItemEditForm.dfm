inherited frm99_DividentsItemEdit: Tfrm99_DividentsItemEdit
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
    inherited PrevBtn: TBitBtn
      Width = 9
      Enabled = False
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 16
      Width = 9
      Enabled = False
      Visible = False
    end
  end
  object ed01: TDBEdit [2]
    Left = 104
    Top = 8
    Width = 177
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'M079_PROC_VALUE'
    TabOrder = 1
  end
  inherited ActionList: TActionList
    Left = 32
    Top = 32
  end
end
