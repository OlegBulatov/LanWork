inherited frm82_NrezEdit: Tfrm82_NrezEdit
  ClientHeight = 59
  ClientWidth = 219
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 81
    Height = 13
    Caption = 'Процент налога'
  end
  inherited Panel2: TPanel
    Top = 26
    Width = 219
    inherited Panel3: TPanel
      Left = 54
    end
    inherited PrevBtn: TBitBtn
      Width = 9
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 16
      Width = 9
      Visible = False
    end
  end
  object ed01: TDBEdit [2]
    Left = 96
    Top = 4
    Width = 121
    Height = 21
    DataField = 'M079_PROC_VALUE'
    DataSource = frm82_NrezList.dsList
    TabOrder = 1
  end
  inherited ActionList: TActionList
    Left = 160
    Top = 8
  end
end
