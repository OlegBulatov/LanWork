inherited frm58_101Edit: Tfrm58_101Edit
  Left = 278
  Top = 302
  ClientHeight = 112
  ClientWidth = 316
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 15
    Height = 13
    Caption = 'КО'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Период'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 57
    Width = 34
    Height = 13
    Caption = 'Сумма'
  end
  inherited Panel2: TPanel
    Top = 79
    Width = 316
    inherited Panel3: TPanel
      Left = 151
    end
  end
  object lcb01: TDBLookupComboBox [4]
    Left = 98
    Top = 4
    Width = 215
    Height = 21
    DataField = 'REGN'
    DataSource = frm58_101List.dsList
    KeyField = 'REGN'
    ListField = 'BANKNAME'
    ListSource = ds01
    TabOrder = 1
  end
  object lcb02: TDBLookupComboBox [5]
    Left = 98
    Top = 29
    Width = 215
    Height = 21
    DataField = 'T055_ID'
    DataSource = frm58_101List.dsList
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds02
    TabOrder = 2
  end
  object ed01: TDBEdit [6]
    Left = 98
    Top = 54
    Width = 215
    Height = 21
    Hint = 'млн. долл.'
    DataField = 'T061_SUM'
    DataSource = frm58_101List.dsList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  inherited ActionList1: TActionList
    Left = 56
    Top = 64
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select REGN, BankName'
      'from V_405_MAIN_BANC_LIST'
      'order by REGN')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000005245474E0100000000000800000042414E4B4E41
      4D45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 208
    Top = 8
    object ods01REGN: TStringField
      FieldName = 'REGN'
      Size = 9
    end
    object ods01BANKNAME: TStringField
      FieldName = 'BANKNAME'
      Size = 57
    end
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select T055_ID, T055_LONG_NAME'
      'from V_405_TIME'
      'where T055_TYPE='#39'Q'#39
      'order by T055_CODE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 208
    Top = 48
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
  object ds01: TDataSource
    DataSet = ods01
    Left = 248
    Top = 8
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 248
    Top = 48
  end
end
