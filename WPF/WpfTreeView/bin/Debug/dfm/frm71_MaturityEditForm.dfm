inherited frm71_MaturityEdit: Tfrm71_MaturityEdit
  ClientHeight = 93
  ClientWidth = 250
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
    Top = 12
    Width = 26
    Height = 13
    Caption = 'Дата'
  end
  object Label2: TLabel [1]
    Left = 10
    Top = 36
    Width = 36
    Height = 13
    Caption = 'Ставка'
  end
  inherited Panel2: TPanel
    Top = 60
    Width = 250
    inherited Panel3: TPanel
      Left = 85
    end
    inherited PrevBtn: TBitBtn
      Left = 136
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 24
      Visible = False
    end
  end
  object dt01: TDBDateTimePicker [3]
    Left = 82
    Top = 8
    Width = 164
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    CalAlignment = dtaLeft
    Date = 38427.6281665972
    Time = 38427.6281665972
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
    DataField = 'T092_DATE'
    DataSource = frm71_MaturityList.dsList
  end
  object ed01: TDBEdit [4]
    Left = 82
    Top = 33
    Width = 166
    Height = 21
    Hint = 'в %'
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T092_RATE'
    DataSource = frm71_MaturityList.dsList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  inherited ActionList: TActionList
    Left = 0
    Top = 0
  end
end
