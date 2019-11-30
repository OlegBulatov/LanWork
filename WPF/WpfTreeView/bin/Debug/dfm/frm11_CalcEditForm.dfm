inherited frm11_CalcEdit: Tfrm11_CalcEdit
  Caption = 'Редактирование остатков'
  ClientHeight = 94
  ClientWidth = 339
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 12
    Width = 156
    Height = 13
    Caption = 'Прочие изменения по платежу'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 148
    Height = 13
    Caption = 'Прочие изменения по налогу'
  end
  inherited Panel2: TPanel
    Top = 61
    Width = 339
    inherited Panel3: TPanel
      Left = 174
    end
    inherited PrevBtn: TBitBtn
      Width = 41
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 56
      Width = 33
      Visible = False
    end
  end
  object ed01: TDBEdit [3]
    Left = 176
    Top = 8
    Width = 161
    Height = 21
    DataField = 'M009_SUM_CHANGE'
    DataSource = frm11_CalcList.dsList
    TabOrder = 1
  end
  object ed02: TDBEdit [4]
    Left = 176
    Top = 32
    Width = 161
    Height = 21
    DataField = 'M009_TAX_SUM_CHANGE'
    DataSource = frm11_CalcList.dsList
    TabOrder = 2
  end
end
