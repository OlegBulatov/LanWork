inherited E001_CalcOptions: TE001_CalcOptions
  Left = 734
  Top = 268
  Caption = 'Настройки расчета'
  ClientHeight = 528
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 495
  end
  object GroupBox1: TGroupBox [1]
    Left = 16
    Top = 16
    Width = 185
    Height = 121
    Caption = ' Данные '
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 13
      Top = 19
      Width = 130
      Height = 17
      Caption = 'Данные формы 405'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 13
      Top = 43
      Width = 130
      Height = 17
      Caption = 'Данные формы 711'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 13
      Top = 67
      Width = 130
      Height = 17
      Caption = 'Данные формы 415'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 13
      Top = 91
      Width = 130
      Height = 17
      Caption = 'Данные формы 417'
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 216
    Top = 16
    Width = 185
    Height = 166
    Caption = ' Котировки '
    TabOrder = 2
    object CheckBox5: TCheckBox
      Left = 13
      Top = 67
      Width = 150
      Height = 17
      Caption = 'По данным формы 405'
      TabOrder = 0
    end
    object CheckBox6: TCheckBox
      Left = 13
      Top = 91
      Width = 150
      Height = 17
      Caption = 'По данным формы 711'
      TabOrder = 1
    end
    object CheckBox7: TCheckBox
      Left = 13
      Top = 115
      Width = 150
      Height = 17
      Caption = 'По данным формы 415'
      TabOrder = 2
    end
    object CheckBox8: TCheckBox
      Left = 13
      Top = 139
      Width = 150
      Height = 17
      Caption = 'По данным формы 417'
      TabOrder = 3
    end
    object CheckBox9: TCheckBox
      Left = 13
      Top = 19
      Width = 150
      Height = 17
      Caption = 'По данным ММВБ'
      TabOrder = 4
    end
    object CheckBox10: TCheckBox
      Left = 13
      Top = 43
      Width = 150
      Height = 17
      Caption = 'По данным Bloomberg'
      TabOrder = 5
    end
  end
  object CheckBox11: TCheckBox [3]
    Left = 16
    Top = 224
    Width = 177
    Height = 17
    Caption = 'Пересчитать операции ф405'
    TabOrder = 3
  end
end
