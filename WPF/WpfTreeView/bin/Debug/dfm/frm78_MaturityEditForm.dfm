inherited frm78_MaturityEdit: Tfrm78_MaturityEdit
  Left = 398
  Top = 344
  ClientHeight = 91
  ClientWidth = 250
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Дата'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 36
    Height = 13
    Caption = 'Ставка'
  end
  inherited Panel2: TPanel
    Top = 58
    Width = 250
    TabOrder = 2
    inherited Panel3: TPanel
      Left = 85
    end
  end
  object dt01: TDBDateTimePicker [3]
    Left = 80
    Top = 4
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
    TabOrder = 0
    DataField = 'T092_DATE'
    DataSource = frm78_MaturityList.dsList
  end
  object ed01: TDBEdit [4]
    Left = 80
    Top = 29
    Width = 166
    Height = 21
    Hint = 'в %'
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T092_RATE'
    DataSource = frm78_MaturityList.dsList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  inherited ActionList1: TActionList
    Left = 48
    Top = 60
  end
  object oqRate: TOracleQuery
    SQL.Strings = (
      'select '
      ' SUM(T092_RATE) SUM_RATE'
      'from T092_MATURITY_MATRIX'
      'where T030_ID = :T030_ID')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    Left = 8
    Top = 58
  end
end
