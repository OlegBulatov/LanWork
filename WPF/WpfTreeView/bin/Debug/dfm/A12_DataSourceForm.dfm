object A12_DataSourceFrm: TA12_DataSourceFrm
  Left = 359
  Top = 386
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Данные отчета'
  ClientHeight = 224
  ClientWidth = 630
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
    Width = 630
    Height = 224
    Align = alClient
    DataField = 'HEADER_DATA'
    DataSource = dsList
    ReadOnly = True
    TabOrder = 0
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      
        'select Pk_404_INFO.f_GetReportHeader(:T002_ID) HEADER_DATA FROM ' +
        'DUAL')
    Variables.Data = {
      0300000001000000080000003A543030325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {04000000010000000B0000004845414445525F44415441010000000000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 40
    object odsListHEADER_DATA: TStringField
      FieldName = 'HEADER_DATA'
      Size = 4000
    end
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 392
    Top = 40
  end
end
