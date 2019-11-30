inherited frm97_EmissionEditItem: Tfrm97_EmissionEditItem
  Caption = 'Размер эмиссии'
  ClientHeight = 91
  ClientWidth = 199
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 8
    Width = 64
    Height = 26
    Caption = 'Дата начала'#13#10'   действия'
  end
  object Label2: TLabel [1]
    Left = 4
    Top = 40
    Width = 86
    Height = 13
    Caption = 'Размер эмиссии'
  end
  inherited Panel2: TPanel
    Top = 58
    Width = 199
    inherited Panel3: TPanel
      Left = 34
    end
    inherited PrevBtn: TBitBtn
      Left = 0
      Width = 9
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 8
      Width = 9
      Visible = False
    end
  end
  object dtp01: TDBDateTimePicker [3]
    Left = 96
    Top = 8
    Width = 97
    Height = 21
    CalAlignment = dtaLeft
    Date = 39371.543350625
    Time = 39371.543350625
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
    DataField = 'T098_START_DATE'
    DataSource = frm97_EmissionListItem.dsList
  end
  object ed01: TDBEdit [4]
    Left = 96
    Top = 34
    Width = 97
    Height = 21
    DataField = 'T098_EMISSION_SIZE'
    DataSource = frm97_EmissionListItem.dsList
    TabOrder = 2
  end
end
