inherited frm92_IndexListItemEdit: Tfrm92_IndexListItemEdit
  Left = 497
  Top = 372
  ClientHeight = 124
  ClientWidth = 423
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 80
    Height = 13
    Caption = 'Ѕазовый мес€ц'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 123
    Height = 13
    Caption = 'ѕрогнозируемый мес€ц'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 56
    Width = 48
    Height = 13
    Caption = '«начение'
  end
  inherited Panel2: TPanel
    Top = 91
    Width = 423
    inherited Panel3: TPanel
      Left = 258
    end
  end
  object lcb01: TDBLookupComboBox [4]
    Left = 144
    Top = 4
    Width = 273
    Height = 21
    DataField = 'M024_BASE_ID'
    DataSource = frm92_IndexListItem.dsList
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds01
    TabOrder = 1
  end
  object lcb02: TDBLookupComboBox [5]
    Left = 144
    Top = 28
    Width = 273
    Height = 21
    DataField = 'M024_FORECAST_ID'
    DataSource = frm92_IndexListItem.dsList
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds02
    TabOrder = 2
  end
  object ed01: TDBEdit [6]
    Left = 144
    Top = 52
    Width = 273
    Height = 21
    DataField = 'M024_VALUE'
    DataSource = frm92_IndexListItem.dsList
    TabOrder = 3
  end
  inherited ActionList: TActionList
    Left = 68
    Top = 8
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select T055_ID, T055_START_DATE, T055_LONG_NAME'
      'from V_NR_TIME'
      'where T055_TYPE = '#39'M'#39)
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F49440100000000000F000000543035
      355F53544152545F444154450100000000000E000000543035355F4C4F4E475F
      4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 320
    object ods01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods01T055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object ods01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select T055_ID, T055_START_DATE, T055_LONG_NAME'
      'from V_NR_TIME'
      'where T055_TYPE = '#39'M'#39)
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F49440100000000000F000000543035
      355F53544152545F444154450100000000000E000000543035355F4C4F4E475F
      4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 320
    Top = 56
    object ods02T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods02T055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object ods02T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 360
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 360
    Top = 56
  end
end
