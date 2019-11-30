object Form2: TForm2
  Left = 307
  Top = 264
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Reference'
  ClientHeight = 483
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 49
    Height = 13
    Caption = 'Securities:'
  end
  object Label2: TLabel
    Left = 16
    Top = 224
    Width = 30
    Height = 13
    Caption = 'Fields:'
  end
  object Label3: TLabel
    Left = 336
    Top = 28
    Width = 49
    Height = 13
    Caption = 'Start date:'
  end
  object Label4: TLabel
    Left = 336
    Top = 59
    Width = 43
    Height = 13
    Caption = 'End date'
  end
  object Label5: TLabel
    Left = 336
    Top = 92
    Width = 45
    Height = 13
    Caption = 'Currency:'
  end
  object Label6: TLabel
    Left = 336
    Top = 124
    Width = 51
    Height = 13
    Caption = 'Periodicity:'
  end
  object Button1: TButton
    Left = 410
    Top = 443
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 498
    Top = 443
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object SecMemo: TMemo
    Left = 16
    Top = 24
    Width = 305
    Height = 177
    Lines.Strings = (
      'SecMemo')
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object FldsMemo: TMemo
    Left = 16
    Top = 240
    Width = 305
    Height = 185
    Lines.Strings = (
      'FldsMemo')
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 432
    Top = 24
    Width = 145
    Height = 21
    CalAlignment = dtaLeft
    Date = 42517
    Time = 42517
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object DateTimePicker2: TDateTimePicker
    Left = 432
    Top = 56
    Width = 145
    Height = 21
    CalAlignment = dtaLeft
    Date = 42517
    Time = 42517
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 432
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object ComboBox1: TComboBox
    Left = 432
    Top = 120
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'ComboBox1'
  end
end
