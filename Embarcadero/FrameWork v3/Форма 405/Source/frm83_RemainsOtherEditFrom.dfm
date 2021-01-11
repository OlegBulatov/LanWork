inherited frm83_RemainsOtherEdit: Tfrm83_RemainsOtherEdit
  Left = 346
  Top = 257
  ClientHeight = 181
  ClientWidth = 197
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Дата'
  end
  object Label2: TLabel [1]
    Left = 4
    Top = 32
    Width = 55
    Height = 13
    Caption = 'Кол-во ц.б.'
  end
  object Label3: TLabel [2]
    Left = 4
    Top = 56
    Width = 34
    Height = 13
    Hint = 'Валюта номинала'
    Caption = 'Сумма'
  end
  inherited Panel2: TPanel
    Top = 148
    Width = 197
    inherited Panel3: TPanel
      Left = 32
    end
  end
  object dtp01: TDBDateTimePicker [4]
    Left = 72
    Top = 4
    Width = 121
    Height = 21
    CalAlignment = dtaLeft
    Date = 39496.618580162
    Time = 39496.618580162
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
    DataField = 'T104_DATE'
    DataSource = frm83_RemainsOtherList.dsList
  end
  object ed01: TDBEdit [5]
    Left = 72
    Top = 28
    Width = 121
    Height = 21
    DataField = 'T104_COUNT'
    DataSource = frm83_RemainsOtherList.dsList
    TabOrder = 2
  end
  object ed02: TDBEdit [6]
    Left = 72
    Top = 52
    Width = 121
    Height = 21
    DataField = 'T104_SUM'
    DataSource = frm83_RemainsOtherList.dsList
    TabOrder = 3
  end
  object rg01: TDBRadioGroup [7]
    Left = 8
    Top = 76
    Width = 185
    Height = 69
    BiDiMode = bdLeftToRight
    Caption = ' Тип изменения '
    DataField = 'T104_TYPE'
    DataSource = frm83_RemainsOtherList.dsList
    Items.Strings = (
      'Приход'
      'Расход')
    ParentBiDiMode = False
    TabOrder = 4
    Values.Strings = (
      'D'
      'C')
  end
end
