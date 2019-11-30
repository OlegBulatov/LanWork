inherited frm33_IssuerTypeEdit: Tfrm33_IssuerTypeEdit
  Left = 370
  Top = 222
  ClientHeight = 223
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
    Top = 74
    Width = 74
    Height = 26
    Caption = 'Полное'#13#10'наименование'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 44
    Width = 19
    Height = 13
    Caption = 'Код'
  end
  inherited Panel2: TPanel
    Top = 190
    Width = 400
    TabOrder = 3
    inherited Panel3: TPanel
      Left = 235
    end
  end
  object ed01: TDBEdit [4]
    Left = 98
    Top = 8
    Width = 294
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T025_SHOT_NAME'
    DataSource = frm33_IssuerTypeList.dsList
    TabOrder = 0
  end
  object m01: TDBMemo [5]
    Left = 98
    Top = 72
    Width = 294
    Height = 110
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'T025_LONG_NAME'
    DataSource = frm33_IssuerTypeList.dsList
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object ed02: TDBEdit [6]
    Left = 98
    Top = 40
    Width = 294
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T025_CODE'
    DataSource = frm33_IssuerTypeList.dsList
    TabOrder = 1
  end
  inherited ActionList1: TActionList
    Left = 32
    Top = 112
  end
end
