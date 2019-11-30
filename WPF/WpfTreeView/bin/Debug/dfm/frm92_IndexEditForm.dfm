inherited frm92_IndexEdit: Tfrm92_IndexEdit
  Left = 303
  Top = 224
  ClientHeight = 159
  ClientWidth = 415
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Индекс'
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 32
    Width = 48
    Height = 13
    Caption = 'Значение'
  end
  object Label2: TLabel [2]
    Left = 8
    Top = 80
    Width = 60
    Height = 39
    Caption = 'Применить значение к периоду:'
    WordWrap = True
  end
  object Label4: TLabel [3]
    Left = 10
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Месяц'
  end
  inherited Panel2: TPanel
    Top = 126
    Width = 415
    TabOrder = 6
    inherited Panel3: TPanel
      Left = 250
    end
  end
  object ed01: TDBEdit [5]
    Left = 98
    Top = 28
    Width = 311
    Height = 21
    DataField = 'M024_VALUE'
    DataSource = frm92_IndexList.dsList
    TabOrder = 1
  end
  object lcb01: TDBLookupComboBox [6]
    Left = 98
    Top = 4
    Width = 311
    Height = 21
    DataField = 'M023_ID'
    DataSource = frm92_IndexList.dsList
    KeyField = 'M023_ID'
    ListField = 'M023_NAME'
    ListSource = ds01
    ReadOnly = True
    TabOrder = 0
  end
  object RadioButton1: TRadioButton [7]
    Left = 96
    Top = 80
    Width = 113
    Height = 17
    Caption = 'Месяц'
    TabOrder = 3
  end
  object RadioButton2: TRadioButton [8]
    Left = 96
    Top = 96
    Width = 113
    Height = 17
    Caption = 'Квартал'
    TabOrder = 4
  end
  object RadioButton3: TRadioButton [9]
    Left = 96
    Top = 112
    Width = 113
    Height = 17
    Caption = 'Год'
    Checked = True
    TabOrder = 5
    TabStop = True
  end
  object lcb02: TDBLookupComboBox [10]
    Left = 98
    Top = 52
    Width = 311
    Height = 21
    DataField = 'T055_ID'
    DataSource = frm92_IndexList.dsList
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds02
    TabOrder = 2
  end
  inherited ActionList: TActionList
    Left = 136
    Top = 24
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select * from v_nr_reinvest_index')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000070000004D3032335F4944010000000000090000004D3032
      335F4E414D450100000000000A0000004D3032335F4445534352010000000000}
    Session = dmMain.OracleSession
    Left = 264
    Top = 16
    object ods01M023_ID: TFloatField
      FieldName = 'M023_ID'
      Required = True
    end
    object ods01M023_NAME: TStringField
      FieldName = 'M023_NAME'
      Required = True
      Size = 255
    end
    object ods01M023_DESCR: TStringField
      FieldName = 'M023_DESCR'
      Size = 4000
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 336
    Top = 16
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select t055_ID, T055_LONG_NAME from v_nr_time'
      'WHERE t055_type = '#39'M'#39)
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 264
    Top = 64
    object ods02T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods02T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 336
    Top = 64
  end
end
