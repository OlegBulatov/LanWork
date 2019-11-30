object frm40_Progress: Tfrm40_Progress
  Left = 442
  Top = 330
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Расчет оценок'
  ClientHeight = 121
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
  object ProgressBar: TGauge
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
  object ProcessedDescr: TLabel
    Left = 8
    Top = 72
    Width = 179
    Height = 13
    Caption = 'Количество обработанных записей'
  end
  object Descr: TLabel
    Left = 8
    Top = 40
    Width = 20
    Height = 13
    Caption = 'Шаг'
  end
  object TimerDescr: TLabel
    Left = 8
    Top = 56
    Width = 135
    Height = 13
    Caption = 'Прошло времени: 00:00:00'
  end
  object btnOk: TButton
    Left = 156
    Top = 91
    Width = 75
    Height = 25
    Caption = 'ОК'
    Enabled = False
    ModalResult = 1
    TabOrder = 0
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 280
    Top = 32
  end
  object oqKOCnt: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :o_cnt := PK_405_CLASSIFICATION.f_get_cnt_ko_for_calc(:T055_ID' +
        ');'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      060000003A4F5F434E540400000008000000000000000000000000000000}
    Left = 248
    Top = 80
  end
  object oqProcessedCnt: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :o_cnt := PK_405_PROGERESS.f_get_processed_count(:PGSS_NAME);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000060000003A4F5F434E540300000000000000000000000A00
      00003A504753535F4E414D45050000000000000000000000}
    Left = 232
    Top = 40
  end
  object oqResidCnt: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :o_cnt := PK_405_CLASSIFICATION.f_get_cnt_resid_for_calc(:T055' +
        '_ID);'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      060000003A4F5F434E540400000008000000000000000000000000000000}
    Left = 280
    Top = 80
  end
  object oqSecTypeCnt: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :o_cnt := PK_405_CLASSIFICATION.f_get_cnt_sectype_for_calc(:T0' +
        '55_ID);'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      060000003A4F5F434E540400000008000000000000000000000000000000}
    Left = 312
    Top = 80
  end
end
