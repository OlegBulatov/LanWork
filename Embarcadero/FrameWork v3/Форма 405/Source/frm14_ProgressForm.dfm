object frm14_Progress: Tfrm14_Progress
  Left = 442
  Top = 330
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1092#1072#1081#1083#1072
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
  OnCreate = FormCreate
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
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1073#1088#1072#1073#1086#1090#1072#1085#1085#1099#1093' '#1079#1072#1087#1080#1089#1077#1081
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 29
    Height = 13
    Caption = #1060#1072#1081#1083
  end
  object btnOk: TButton
    Left = 156
    Top = 75
    Width = 75
    Height = 25
    Caption = #1054#1050
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
end
