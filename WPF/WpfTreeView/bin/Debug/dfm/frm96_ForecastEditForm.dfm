inherited frm96_ForecastEdit: Tfrm96_ForecastEdit
  ClientHeight = 140
  ClientWidth = 415
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Наименование'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 28
    Width = 50
    Height = 13
    Caption = 'Описание'
  end
  inherited Panel2: TPanel
    Top = 107
    Width = 415
    inherited Panel3: TPanel
      Left = 250
    end
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 4
    Width = 311
    Height = 21
    DataField = 'M025_NAME'
    DataSource = frm96_ForecastList.dsList
    TabOrder = 1
  end
  object m01: TDBMemo [4]
    Left = 98
    Top = 28
    Width = 311
    Height = 73
    DataField = 'M025_DESCR'
    DataSource = frm96_ForecastList.dsList
    TabOrder = 2
  end
  inherited ActionList: TActionList
    Left = 272
    Top = 56
  end
end
