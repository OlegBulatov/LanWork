object frm29_Login: Tfrm29_Login
  Left = 305
  Top = 315
  BorderStyle = bsDialog
  Caption = 'Регистрация пользователя'
  ClientHeight = 111
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 11
    Width = 117
    Height = 13
    Caption = 'Имя пользователя:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 78
    Top = 41
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Пароль:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtName: TEdit
    Left = 128
    Top = 8
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object txtPass: TEdit
    Left = 128
    Top = 37
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 56
    Top = 75
    Width = 70
    Height = 23
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 145
    Top = 75
    Width = 70
    Height = 23
    Cancel = True
    Caption = 'Отмена'
    ModalResult = 2
    TabOrder = 3
  end
end
