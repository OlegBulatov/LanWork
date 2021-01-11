inherited frm08_PayEdit: Tfrm08_PayEdit
  ClientHeight = 169
  ClientWidth = 377
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Код напр. пл.'
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 57
    Width = 50
    Height = 13
    Caption = 'Описание'
  end
  object Label2: TLabel [2]
    Left = 8
    Top = 32
    Width = 68
    Height = 13
    Caption = 'Направление'
  end
  inherited Panel2: TPanel
    Top = 136
    Width = 377
    TabOrder = 3
    inherited Panel3: TPanel
      Left = 212
    end
  end
  object ed01: TDBEdit [4]
    Left = 98
    Top = 5
    Width = 273
    Height = 21
    DataField = 'T006_NAME'
    DataSource = frm08_PayList.dsList
    TabOrder = 0
  end
  object m01: TDBMemo [5]
    Left = 98
    Top = 54
    Width = 273
    Height = 81
    DataField = 'T006_DESC'
    DataSource = frm08_PayList.dsList
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object cb01: TComboBox [6]
    Left = 98
    Top = 29
    Width = 273
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'в Россию'
      'из России')
  end
  inherited ActionList1: TActionList
    Left = 24
    Top = 96
  end
end
