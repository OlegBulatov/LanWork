inherited frm96_ForecastAdd: Tfrm96_ForecastAdd
  ClientHeight = 60
  ClientWidth = 389
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Наименование'
  end
  inherited Panel2: TPanel
    Top = 27
    Width = 389
    TabOrder = 1
    inherited Panel3: TPanel
      Left = 224
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
  object Edit1: TEdit [2]
    Left = 96
    Top = 4
    Width = 289
    Height = 21
    TabOrder = 0
  end
  inherited ActionList: TActionList
    Left = 248
    Top = 16
  end
end
