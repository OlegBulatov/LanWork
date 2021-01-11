inherited frm001_Login: Tfrm001_Login
  Left = 1380
  Top = 835
  Caption = 'Форма 401'
  ClientHeight = 95
  ClientWidth = 272
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
    Top = 11
    Width = 90
    Height = 13
    Caption = 'Пользователь:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 10
    Top = 41
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Пароль:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel2: TPanel
    Top = 62
    Width = 272
    inherited Panel3: TPanel
      Left = 107
      inherited OKBtn: TButton
        Default = True
      end
    end
  end
  object txtName: TEdit [3]
    Left = 108
    Top = 8
    Width = 157
    Height = 21
    TabOrder = 1
  end
  object txtPass: TEdit [4]
    Left = 108
    Top = 37
    Width = 157
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  inherited ActionList: TActionList
    Top = 40
  end
end
