object frm106_DataSource: Tfrm106_DataSource
  Left = 291
  Top = 438
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = '������ ������'
  ClientHeight = 158
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 0
    Top = 0
    Width = 555
    Height = 158
    Align = alClient
    DataField = 'HEADER_DATA'
    DataSource = dsList
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      
        'SELECT Pk_405_INFO.f_GetReportHeader(:T002_ID) HEADER_DATA FROM ' +
        'DUAL')
    Variables.Data = {
      0300000001000000080000003A543030325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {04000000010000000B0000004845414445525F44415441010000000000}
    Session = dmMain.OracleSession
    Left = 384
    Top = 8
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 424
    Top = 8
  end
end
