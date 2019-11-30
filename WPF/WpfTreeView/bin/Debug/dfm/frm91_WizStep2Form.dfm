inherited frm91_WizStep2: Tfrm91_WizStep2
  Caption = 'Мастер импорта первичных данных'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    object Label1: TLabel
      Left = 40
      Top = 40
      Width = 64
      Height = 13
      Caption = 'Показатели:'
    end
    object lcb01: TDBLookupComboBox
      Left = 112
      Top = 36
      Width = 385
      Height = 21
      Enabled = False
      KeyField = 'M028_ID'
      ListField = 'M028_NAME'
      ListSource = ds01
      TabOrder = 0
      Visible = False
    end
    object ScrollBox1: TScrollBox
      Left = 40
      Top = 72
      Width = 457
      Height = 297
      TabOrder = 1
      object clb01: TCheckListBox
        Left = 0
        Top = 0
        Width = 600
        Height = 293
        BorderStyle = bsNone
        ItemHeight = 13
        Items.Strings = (
          'ggg'
          'ttt'
          'fff')
        TabOrder = 0
      end
    end
    object Button1: TButton
      Left = 398
      Top = 376
      Width = 100
      Height = 25
      Caption = 'Выделить все'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 288
      Top = 376
      Width = 100
      Height = 25
      Caption = 'Снять выделение'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  inherited pnlCaption: TPanel
    inherited lblStep: TLabel
      Width = 35
      Caption = 'Шаг 2'
    end
    inherited lblCaption: TLabel
      Width = 165
      Caption = 'Выбор финансового показателя'
    end
  end
  inherited pnlDescription: TPanel
    inherited lblDescription: TLabel
      Width = 179
      Caption = 'Выберите финансовые показатели'
    end
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select V1.M028_ID, V1.M028_NAME'
      'from V_NR_REINVEST_DATA_TYPE V1,'
      'V_NR_REINVEST_REPORTS V2,'
      'V_NR_REINVEST_REPORT_DATA V3'
      'WHERE V1.M028_ID = V3.M028_ID'
      'AND V2.M021_ID = V3.M021_ID'
      'AND V2.M032_ID = :M032_ID '
      'and V2.M029_ID = :M029_ID')
    Variables.Data = {
      0300000002000000080000003A4D3033325F4944040000000000000000000000
      080000003A4D3032395F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D3032385F4944010000000000090000004D3032
      385F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 184
    Top = 169
    object ods01M028_ID: TFloatField
      FieldName = 'M028_ID'
      Required = True
    end
    object ods01M028_NAME: TStringField
      FieldName = 'M028_NAME'
      Required = True
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 256
    Top = 169
  end
  object oqAdd: TOracleQuery
    SQL.Strings = (
      'INSERT INTO M033_SELECTED_VALUES'
      '(M033_TYPE, M033_NAME, M033_NUMB) VALUES '
      '(1, :M033_NAME, :M033_VALUE)'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A4D3033335F4E414D4505000000000000000000
      00000B0000003A4D3033335F56414C5545040000000000000000000000}
    Left = 130
    Top = 267
  end
  object oqPrepare: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        '  Pk_Nr_Reinvest_Profits.p_prepare_draft_data(:M029_ID, :M032_ID' +
        ');'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A4D3033325F4944040000000000000000000000
      080000003A4D3032395F4944040000000000000000000000}
    Left = 130
    Top = 331
  end
  object oqClear: TOracleQuery
    SQL.Strings = (
      'DELETE FROM M033_SELECTED_VALUES'
      'WHERE M033_TYPE = 1'
      ' ')
    Session = dmMain.OracleSession
    Left = 186
    Top = 267
  end
end
