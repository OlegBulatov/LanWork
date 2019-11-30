inherited frm92_IndexAddVer: Tfrm92_IndexAddVer
  Left = 474
  Top = 272
  Caption = 'Добавление версии'
  ClientHeight = 66
  ClientWidth = 391
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Наименование'
  end
  inherited Panel2: TPanel
    Top = 33
    Width = 391
    inherited Panel3: TPanel
      Left = 226
    end
    inherited PrevBtn: TBitBtn
      Enabled = False
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Enabled = False
      Visible = False
    end
  end
  object ed01: TDBEdit [2]
    Left = 98
    Top = 4
    Width = 288
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'M027_NAME'
    DataSource = frm92_IndexList.dsVersion
    TabOrder = 1
  end
  inherited ActionList: TActionList
    Left = 272
    Top = 8
  end
end
