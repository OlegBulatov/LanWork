inherited frm83_DefaultRepaymentEdit: Tfrm83_DefaultRepaymentEdit
  Left = 420
  Top = 267
  ClientHeight = 56
  ClientWidth = 212
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 23
    Width = 212
    inherited Panel3: TPanel
      Left = 47
    end
  end
  object paBottom: TPanel [1]
    Left = 0
    Top = 0
    Width = 212
    Height = 23
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 84
      Height = 13
      Caption = 'Дата погашения'
    end
    object dtRepayDate: TDBDateTimePicker
      Left = 120
      Top = 4
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 41142.5389727199
      Time = 41142.5389727199
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
      DataField = 'REPAY_DATE'
      DataSource = frm83_DefaultRepaymentsList.dsList
    end
  end
  inherited ActionList1: TActionList
    Left = 160
    Top = 14
    object actDoOnChange: TAction
      Caption = 'Редактирование'
      Visible = False
    end
  end
end
