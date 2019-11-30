inherited frm91_WizStep1: Tfrm91_WizStep1
  Caption = 'Мастер импорта первичных данных'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    object Label1: TLabel
      Left = 40
      Top = 40
      Width = 38
      Height = 13
      Caption = 'Период'
    end
    object lcbPeriod: TDBLookupComboBox
      Left = 112
      Top = 36
      Width = 281
      Height = 21
      KeyField = 'M032_ID'
      ListField = 'M032_NAME'
      ListSource = dsPeriod
      TabOrder = 0
    end
    object paMessage: TPanel
      Left = 40
      Top = 88
      Width = 385
      Height = 145
      BevelOuter = bvLowered
      Caption = 'paMessage'
      TabOrder = 1
      Visible = False
      object lblMessage: TLabel
        Left = 9
        Top = 12
        Width = 360
        Height = 117
        AutoSize = False
        Caption = 'lblMessage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
    end
  end
  inherited pnlCaption: TPanel
    inherited lblStep: TLabel
      Width = 35
      Caption = 'Шаг 1'
    end
    inherited lblCaption: TLabel
      Width = 78
      Caption = 'Выбор периода'
    end
  end
  inherited pnlDescription: TPanel
    inherited lblDescription: TLabel
      Width = 153
      Caption = 'Выберите уточняемый период'
    end
  end
  object odsPeriod: TOracleDataSet
    SQL.Strings = (
      'select V1.M032_ID, V1.M032_NAME, V2.M021_CURR'
      'from V_NR_PERIODS V1,'
      '     V_NR_REINVEST_REPORTS V2'
      'where V1.M032_ID = V2.M032_ID '
      'and V1.M032_START_ID >= :T055_START_ID'
      'and V1.M032_END_ID <= :T055_END_ID'
      'and V2.M029_ID = :M029_ID'
      'order by M032_ID desc')
    Variables.Data = {
      03000000030000000C0000003A543035355F454E445F49440400000000000000
      000000000E0000003A543035355F53544152545F494404000000000000000000
      0000080000003A4D3032395F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000070000004D3033325F4944010000000000090000004D3033
      325F4E414D45010000000000090000004D3032315F43555252010000000000}
    Session = dmMain.OracleSession
    Left = 184
    Top = 169
    object odsPeriodM032_ID: TFloatField
      FieldName = 'M032_ID'
      Required = True
    end
    object odsPeriodM032_NAME: TStringField
      FieldName = 'M032_NAME'
      Required = True
      Size = 255
    end
    object odsPeriodM021_CURR: TStringField
      FieldName = 'M021_CURR'
      Required = True
      Size = 3
    end
  end
  object dsPeriod: TDataSource
    DataSet = odsPeriod
    Left = 256
    Top = 169
  end
  object oqCheckPeriod: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :o_result := Pk_Nr_Utils.f_get_curr_diff_count(:M029_ID, :M032' +
        '_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000090000003A4F5F524553554C540400000000000000000000
      00080000003A4D3033325F4944040000000000000000000000080000003A4D30
      32395F4944040000000000000000000000}
    Left = 272
    Top = 249
  end
end
