inherited frm58_101Choice: Tfrm58_101Choice
  Left = 408
  Top = 330
  Caption = 'Âûבונטעו ןונטמה'
  ClientHeight = 87
  ClientWidth = 316
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 29
    Width = 38
    Height = 13
    Caption = 'Ïונטמה'
  end
  object lFile: TLabel [1]
    Left = 70
    Top = 8
    Width = 18
    Height = 13
    Caption = 'lFile'
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Ôאיכ:'
  end
  inherited Panel2: TPanel
    Top = 54
    Width = 316
    inherited Panel3: TPanel
      Left = 151
    end
  end
  object lcb01: TxxxDBLookupCheckCombo [4]
    Left = 70
    Top = 26
    Width = 235
    Height = 21
    DropDownCount = 8
    ListStyle = [lsSizeable]
    LookupField = 'T055_ID'
    LookupDisplay = 'T055_LONG_NAME'
    LookupSource = ds01
    TabOrder = 1
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  inherited ActionList1: TActionList
    Left = 56
    Top = 29
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, T055_LONG_NAME'
      'FROM   V_405_TIME'
      'WHERE  T055_TYPE = '#39'M'#39
      'AND    T055_START_DATE >= TO_DATE('#39'01.01.2004'#39', '#39'DD.MM.YYYY'#39')'
      'AND    T055_END_DATE < TRUNC(SYSDATE)'
      'ORDER BY T055_CODE DESC')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 208
    Top = 29
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
  object ds01: TDataSource
    DataSet = ods01
    Left = 248
    Top = 29
  end
end
