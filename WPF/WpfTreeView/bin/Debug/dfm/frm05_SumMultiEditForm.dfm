inherited frm05_SumMultiEdit: Tfrm05_SumMultiEdit
  Top = 210
  ClientHeight = 60
  ClientWidth = 302
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 9
    Width = 84
    Height = 13
    Caption = 'Дата погашения'
  end
  inherited Panel2: TPanel
    Top = 27
    Width = 302
    inherited Panel3: TPanel
      Left = 137
    end
  end
  object dt01: TDBDateTimePicker [2]
    Left = 98
    Top = 4
    Width = 191
    Height = 21
    CalAlignment = dtaLeft
    Date = 39960
    Time = 39960
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
    DataField = 'T001_DATE_OFF'
    DataSource = frm05_SumList.dsList
  end
  inherited ActionList1: TActionList
    Left = 40
    Top = 24
  end
end
