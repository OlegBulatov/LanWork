inherited frm83_RemainsEdit: Tfrm83_RemainsEdit
  ClientHeight = 88
  ClientWidth = 313
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 55
    Width = 313
    inherited Panel3: TPanel
      Left = 148
    end
  end
  object DBCheckBox1: TDBCheckBox [1]
    Left = 16
    Top = 16
    Width = 281
    Height = 17
    Caption = 'включать в расчет данные 405 формы'
    DataField = 'T095_FLAG'
    DataSource = frm83_RemainsList.dsList
    TabOrder = 1
    ValueChecked = '1'
    ValueUnchecked = '2'
  end
  inherited ActionList1: TActionList
    Left = 40
    Top = 16
  end
end
