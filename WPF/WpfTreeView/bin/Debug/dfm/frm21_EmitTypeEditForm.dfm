inherited frm21_EmitTypeEdit: Tfrm21_EmitTypeEdit
  Left = 370
  Top = 222
  ClientHeight = 206
  ClientWidth = 400
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 74
    Height = 26
    Caption = 'Сокращенное'#13#10'наименование'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 42
    Width = 74
    Height = 26
    Caption = 'Полное'#13#10'наименование'
  end
  inherited Panel2: TPanel
    Top = 173
    Width = 400
    TabOrder = 2
    inherited Panel3: TPanel
      Left = 235
    end
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 8
    Width = 294
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T037_SHOT_NAME'
    DataSource = frm21_EmitTypeList.dsList
    TabOrder = 0
  end
  object m01: TDBMemo [4]
    Left = 98
    Top = 40
    Width = 294
    Height = 121
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'T037_LONG_NAME'
    DataSource = frm21_EmitTypeList.dsList
    ScrollBars = ssVertical
    TabOrder = 1
  end
  inherited ActionList1: TActionList
    Left = 32
    Top = 112
  end
end
