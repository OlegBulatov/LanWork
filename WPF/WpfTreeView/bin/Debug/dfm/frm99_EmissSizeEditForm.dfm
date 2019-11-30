inherited frm99_EmissSizeEdit: Tfrm99_EmissSizeEdit
  Left = 179
  Top = 225
  Caption = 'frm99_EmissSizeEdit'
  ClientHeight = 120
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
  object Label3: TLabel [2]
    Left = 4
    Top = 57
    Width = 48
    Height = 26
    Caption = 'Источник'#13#10'данных'
  end
  inherited Panel2: TPanel
    Top = 87
    Width = 199
    inherited Panel3: TPanel
      Left = 34
    end
  end
  object dtp01: TDBDateTimePicker [4]
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
    DataSource = frm99_EmissSizeList.dsList
  end
  object ed01: TDBEdit [5]
    Left = 96
    Top = 34
    Width = 97
    Height = 21
    DataField = 'T098_EMISSION_SIZE'
    DataSource = frm99_EmissSizeList.dsList
    TabOrder = 2
  end
  object ed02: TDBEdit [6]
    Left = 94
    Top = 60
    Width = 97
    Height = 21
    DataField = 'T098_DATA_SOURCE'
    DataSource = frm99_EmissSizeList.dsList
    TabOrder = 3
  end
end
