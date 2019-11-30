inherited frm18_CopyDate: Tfrm18_CopyDate
  Caption = 'Тиражирование'
  ClientHeight = 70
  ClientWidth = 303
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 98
    Height = 13
    Caption = 'Месяц завершения'
  end
  inherited Panel2: TPanel
    Top = 37
    Width = 303
    inherited Panel3: TPanel
      Left = 138
    end
    inherited PrevBtn: TBitBtn
      Width = 19
      Enabled = False
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 32
      Width = 19
      Enabled = False
      Visible = False
    end
  end
  object lcb01: TDBLookupComboBox [2]
    Left = 112
    Top = 4
    Width = 185
    Height = 21
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds01
    TabOrder = 1
  end
  inherited ActionList: TActionList
    Left = 184
    Top = 16
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 144
    Top = 16
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, T055_LONG_NAME '
      'FROM     V_NR_TIME'
      'WHERE  T055_TYPE = '#39'Y'#39
      'ORDER BY T055_START_DATE ASC')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 104
    Top = 16
    object ods01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
end
