object A000_Progess: TA000_Progess
  Left = 395
  Top = 411
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Импорт данных из файла'
  ClientHeight = 104
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TGauge
    Left = 9
    Top = 8
    Width = 375
    Height = 18
    BackColor = clHighlightText
    Color = clBtnFace
    ForeColor = clBlue
    ParentColor = False
    Progress = 0
  end
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 179
    Height = 13
    Caption = 'Количество обработанных записей'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Файл'
  end
  object btnOk: TButton
    Left = 156
    Top = 75
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'ОК'
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
end
