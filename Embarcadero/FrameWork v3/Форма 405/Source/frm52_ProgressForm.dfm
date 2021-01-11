object frm52_Progress: Tfrm52_Progress
  Left = 331
  Top = 242
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Расчет оценок'
  ClientHeight = 115
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Шаг'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 114
    Height = 13
    Caption = 'Прошло времени: 0:00'
  end
  object btnOk: TButton
    Left = 156
    Top = 83
    Width = 75
    Height = 25
    Caption = 'ОК'
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
  object btnCancel: TButton
    Left = 156
    Top = 83
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Отмена'
    Enabled = False
    ModalResult = 2
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 24
    Width = 377
    Height = 49
    BevelOuter = bvLowered
    TabOrder = 2
    object Label2: TLabel
      Left = 6
      Top = 5
      Width = 363
      Height = 41
      AutoSize = False
      Caption = 'Количество обработанных записей'
      WordWrap = True
    end
    object ProgressBar1: TGauge
      Left = 8
      Top = 23
      Width = 361
      Height = 18
      BackColor = clHighlightText
      Color = clBtnFace
      ForeColor = clBlue
      ParentColor = False
      Progress = 0
      Visible = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 264
    Top = 72
  end
  object oqStep: TOracleQuery
    Session = dmMain.OracleSession
    Left = 248
    Top = 8
  end
  object oqCancel: TOracleQuery
    Session = dmMain.OracleSession
    Left = 336
    Top = 72
  end
  object odsInit: TOracleDataSet
    SQL.Strings = (
      'SELECT * FROM H008_LONG_OPS'
      'WHERE H008_ID = :H008_ID')
    Variables.Data = {
      0300000001000000080000003A483030385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000007000000483030385F49440100000000000C000000483030
      385F43415054494F4E0100000000000E000000483030385F535445505F50524F
      430100000000000E000000483030385F444553435F50524F430100000000000F
      000000483030385F434F554E545F50524F430100000000000F00000048303038
      5F544F54414C5F50524F4301000000000012000000483030385F50524F475245
      53535F50524F43010000000000}
    Session = dmMain.OracleSession
    Left = 64
    Top = 64
    object odsInitH008_ID: TFloatField
      FieldName = 'H008_ID'
      Required = True
    end
    object odsInitH008_CAPTION: TStringField
      FieldName = 'H008_CAPTION'
      Required = True
      Size = 250
    end
    object odsInitH008_STEP_PROC: TStringField
      FieldName = 'H008_STEP_PROC'
      Size = 250
    end
    object odsInitH008_DESC_PROC: TStringField
      FieldName = 'H008_DESC_PROC'
      Size = 250
    end
    object odsInitH008_COUNT_PROC: TStringField
      FieldName = 'H008_COUNT_PROC'
      Size = 250
    end
    object odsInitH008_TOTAL_PROC: TStringField
      FieldName = 'H008_TOTAL_PROC'
      Size = 250
    end
    object odsInitH008_PROGRESS_PROC: TStringField
      FieldName = 'H008_PROGRESS_PROC'
      Size = 250
    end
  end
end
